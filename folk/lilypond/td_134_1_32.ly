%{
TD_134_1_32
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
  \time 2/4
  \phrasingSlurDown
\varA  
 a4\startTextSpan c8([ d\stopTextSpan]) | 
 c4 c8\noBeam b | 
\varB 
 b8\startTextSpan([ a]) a8([ b\stopTextSpan]) | 
 \afterGrace c4\(( { \stdB d8\) \stdE } c8[ b]) | 
a8([ b]) c4 | 
\varC
c8\startTextSpan([ b]) b8([ a\stopTextSpan]) | 
a4 a | a2
 \bar "|." 
 s4 \fixB e \fixC
 \bar "|." 
\endm
\varA  
 a8\startTextSpan[( b)] c([ d\stopTextSpan]) \bar "||"
\varB 
 b4\startTextSpan\mordent a8([ b\stopTextSpan]) \bar "||" 
\varC
\acciaccatura d8\startTextSpan c([ b]) b4\stopTextSpan\mordent
 \bar "|."  
}
\addlyrics { Джа- нъм, Тон- ки ле, То- дор- ке, мар мил- на- та ба- ти- ва }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,32"
  tagline = ##f
}


