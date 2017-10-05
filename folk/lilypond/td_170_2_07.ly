%{
TD_170_2_07
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 160
  \time 2/4
 fis4 g a g fis8( e d4) fis4 g fis8( e d4) d8( e) fis( g) fis4 e8( fis) d2~( d4 e)
 e8( d) d4 d2
 \bar "|." 
}
\addlyrics { По- съб- ра Гъ- лъб, Гъ- лъ- бо, два- най- сет- ми- на дру- жи- на }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}

\header{
  opus = "ТД-170,2,7"
  tagline = ##f
}



