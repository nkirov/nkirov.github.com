%{
TD_171_1_01
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 8 = 302
  \time 7/8
\acciaccatura fis8 g4 g8([ fis)] e e4 |
\acciaccatura fis8 g4 g8([ fis)] e e4 |
\acciaccatura fis8 g4 d c16( b) a8([ g)] c4 d e8 e4 |
\acciaccatura fis8 g4 d c16( b) a8([ g)]  c4 d d8 d4 |
 \bar "|." 
}
\addlyrics { Ян- ка чер- кез- че ду- ма- ше: Чер- кез- че, лю- бе чер- кез- че,
чер- кез- че, лю- бе чер- кез- че }
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
		tempoWholesPerMinute = #(ly:make-moment 302 8)
		}
	}
}

\header{
  opus = "ТД-171,1,1"
  tagline = ##f
}


