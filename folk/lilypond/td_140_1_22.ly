%{
TD_140_1_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
\parG
\parenthesize a2
  d4 c8( b)  \acciaccatura b8 c4 d8( c)  \acciaccatura { c16[ g]  } c2 b4 b8( a)
  g2  \acciaccatura fis8 g4 a8( b)  \acciaccatura c8 b( a) a4
  g2^\rtoe g4 g4 g2 
 \bar "|." 
 s4 \fixB c,4  \fixC 
 \bar "|." 
%%\break
\parenthesize a'2^"II" d4 c8\prall( b)  \acciaccatura b8 c4 d d8( c16 b) c4^\rtoe 
\acciaccatura c8 b4 b8( a)
g2  \acciaccatura g8 a4 b8( c) b4\prall b8( a) \time 3/4 g2. \time 2/4 
g4^\ltoe g^\rtoe g2 
\bar "|."
}
\addlyrics { и Йов- ко льо, до- бър ке- ха- я, 
под- ка- рал Йов- ко ста- до- то " "  и }
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

\header{
  opus = "ТД-140,1,22"
  tagline = ##f
}

