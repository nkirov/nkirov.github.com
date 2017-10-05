%{
sva_139_2_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 126
\time 2/4
\phrasingSlurDown
a4 b | b b | \acciaccatura { d16[ c b] } c4( \grace { d16[\( c] } b4\)) |
a2 | 
\varA
c4\startTextSpan\mordent  \acciaccatura { d16[ c] } b4\stopTextSpan | 
a b | \time 3/4 b2. | 
\varB
\time 2/4 b4\startTextSpan r\stopTextSpan
\bar "|." 
 s4 \fixB b \fixC
 \bar "|." 
 \endm
\varA
c4\startTextSpan\mordent c8[( b\stopTextSpan]) \bar "||"
\varB
\time 2/4
\set Score.measureLength = #(ly:make-moment 3 4)
 s4\startTextSpan b2\stopTextSpan\fermata
 \bar "|."  
}
\addlyrics { До- бро, гю- зел До-  бро, До- бра дво- ри ме- ла }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,5"
  tagline = ##f
}


