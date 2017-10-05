%{
TD_121_2_05
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%% \tempo 8 = 164
  \time 7/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"50"      
\par  
\varA
b8\startTextSpan\noBeam a b8\prall([ a16\stopTextSpan)] | 
\varB
g8\startTextSpan( \grace { \stdB a8\( \stdE } g16\)[ f]) e8([ d16\stopTextSpan)] |
g8~ g16([ a)] b8\prall([ a16)] | \acciaccatura b8 c~ c~ c8. |
b16([ c)] b([ a)] a([ g a)] |
\varC
g8\startTextSpan( \grace { \stdB a\( \stdE } g16\)[ f)] e8.\stopTextSpan |
g8\noBeam~( g16[ a]) a8\prall([ g16)] | g8~ g~ g8. |
g8\noBeam g16([ a)] b8\prall([ a16)] | 
\varD
g8\startTextSpan( \grace { \stdB a\( \stdE } g16\)[ f)] e8.\stopTextSpan |
\acciaccatura f8 g8\noBeam~( g16[ a]) a8\prall([ g16)] | g8~ g~ g8.
\bar "|."
s8. \fixB c,4 \fixC
\bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble
\varA
g'8\startTextSpan\noBeam g16([ a)] b8\prall([ a16\stopTextSpan)] \bar "||"
\varB
g8\startTextSpan\( \acciaccatura a8 g16[ f]\) e8.\stopTextSpan \bar "||"
\varC
g8\startTextSpan\( \acciaccatura a8 g16[ f\)] \afterGrace e8.\( { \stdB g8\stopTextSpan\) \stdE } \bar "||"
\varD
g8\startTextSpan\( \acciaccatura a g16[ f\)] e8([ d16\stopTextSpan)]
\bar "|."
}
\addlyrics { От- кък са~й боз- гун диг- на- ло, хо- ро ни бе са стру- ва- ло,
хо- ро ни бе са стру- ва- ло }
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
		tempoWholesPerMinute = #(ly:make-moment 164 8)
		}
	}
}
%
\header{
  opus = "ТД-121,2,5"
  tagline = ##f
}


