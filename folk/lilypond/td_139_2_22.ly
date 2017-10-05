%{
kav_139_2_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 132
 \time 2/4
b4 b8( c) | \acciaccatura c8 d4 d | d( e16[ d c8]) | \acciaccatura c8 d4 d8( c) |
\acciaccatura { d16[ c] } b4.( a8) |\acciaccatura b8 c4 c | 
\break
c8( d) d( c) | 
\varA
b4.\startTextSpan( a8\stopTextSpan) | 
a16([ g8.]) g4 | g2\fermata
 \bar "|." 
 s4 \fixB b, \fixC
  \bar "|."
\endm
\varA
b'4\startTextSpan( c16[ b a8\stopTextSpan)]
 \bar "|."  
}
\addlyrics { Мар- чо на Дон- ка ду- ма- ше: Мар, ли- бе Дон- е, сев- га- лъ }
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
  opus = "ТД-139,2,22"
  tagline = ##f
}


