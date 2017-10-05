%{
TD_121_1_07
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
% \tempo 8 = 144
  \time 7/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"44-46"  
  a4 b8. | b4 b8\prall([ a16)] | a8( \grace { \stdB b8\( \stdE } a16\)[ g)] g8. 
 \bar ":|:"
 a4 b8\prall([ a16)] | g8( \grace { \stdB a8\( \stdE } g16\)[ fis]) e8. | 
 \acciaccatura g8 a8.([ g16)] g8. | a4 b8\prall([ a16)] |
 g8( \grace { \stdB a8\( \stdE } g16\)[ fis]) e8. | e4 e8. 
 \bar ":|:"
 \varA
 a4\startTextSpan b16 a8\stopTextSpan | 
 g16([ fis)] e8~ e8. | \acciaccatura g8 a a16([ g)] g8. |
 \varA
 a4\startTextSpan b16 a8\stopTextSpan | 
 g16([ fis)] e8~ e8. | e8 e\noBeam e8. 
 \bar ":|" 
s8. \fixB d4 \fixC
 \bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble
\varA
 a'4\startTextSpan b16.\noBeam a16.\stopTextSpan 
 \bar "|."
}
\addlyrics { Слав- ке, рев- ниш ми са, 
у до- ма да до- диш ка- то гур- гу- ли- ца,
Дан ду- ду, ду- ду, ду- ду- ду, дан ди- ди, ди- ди, ди- ди- ди }
\addlyrics{" " " " " " " " " " " "
ка- то гур- гу- ли- ца, си- ва гъ- лъ- би- ца } 
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
		tempoWholesPerMinute = #(ly:make-moment 144 8)
		}
	}
}
%
\header{
  opus = "ТД-121,1,7"
  tagline = ##f
}


