%{
TD_121_2_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 8 = 152
  \time 7/16
\varA
a4\startTextSpan d8 d16\stopTextSpan | 
\parS
d8 c8~( c[ d16]) | e16([ d)] d([ c)] c8-\parenthesize\prall([ b16^"↓")] \bar ":|"
a16([ b~] b8) c8 c16 | c16([ b)] a8~ a8. | 
\acciaccatura c8 d\noBeam d c\prall([ b16)] | g16([ a~] a[ d)] c8 c16 | 
c16([ b]) a8~ a8. | g8 a8 a8.
\bar "|."
s8. \fixB a,4 \fixC
\bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble
 \varA
a'4\startTextSpan d16.\noBeam d16.\stopTextSpan 
\bar "|." 
}
\addlyrics { Цъф- на- ло~й бя- ло ко- ки- чи на Дон- ки- ни- те пен- джа- ри,
на Дон- ки- ни- те пен- джа- ри }
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
		tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ТД-121,2,1"
  tagline = ##f
}


