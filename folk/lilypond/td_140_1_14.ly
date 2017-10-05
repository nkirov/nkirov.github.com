%{
TD_140_1_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 144
  \time 2/4
 b4  \acciaccatura d8 e4 d  \acciaccatura d8 e4 e8( d4.) b4 d 
 \acciaccatura d8 e4( fis16 e d8)
 \varA
 d4\startTextSpan  \acciaccatura c8 b( a) a4  \acciaccatura c8 d8.( c16\stopTextSpan) 
 \break
 b2\prall  b8^\ltoe( a) b4 b2 
 \bar "|." 
 s4 \fixB ees,4 \fixC 
 \bar "|."
 \endm
\varA
d'4\startTextSpan  \acciaccatura d8 c( b) a4 b\stopTextSpan
\bar "|."
}
\addlyrics { Раз- бо- лял ми съ~й млад Ми- лин на бей- лич- ки- те хар- ма- ни }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
 %%  ragged-last = ##t
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
  opus = "ТД-140,1,14"
  tagline = ##f
}



