%{
TD_178_2_6
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 144
  \time 2/4
 fis4 g a g fis8( e d4) fis g fis8( e d4) d8( e) fis([ g)] fis4 e8( d) 
 d2~ d2^\rtoe d8 d4. d2
 \bar "|." 
}
\addlyrics { По- съб- ра Гъ- лъб, Гъ- лъ- бо, два- най- сет ми- на дру- жи- на }
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
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}

\header{
  opus = "ТД-178,2,6"
  tagline = ##f
}


