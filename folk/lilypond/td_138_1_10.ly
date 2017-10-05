%{
TD_138_1_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 116
  \time 2/4
 b4 c | b8\prall([ a]) b4 | g2^\rtoe | 
\varAB 
 b4\startTextSpan c\stopTextSpan | 
 a2 | b4 c | b8\prall([ a]) b4 | 
 g2^\rtoe | g4 g | g2\fermata
 \bar "|." 
 s4 \fixB e4 \fixC
 \bar "|." 
\endm 
\varA 
 b'4\startTextSpan c8([ b\stopTextSpan]) \bar "||"
\varB 
 b8\startTextSpan([ a)] b([ c\stopTextSpan])
 \bar "|." 
}
\addlyrics { Гьор- ги Ма- рий- ка пи- та- ше: Лю- бе Ма- рий- ко, Ма- рий- ко }
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
		tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,10"
  tagline = ##f
}


