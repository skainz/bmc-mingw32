// Copyright (C) 2012  Mario Lang <mlang@delysid.org>
//
// Distributed under the terms of the GNU General Public License version 3.
// (see accompanying file LICENSE.txt or copy at
//  http://www.gnu.org/licenses/gpl-3.0-standalone.html)

#ifndef BMC_LILYPOND_HPP_INCLUDED
#define BMC_LILYPOND_HPP_INCLUDED

#include "bmc/braille/ast.hpp"
#include "bmc/output_format.hpp"

namespace music { namespace lilypond {

/**
 * \brief Generate LilyPond input from (compiled) braille music.
 */
class generator: public boost::static_visitor<void>
{
  std::ostream& os;
  bool const layout, midi, include_locations;
  std::string default_instrument;
  bool no_tagline = false;
  std::string indent;
  rational last_type;
  unsigned last_dots;

public:
  /**
   * \brief Construct a LilyPond source code generator.
   *
   * \param stream The character stream used to output LilyPond source code to.
   * \param layout Indicate if visual notation should be generated by LilyPond.
   * \param midi   Indicate if MIDI performance data should be generated by LilyPond
   */
  generator( std::ostream& stream
           , bool layout = true
           , bool midi = true
           , bool include_locations = false);

  std::string instrument() const { return default_instrument; }
  void instrument(std::string const &i) { default_instrument = i; }

  void remove_tagline() { no_tagline = true; }


  /**
   * \brief Generate LilyPond source code for the given braille score.
   */
  void operator() (braille::ast::score const& score);

private:
  void operator() ( braille::ast::unfolded::part const& part
                  , braille::ast::score const& score
                  );

public:
  result_type operator() (braille::ast::unfolded::measure const&);
  result_type operator() (braille::ast::key_and_time_signature const&);
private:
  void operator() (braille::ast::unfolded::voice const&);
  void operator() (braille::ast::unfolded::partial_measure const&);
  void operator() (braille::ast::unfolded::partial_voice const&);
public:
  /** @name Operators for visiting music::braille::sign objects */
  /** @{ */
  result_type operator() (braille::ast::barline const&) const;
  result_type operator() (braille::ast::tie const&) const;
  result_type operator() (braille::ast::tuplet_start const &) const;
  result_type operator() (braille::hand_sign const&) const;
  result_type operator() (braille::ast::rest const&);
  result_type operator() (braille::ast::note const&);
  result_type operator() (braille::ast::chord const&);
  result_type operator() (braille::ast::moving_note const&);
  /** @} */

private: // utilities
  void ly_accidental(int) const;
  void ly_clef(std::string const&) const;
  void ly_finger(braille::fingering_list const&) const;
  void ly_key(key_signature const&) const;
  void ly_rhythm(braille::ast::rhythmic_data const&);
  void ly_octave(int) const;
  void ly_partial(rational const&) const;
  void ly_pitch_step(diatonic_step) const;

  std::size_t process_repeat_with_alternatives( braille::ast::unfolded::staff const&
                                              , std::size_t
                                              );
};

}}

inline std::ostream&
operator <<
( std::ostream& stream
, music::braille::ast::score const& score
) {
  switch (music::get_output_format(stream)) {
  case music::output_format::lilypond: {
    bool const locations = music::get_lilypond_flags(stream) == music::lilypond_flags::include_locations;
    music::lilypond::generator generate(stream, true, true, locations);
    generate(score);
    break;
  }
  default:
    BOOST_ASSERT(false);
  }
  return stream;
}

#endif
