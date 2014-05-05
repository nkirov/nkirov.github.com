%{
laz_113_1_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 168
 \time 2/4
g4 b8( c) | 
\varA
\acciaccatura c8\startTextSpan d4.( c16[ b\stopTextSpan]) | 
\acciaccatura b8 c4.( b8) |
\acciaccatura c8 d4( c16[ b g8]) | \acciaccatura b8 c4 c8( b) | 
a4.( g8) | \acciaccatura b8 c4 c8( b) | a( b a[ g)] | g2 | a8( b4.) | a8 b4. | b2
\bar "|." 
s4 \fixB cis, \fixC
\bar "|." 
\endm
\varA
d'4\startTextSpan( e16[ d c b\stopTextSpan])
\bar "|." 
}
\addlyrics { Тур- ци са Рус- ка го- ня- ли, го- ня- ли, у- ло- ви- ли я }
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
		tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
  opus = "ТД-113,1,3"
  tagline = ##f
}


