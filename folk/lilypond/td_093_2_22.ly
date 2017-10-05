%{
TD_93_2_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA  
  a4\startTextSpan g\stopTextSpan | 
\varB  
  a4\startTextSpan b\stopTextSpan | 
\varC  
  a4\startTextSpan( \times 2/3 { b8[ a g\stopTextSpan]) } | 
a4 b | a4( b8[ a]) | 
g4 e | f a | g8([ a] g4) | g8([ f]) e4 | e2\fermata
 \bar "|." 
s4 \fixB ees4 \fixC
 \bar "|." 
\endm
\varA  
  g8\startTextSpan([ a)] a([ g\stopTextSpan)] \bar "||"
\varB  
  a4\startTextSpan b8([ a\stopTextSpan]) \bar "||" 
\varC  
\acciaccatura { a8\startTextSpan[ g] } a4( \times 2/3 { b8[ a g\stopTextSpan]) }   
\bar "|." 

}
\addlyrics { Ди- ми тър на- пред вър- ве- ши, Ди- ми- тър на- пред вър- ве- ши }
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
  opus = "ТД-93,2,22"
  tagline = ##f
}


