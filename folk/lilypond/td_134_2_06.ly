%{
td_134_2_06
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 200
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"52-56"
\time 5/16
b16[( c]) d16[( c8]) | b8 a8.\noBeam | b16[( c]) d16[( c8]) | b8 a8.\noBeam | 
\varA
b16\startTextSpan[( c]) d16 c8\stopTextSpan\noBeam | 
b8 a8.\noBeam | b8 b8.\noBeam | b8 b8.\noBeam
 \bar "|." 
s8. \fixB bes8 \fixC
  \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
\varA
b16\startTextSpan[( c]) d16. c16.\stopTextSpan\noBeam 
  \bar "|."  
}
\addlyrics { Тръг- нал ми я све- ти Гьор- ги ра- но ми ра- но, на Гер- гьов- ден }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 140 8)
		}
	}
}
%
\header{
  opus = "ТД-134,2,6"
  tagline = ##f
}


