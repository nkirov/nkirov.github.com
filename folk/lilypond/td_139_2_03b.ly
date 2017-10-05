%{
td_139_2_03a
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 4 = 104
%\cadenzaOn
\time 5/4
\override Glissando #'style = #'zigzag
\phrasingSlurDown
a4^"или" b b b4.( c8) | d4 d c8\prall\noBeam b a2\fermata | 
d4 e e\glissando \afterGrace d2\( { c16[ b c]\) } |
\times 2/3 { e8[( d c] } b4) b2.\fermata 
\bar "|:" 
b4 \acciaccatura c8 d4 \times 2/3 { c8[( b a]) } a2 \breathe |
d8[( c]) b[( a]) gis\noBeam f e4. r8 |
e8[( f^"↑"]) gis![( a]) b[( a]) \acciaccatura b8 a( gis!4.) |
a8[( gis!] f![ e]) e2.\fermata
\bar ":|"
}

%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 104 4)
		}
	}
}
%
\header{
%  opus = "ТД-139,2,3"
  tagline = ##f
}


