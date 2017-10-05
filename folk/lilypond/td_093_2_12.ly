%{
td_093_2_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 4 = 88
%\time 2/4
\cadenzaOn
\override Glissando #'style = #'zigzag
a4( b8[ a]) b[( a]) a[( g16 a]) \noteFi a8[(\glissando g]) \noteFi g[(\glissando e])
a[( g16 a]~ a8.[ g16]) \noteFi g8.[(\glissando f16]) e4 g8.[( f16^"↑"] g8.[ f16^"↑"]) e2 e\fermata
 \bar "|." 
s4 \fixB ees
 \bar "|."  
}
\addlyrics { Ра- до льо, би- га- ла Ра- да, Ра- до льо }
%
\layout {
   \context { 
	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 88 4)
		}
	}
}
%
\header{
  opus = "ТД-93,2,12"
  tagline = ##f
}


