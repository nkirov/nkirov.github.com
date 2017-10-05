%{
td_181_2_16
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
%\tempo 8 = 200
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
\varA
c16\startTextSpan c\noBeam f8[( e16]) | d8 d8.\stopTextSpan\noBeam | 
\acciaccatura e8 g d8.\noBeam | 
d16[( c]) c8. |
\varB
c16\startTextSpan c\noBeam f8[( e16\stopTextSpan]) | 
d8 e8.\noBeam | 
\varC
\acciaccatura e8\startTextSpan g d8.\stopTextSpan\noBeam | 
d8 d8.\noBeam
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
\varA
c8\startTextSpan \acciaccatura f g8.\noBeam | g16[( f]) f[( e c\stopTextSpan]) \bar "||"
\varB
c8\startTextSpan f8[( e16\stopTextSpan]) \bar "||"
\varC
c8\startTextSpan d8.\stopTextSpan\noBeam 
 \bar "|."  
}
\addlyrics { Ста- ни ни, ни- не, го- спо- ди- не, ста- ни ни, ни- не,
йот- во- ри не }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 82 4)
		}
	}
}
%
\header{
  opus = "ТД-181,2,16"
  tagline = ##f
}


