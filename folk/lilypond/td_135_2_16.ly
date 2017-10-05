%{
td_135_2_16
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 252
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"69"
\time 5/16
\acciaccatura c8 d d8.\noBeam | 
\varA
c16\startTextSpan[( b]) a8[( d16\stopTextSpan]) | 
\varB
c8\startTextSpan b8.\stopTextSpan\noBeam |
a16[( g]) g8. | 
\varC
a16\startTextSpan[( b]) c8.\stopTextSpan |
c16[( b]) a16.[( g]) | \acciaccatura a8 b b8.\noBeam | a16[( g]) g8.
 \bar "|." 
s8. \fixB a8^"↓" \fixC 
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
\varA
c16\startTextSpan[( b]) a16.[( d\stopTextSpan]) \bar "||"
\varB
d16\startTextSpan[( c]) b8.\stopTextSpan\noBeam \bar "||"
\varC
a16\startTextSpan[( b]) c8.\stopTextSpan
 \bar "|."  
}
\addlyrics { Про- чу- ла са~й мал- ка мо- ма за же- не- не, за го- де- не }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 172 8)
		}
	}
}
%
\header{
  opus = "ТД-135,2,16"
  tagline = ##f
}


