%{
td_134_1_17
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 200
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"72"
\time 5/16
\override Glissando #'style = #'zigzag
c16[( b]) a16.[( g]) | g8 \noteFi c16.[(\glissando g]) | g8\noBeam a8. |
a8 d16.[( c]) | c16[( b]) a16.[( g]) | g8  \noteFi c16.[(\glissando g]) | 
g8\noBeam a8. | a8 a8.\noBeam
 \bar "|." 
s8. \fixB bes8^↓
  \bar "|." 
}
\addlyrics { Из- пи- щя- ли два гъ- лъ- ба у Гю- ро- ви, на пор- ти- те }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 180 8)
		}
	}
}
%
\header{
  opus = "ТД-134,1,17"
  tagline = ##f
}


