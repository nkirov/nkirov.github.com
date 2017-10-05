%{
TD_95_1_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 152
  \time 2/4
  a4 g | a c | b8([ c] \grace { c16[\( b] } a4\)) | a8 a4. |   
  \afterGrace a2\( { \stdB b8\) \stdE } | 
  a8 g4. | a4 b | a8([ b] a4) | a8 a4. | a2\fermata
 \bar "|." 
}
\addlyrics { На- сряд са се- ло би- ре- я и- ля- до ку- ля биг- лиш- ки }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-95,1,8"
  tagline = ##f
}


