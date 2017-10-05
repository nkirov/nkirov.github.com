%{
TD_134_1_31
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
\acciaccatura b8 c4 c8([ b]) | 
\varA
b8\startTextSpan([ a]) c4\stopTextSpan | 
b2 | 
\varB
a8\startTextSpan([ b]) a8([ g\stopTextSpan]) | 
\varC
g4.\startTextSpan( f8\stopTextSpan) | 
\parS
g8([ a-\parenthesize^"↓"]) b4 | 
a8-\parenthesize^"↓"([ b]) a8-\parenthesize^"↓"([ g]) | 
\break
g2~ | g | g4 g | g2 
 \bar "|." 
s4 \fixB d \fixC
 \bar "|."
\endm
\varA
a'4\startTextSpan\mordent b8\stopTextSpan[( c]) \bar "||"
\varB
a8\startTextSpan([ b]) a4\stopTextSpan\mordent \bar "||"
\varC
g4\startTextSpan( \times 2/3 { aes8[ g f\stopTextSpan)] }
 \bar "|."
}
\addlyrics { И- ван Ден- чи- ца ду- ма- ше: Ден- чи- це, ма- ри, мъ- нин- ка }
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
  opus = "ТД-134,1,31"
  tagline = ##f
}


