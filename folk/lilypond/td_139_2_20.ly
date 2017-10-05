%{
kav_139_2_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 132
 \time 2/4
d4 e8( f) | g( f) e( d) | \acciaccatura d8 e4 e | a,2 | \acciaccatura c8 d4 d |
e c | 
\varA
b->\startTextSpan a\stopTextSpan | a2
 \bar "|." 
 s4 \fixB c, \fixC
 \bar "|." 
 \endm
\varA
b'8\startTextSpan a4.\stopTextSpan 
 \bar "|."  
}
\addlyrics { Сно- щи хо- дих, ма- мо ма, на ге- ра- на за во- да }
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
		tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,20"
  tagline = ##f
}

