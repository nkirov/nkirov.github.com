%{
td_097_2_20
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"72"
\time 7/16
\override Glissando #'style = #'zigzag
\phrasingSlurDown
a8 a\noBeam\glissando e'8. | \afterGrace d4(\( { e16[ d]\) } c16[ d8]) | e8 d\noBeam c[( b16]) |
\bar ":|"
b8 c16[( d]) c8. | b4( g8.) | a8 a\noBeam a16[( b8]) | g4 r8. |
d'8 d\noBeam c8. | b4( g8.) | a8 a\noBeam a8. | a4 r8. |
\bar "|:"
g8 a16[( b]) a8. | g4( d8.) | g8 a16[( b]) a8[( g16]) | g4 r8. |
d'8 d\noBeam \acciaccatura d c8. | b4( g8.) | a8 a\noBeam a8. | a4 r8.
 \bar ":|" 
s8. \fixB fis4
\bar "|."
}
\addlyrics { Ста- ни- ни- нье, го- спо- ди- нье, че ти и- дем доб- ри го- сти,
до- бри го- сти ко- ле- да- ри! Те- бе пе- йем, бо- га сла- вим
да те дари доб- ри да- ри }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-97,2,20"
  tagline = ##f
}


