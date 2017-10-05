%{
BA_1_2_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA  
\set Score.measureLength = #(ly:make-moment 3 4)    
s4\startTextSpan a2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
\varB
c4.\startTextSpan c8\stopTextSpan   
| d4 c | b a | a2 | 
\varC
c4\startTextSpan( d8 c\stopTextSpan) | 
\varD    
d4\startTextSpan c\stopTextSpan | 
a2 | a
\bar "|." 
\endm
\varA
a4.\startTextSpan( g8\stopTextSpan) \bar "||"
\varB
\set Score.measureLength = #(ly:make-moment 3 4)    
s4\startTextSpan c2\stopTextSpan \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)
\varC
%%\override Stem  #'stroke-style = #"grace"
\phrasingSlurDown
\afterGrace c2\startTextSpan\( { \stdB b8\stopTextSpan\) \stdE } \bar "||"
%%\revert Stem #'stroke-style
\varD
d4\startTextSpan c8([ b\stopTextSpan)]  
\bar "|." 
}
\addlyrics { Сно- щи о- ти- дох, ма- мо, "в се-" ло Дра- га- ня- но }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "BA-1,2,9"
  tagline = ##f
}

