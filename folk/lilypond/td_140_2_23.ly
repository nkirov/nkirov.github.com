%{
TD_140_2_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
 \acciaccatura d8 e4 e 
 d8( c) e4 
  \override Glissando #'style = #'zigzag
  \noteFi d4.\glissando( c16 b) d4 d c8( b a4)
  \acciaccatura c8 d4 d c8( b) c4 \acciaccatura b8 
  \noteFi c4\glissando( \noteFi b8\glissando[ a)]
  \acciaccatura b8 a4 a a2 
 \bar "|." 
 \fixB ees4  
 \bar "|." 
}
\addlyrics { Си- но Сто- я- не, Сто- я- не, що хо- диш по д'ор ка- хъ- рен }
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
  opus = "ТД-140,2,23"
  tagline = ##f
}



