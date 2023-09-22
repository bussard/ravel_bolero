\version "2.24.0"
\language "deutsch"

\paper {
   paper-width = 228 \mm
   paper-height = 252 \mm
   line-width = 205 \mm
   indent = 15 \mm
}

obam = \relative {
   \transposition a

   \time 3/4
   \key es \major
   R2.*20
   \mark \default
   R2.*18
   \mark \default
   R2.*18
   \mark \default
   R2.*18
   \mark \default
   R2.*2
   es''4\mp(~ 8 d16 es f es d c
   es8) 16( c es4~ 8 d16 es
   c b g as b2~
   16) as( g f g as b c b4~

   4~ 16 c d c b as g f)
   g( f es8~ 8) 16( f g8-.-- as-.--
   f4 b2~
   2~ 8) r

   f'4~( 8. es16 d c d es)
   f( es d8~ 16 es d c) es( d c as~
   8) 16-.( 16-. 8-. c-. es16 c d b
   as8) 16-.( 16-. 8-. c-. d16 b c as
   f8) 16( es f4~ 8) 16-.( 16-.
   8-. as-. c16 as b g f8) 16( es
   f4~ 8) 16( es f8 g16 as
   b2~ 16 as g f

   \mark \default % 5
   es8) r r4 r
   R2.*17
   \mark \default % 6

}

\addQuote "amore" { \obam }

ob = {
  \transposition c'
  \time 3/4

  \quoteDuring "amore" { s2.*110 }
}

engh = {
   \transposition f
   \time 3/4

   \quoteDuring "amore" { s2.*110 }

}

\score {
  \new Staff {
    \new Voice = "v-eh" {

      \engh
    }
  }
}

\layout {
   \context { \Score
     rehearsalMarkFormatter = #format-mark-box-numbers
     \compressEmptyMeasures
   }
}