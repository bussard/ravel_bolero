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
   R2.*2 \break

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
   R2.*18 \mark \default % 7
   R2.*18 \mark \default % 8
   R2.*18 \mark \default % 9
   R2.*2
   \break
   b''4\mf(~ 8 a16 b c b a g
   b8) 16( g b4~ 8 a16 b
   g f d es f2~
   16) es( d c d es f g f4~

   4~ 16) g( a g f es d c)
   d( c b8~ 8) 16( c d8-.-- es-.--
   c4 f2~
   2~ 8) r
   c'4(~ 8. b16 a g a b)

   c( b a8~ 16 b a g) b( a g es~
   8) 16(-. es-. es8-. g-. b16 g a f
   es8) 16(-. 16-. 8-. g-. a16 f g es
   c8) 16( b c4~ 8) 16-.( 16-.

   8-. es-. g16 es f d c8) 16( b
   c4~ 8) 16( b c8 d16 es
   f2~ 16 es d c
   \mark \default % 10
   b8) r r4 r
   R2.*17 \mark \default % 11


}

\addQuote "amore" { \obam }

ob = {
  \transposition c'
  \time 3/4

  \quoteDuring "amore" { s2.*200 }
  \mark \default
}

engh = {
   \transposition f
   \time 3/4

   \quoteDuring "amore" { s2.*200 }
   \mark \default
}

\score {
  \new Staff {
    \new Voice = "v-eh" {

      \ob
    }
  }
}

\layout {
   \context { \Score
     rehearsalMarkFormatter = #format-mark-box-numbers
     \compressEmptyMeasures
   }
}