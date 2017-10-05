%{
TD_112_1_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 138
  \time 2/4
g4 a | \acciaccatura c8 d4.( c16[ b]) | c8([ b]) a8([ g]) | c4.( d8) | 
c8([ b]) a8([ g]) | 
\varA
c8\startTextSpan c4( b8\stopTextSpan) |
\break
c4.( d8) | c8([ b]) a8([ g]) | a2~ | a\fermata | a8 a4 r8  
 \bar "|." 
s4 \fixB fis4 \fixC
 \bar "|." 
\endm
\varA
c'4\startTextSpan c8([ b\stopTextSpan)]
\bar "|."  
}
\addlyrics { Как- во ми чу- до ста- на- ло и ка- къв спо- мьен ста- на- ло }
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
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-112,1,7"
  tagline = ##f
}


