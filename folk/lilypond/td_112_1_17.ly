%{
laz_112_1_17
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
% \tempo 4 = 168
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"76"
 \time 5/16
\varA 
a16\startTextSpan([ f]) a16\noBeam c8\stopTextSpan | 
b8\noBeam a8. | g8~( g8[ f16]) | g16([ a)] b8. |
\varB
b16\startTextSpan[( a)] c8.\stopTextSpan | 
b8\noBeam a8. | g8\noBeam~ g8.\fermata | 
\varC
g8\startTextSpan\noBeam g8.\stopTextSpan
 \bar "|." 
s16 \fixB g4 \fixC
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble  
\varA 
b16\startTextSpan([ a]) c8.\stopTextSpan \bar "||"
\varB
b16\startTextSpan[( a)] b16\noBeam c8\stopTextSpan \bar "||"
\varC
g16\startTextSpan\noBeam g\noBeam r8.\stopTextSpan
 \bar "|."  
}
\addlyrics { Чи чий са те- зи дво- ро- ви? Гьор- гьо- ви- те дво- ро- ви }
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
  opus = "ТД-112,1,17"
  tagline = ##f
}


