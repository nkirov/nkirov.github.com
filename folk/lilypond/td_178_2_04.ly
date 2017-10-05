%{
TD_178_2_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 138
  \time 2/4
  g8( f) f([ e)] c2 e8( f) g4 
  g8( a^"(↓)") g([ f)] 
\afterGrace g2( { \stdB a8^"(↓)") \stdE } 
g8( f) f([ e)] c2
\varA
  e8\startTextSpan( f) f8([ e\stopTextSpan)] |
  d8 d4. d2
 \bar "|." 
 \endm
\varA
  f4\startTextSpan f8([ e\stopTextSpan)]  
 \bar "|." 
}
\addlyrics { И- ма- "ла~й" ма- ма, и- ма- ла е- дин го си- на млад Гер- ги }
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

\header{
  opus = "ТД-178,2,4"
  tagline = ##f
}


