%{
TD_140_2_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 138
  \time 2/4
\phrasingSlurDown  
 g4 a g  \acciaccatura b8 c4 
 \varA
 b4.\startTextSpan( a8\stopTextSpan) 
 g2  \acciaccatura a8 b4 b8( a)
 g4 a \break
 \varB
 a2\startTextSpan^\rtoe a\stopTextSpan
 \bar "|." 
 s8 \fixB e4 \fixC s8 
 \bar "|."
\endm 
\varA
\afterGrace b'4\startTextSpan\(( { \stdB c8\) \stdE } b8[ a\stopTextSpan)] \bar "||" 
\varB
 \time 3/4 a2.\startTextSpan \time 2/4 a4 r4\stopTextSpan
\bar "|."
}
\addlyrics { Ста- ни, ста- ни, То- не, о- гъ- ня на- кла- ди }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%   ragged-last = ##t
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}

\header{
  opus = "ТД-140,2,3"
  tagline = ##f
}


