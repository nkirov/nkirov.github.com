%{
TD_140_2_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
  \time 2/4
  \parG
\parenthesize g4  s4 \bar "||" 
 \acciaccatura b8 c2 
\parS
\acciaccatura c8 b4 aes-\parenthesize-\mordent
b  aes b aes8( g) f2
aes2\mordent
  \override Glissando #'style = #'zigzag
\noteFi g8\glissando( f)  f4 \noteFi g\glissando bes g g g2
 \bar "|." 
 \fixB fis4  
 \bar "|." 
}
\addlyrics { и  Слън- це- то треп- на да зай- де, хо- ро- то ко- як иг- ра- е }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}

\header{
  opus = "ТД-140,2,14"
  tagline = ##f
}


