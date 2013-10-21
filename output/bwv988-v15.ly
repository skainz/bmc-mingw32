% Automatically generated by BMC, the braille music compiler
\version "2.14.2"
\include "articulate.ly"
music =
  <<
    \new PianoStaff <<
      \new Staff {
        \clef "treble"
        \key bes \major
        \time 2/4
        r16 g'-2 g'-3 f' f'-3[ ees' ees' d'] | % 1
        r16 d''-3 d''-2 e'' e''-2[ fis'' fis'' g''] | % 2
        g''4~-1 g''16[ a'' bes'' c'''] | % 3
        d'''16 a'' a''32-4 gis'' a''16 d''4~-"1-5" | % 4
        d''8 ees''16-4 f'' ees''[ d'' d''-4 c''] | % 5
        bes'8-5 r r c''-1 | % 6
        g''32-3 a'' fis''16 g'' a''-1 bes''[ c''' d''' c'''-1] | % 7
        bes''16-4 \appoggiatura a''8 g''16 d''8~-"1-4" d'' ees'' | % 8
        d''8 r r16 ees'' d''-4 c'' | % 9
        bes'16[ c'' c''-3 d''] d''-3[ ees'' ees'' d''] | % 10
        d''8-5 r r a''-4 | % 11
        bes''8 d''16-2 e''~ e'' f''8-"4-3" g''16 | % 12
        a''8 bes'-2 c''-1 a'' | % 13
        r8 g''32-3 a'' g''16~ g'' g''8-4 g''16~-3 | % 14
        g''16 f''32 g'' a''16 bes'' a'' f'' cis''8-1 | % 15
        r8 g''~ g''16 fis''32 e'' fis''8  \bar ":|:" % 16
         r8 fis'-2 g' a' | % 17
        << {r8 ees'' d'' c''}\\{d'16 d''8-4 c''16~ c'' bes'8 a'16} >> | % 18
        << {g''16 g'8-1 aes'16~-3 aes' bes'8 c''16-5}\\{bes'8-"2-4" ees'-2 d' g'-3} >> | % 19
        << {bes'8-"4-3" f''-"5-4" g'' d''-3}\\{f'16-2 g'-1 aes'8-"2-1" r16 bes'8-2 aes'16} >> | % 20
        << {ees''16 d'' c''8-1 r16 bes'8-2 c''16}\\{g'16[ bes' ees''-4 g''] f''[ ees''-3 d''-4 c'']} >> | % 21
        << {d''16-5[ bes'-4 f' d'] ees'[ f'-1 g' aes']}\\{bes'2~-2} >> | % 22
        << {bes'2~-5}\\{bes'16-5 aes'32-3 g' f' g' aes'16 g' f'32 ees'-2 f' ees' d'16} >> | % 23
        << {bes'16-"5-3" c''32-1 d'' ees'' d'' c''16 d'' ees''32 f'' ees'' f'' g''16}\\{ ees'8-1 r r4} >> | % 24
        << {f''8-4 r r4}\\{r16  aes' aes'-2 g' fis'[ f' d'' f'-2]} >> | % 25
        << {r16 c''-5 c''-4 d'' ees''-4[ e'' g' e''-3]}\\{ees'4~ ees'16  d'-2 c'-1 bes} >> | % 26
        << {fis''4~ fis''16[ g''-1 a'' bes'']}\\{ a16-1[ bes-4 c' d'] ees' d' ees'8~} >> | % 27
        << {c'''16[ bes'' a'' g''] fis''-4 g'' fis''8~}\\{ ees'16 c' d'8 r  a'} >> | % 28
        << {fis''16 a'' g''8 r c''}\\{d''8. c''16 bes'-2[ a' g'-2 f']} >> | % 29
        << {g'8.-4 a'16 bes'-3[ c'' d'' e''-4]}\\{ees'16[ d'-"1-2" c' ees'] d' e' fis'32 g'-1  a16~-2} >> | % 30
        << {eis''16-3[ g'' a'' f''] g'' f'' e''32 d'' c'''16~}\\{ a16[ ees'-1 d'-1 c'-1] bes-2[ a-1 g-2 fis]} >> | % 31
        << {c'''16[ fis'' g''-1 a''] bes'' c''' d'''8}\\{ g4-1 r } >> \bar ":|" % 32
      }
      \new Staff {
        \clef "bass"
        \key bes \major
        \time 2/4
        g8 g, r g~-3 | % 1
        << {g16 fis32 e fis8 r d}\\{d'4~ d'16[ c'-"2-1" bes a-1]} >> | % 2
        << {ees8 e r ees'-3}\\{g16 cis' cis'32-1 d'-1 cis'16 g'4~} >> | % 3
        << {d'16 cis' d'8 r16 c' bes-4 a-1}\\{g'8 fis'16 e' fis'-2 g'  g' a'} >> | % 4
        << {g32 fis g16 c-5 g c'[ fis-4 fis-3 g]}\\{ bes'8 r r a'} >> | % 5
        << {g16-1 fis-3 g a d8 ees-4}\\{ d'32-2 c' ees'16 d' c' bes-2  a-2 g-1 a} >> | % 6
        << {bes,8 bes16-5 c' d'8 d'}\\{bes16 d'-3 g'8~ g' fis'} >> | % 7
        << {g8 bes,32-3 c d bes, g,8 r}\\{g'8 r r16  fis'-1 g'-1 a'} >> | % 8
        << {r16 fis-3 g a bes8-2 a-1}\\{ bes'16[ a' a'-3 g'] g'-1[ fis' fis' g'-1]} >> | % 9
        << {g16 fis8 e16-5 fis32-4 a g8 fis16}\\{ g'8 r r  c'} >> | % 10
        << {g16[ a-1 bes-2 a-1] g32-3 a g16-3 f32 g f16}\\{bes8  g'16-2 f'~ f'  e'8-1 d'16} >> | % 11
        << {e16[ f-3 g e-3] cis-5[ d e cis]}\\{cis'8-1  bes' a'  cis'} >> | % 12
        << {f32-3 e d16 g4-"3-4" fis8}\\{r8 d'32 cis' d'16~ d' d'8 d'16~} >> | % 13
        << {bes8-4 e a-3 cis-5}\\{d'16 e'32-2 d'-1 cis'16-2 b-1 cis'-2 e'  a'8} >> | % 14
        << {d8-5 f16-3 e f8-5 a-5}\\{r8  d'~ d'16 e'32-2 f' e'-2 d' e'16} >> | % 15
        << {d'16-1 c'32 bes a g a16-2 d4}\\{d'4-1 r } >> \bar ":|:" % 16
         d16[ ees'-1 ees'-2 d'] d'-2[ c' c'-2 bes] | % 17
        bes16-2[ fis-4 fis-3 g] g-1 d d8~-1 | % 18
        d16 c32 bes, c16 f, f bes,-5 ees8~ | % 19
        ees16 d32 c d-1 c bes,16 ees[ g,-3 aes, bes,] | % 20
        c,16[ g, c bes,-3] aes, g, aes,8~ | % 21
        a,16[ aes bes aes-3] g-1[ f ees f] | % 22
        g16 aes-2 bes8 bes,8. aes16-2 | % 23
        g16-3[ f f-3 ees] f[ g-1 g-2 aes] | % 24
        c8-4 b, r16 a,-4 b, g, | % 25
        c8 c' r c~ | % 26
        c16[ d'-2 ees' bes] a[ bes c' g] | % 27
        g8-4 fis16 g a bes32 c' d'-3 ees' c'16-1 | % 28
        bes32-3 d' c'16 bes32 c' a16 g32 a-1 f16-2 ees32 f d16 | % 29
        c16 ees32 d-1 ees16 fis, g,8 r16 c, | % 30
        d,8 r16 ees,-4 c,8 d,-4 | % 31
        g,16-1 d,32-2 c, bes,, c, a,,16-4 g,,4  \bar ":|" % 32
      }
    >>
  >>

\score {
  \music
  \layout { }
}
\score {
  \unfoldRepeats \articulate \music
  \midi { }
}
