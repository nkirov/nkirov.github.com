%{
TD_138_2_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
  \time 2/4
\varA
  b8\startTextSpan([ c]) c8([ d\stopTextSpan]) | 
d8([ c]) b8^"↑"([ a]) | b4 g | a a | 
\varA
b8\startTextSpan([ c]) c8([ d\stopTextSpan]) | 
\varB
d8\startTextSpan([ c]) b8([ a\stopTextSpan ]) | 
bes4 a\prall^\markup{ \flat } | g2^\rtoe g\fermata 
 \bar "|." 
 s4 \fixB cis,4 \fixC
 \bar "|." 
\endm
\varA
  b'8\startTextSpan([ c]) \acciaccatura c8 d4\stopTextSpan \bar "||"
\varB
d8\startTextSpan([ c]) bes8([ a\stopTextSpan ])   
   \bar "|." 
}
\addlyrics { Не стой, Дой- не, сря- щу ме- нье, не стой, Дой- не, сря- щу ме- нье }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-138,2,10"
  tagline = ##f
}


