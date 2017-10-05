%{
TD_134_2_40
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
 \time 2/4
d4 d | a \acciaccatura c8 d4 | c4( d16[c b8]) | a2 | \acciaccatura a8 b4 b8\prall[( a]) |
g4 a | a4.( b8) | \acciaccatura c8 d2 | d4 d | a4 \acciaccatura c8 d4 | 
\acciaccatura d8 c4( d16[ c b8]) | a2 | \acciaccatura a8 b4 b8\prall[( a]) | g4 a8( b) | a2 | a4 r 
 \bar "|." 
s4 \fixB c, 
  \bar "|." 
}
\addlyrics { Пе- пе- ру- да лят- на над го- ра се мя- та, 
пе- пе- ру- да лят- на над го- ра се мя- та }
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
  opus = "ТД-134,2,40"
  tagline = ##f
}


