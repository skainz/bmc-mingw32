// Copyright (C) 2011  Mario Lang <mlang@delysid.org>
//
// Distributed under the terms of the GNU General Public License version 3.
// (see accompanying file LICENSE.txt or copy at
//  http://www.gnu.org/licenses/gpl-3.0-standalone.html)

#ifndef MUSIC_HPP
#define MUSIC_HPP

#include <boost/rational.hpp>

namespace boost { // Modular arithmetic

template<typename IntType>
inline IntType
floor(rational<IntType> const& r)
{ return rational_cast<IntType>(r); }

template<typename IntType>
inline rational<IntType>
operator%(rational<IntType> const& lhs, rational<IntType> const& rhs)
{ return lhs - rhs * floor(lhs / rhs); }

}

namespace music {

typedef boost::rational<int> rational;

inline rational
reciprocal(rational const& r)
{ return rational(r.denominator(), r.numerator()); }

rational const zero = rational(0);

inline rational
gcd(rational const& a, rational const& b)
{ return b == zero? a: gcd(b, a % b); }

typedef rational time_modification;

// arithmetic with time_signatures is useful, so derive from rational
class time_signature: public rational {
  /**
   * \brief boost::rational simplifies during construction, so we need to
   *        preserve the original numerator and denominator
   */
  int_type d_num, d_den;
public:
  time_signature(int_type n = 4, int_type d = 4)
  : rational(n, d), d_num(n), d_den(d) {}
  using rational::operator==; bool operator==(time_signature const&) const;
  int_type numerator() const { return d_num; }
  int_type denominator() const { return d_den; }
};

enum diatonic_step { C = 0, D, E, F, G, A, B, steps_per_octave };
enum accidental {
  natural, flat, double_flat, triple_flat,
           sharp, double_sharp, triple_sharp
};

typedef signed short key_signature;

enum articulation {
  appoggiatura, short_appoggiatura,
  short_trill, extended_short_trill,
  turn_between_notes, turn_above_or_below_note,
  inverted_turn_between_notes, inverted_turn_above_or_below_note,
  staccato, staccatissimo, mezzo_staccato,
  agogic_accent, accent,
  mordent, extended_mordent,
  arpeggio_up, arpeggio_up_multi_staff,
  arpeggio_down, arpeggio_down_multi_staff
};

enum interval {
  unison = 0,
  second = 1,
  third = 2,
  fourth = 3,
  fifth = 4,
  sixth = 5,
  seventh = 6,
  octave = 7
};

}

#endif
