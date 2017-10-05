%{
TD_138_1_35
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 116
  \time 2/4
\varA
  a4\startTextSpan bes4\stopTextSpan | 
 a4 d^"↓" | \acciaccatura d8 c4.( b8) | c4 b\prall | a2 \breathe | 
 a8([ b]) c4 | 
\varB 
 c8\startTextSpan([ b]) b8\prall([ a\stopTextSpan]) | 
 \break
 a2 | 
\varC 
 a8\startTextSpan([ b]) a4\stopTextSpan | 
 a2\fermata
 \bar "|." 
 s4 \fixB e4 \fixC
 \bar "|." 
\endm
\varA
  a4\startTextSpan a\stopTextSpan \bar "||"
\varB 
 c8\prall\startTextSpan([ b]) b4\stopTextSpan \bar "||"
\varC 
 b4\startTextSpan a\stopTextSpan  
 \bar "|." 
}
\addlyrics { До- бра е змий- ка лю- би- ла, май- ци си ни е ка- за- ла }
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
		tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,35"
  tagline = ##f
}


