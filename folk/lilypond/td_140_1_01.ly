%{
TD_140_1_1
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 144
  \time 2/4
\varA  
 a4\startTextSpan b8( c\stopTextSpan) 
 \acciaccatura c8 b4.( g8) a4.( b8) c4 c8( b) a4 b8( c) 
\varB
\slurDown
 b4\startTextSpan( c16 b g8\stopTextSpan) \slurNeutral 
\break
 a2^\rtoe 
\varC 
 a4\startTextSpan a\stopTextSpan 
 \bar "|."  
 s4 \fixB d,4 \fixC  
\bar "|."
 \endm
 \varA
 a'8\startTextSpan([ g)] b8( c\stopTextSpan) \bar "||"  
 \varB
 b4.\startTextSpan( g8\stopTextSpan)  \bar "||" 
 \varC
a8\startTextSpan a4.\stopTextSpan 
 \bar "|."
}
\addlyrics { Ма- ма Ган- ка ду- ма: Ни- мой хо- ди, Га- не }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%    ragged-last = ##t
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}

\header{
  opus = "ТД-140,1,1"
  tagline = ##f
}


