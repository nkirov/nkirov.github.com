%{
TD_138_1_03
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 112
  \time 2/4
  f4 g | \acciaccatura b8 c2 |
\parS  
  c8-\parenthesize\prall([ b] c8\prall[ b]) | 
\varAB  
  b8\startTextSpan([ a^"↓"]) g8([ f\stopTextSpan]) | 
\varC  
  g8\startTextSpan([ aes]) b8^"↓"([ c\stopTextSpan]) | 
  \acciaccatura c8 b4.( \times 2/3 { c16[ b aes]) } | 
  \time 3/4 g2. | \time 2/4 g4 g~ | g2\fermata
 \bar "|." 
 s4 \fixB e4 \fixC
 \bar "|." 
 \endm
\varA  
  aes8\startTextSpan([ g]) f4\stopTextSpan \bar "||"
\varB 
\times 2/3 { b8\startTextSpan([ aes g]) } f4\stopTextSpan   \bar "||"
\varC  
g4\startTextSpan  b8([ c\stopTextSpan]) 
  \bar "|." 
}
\addlyrics { Я- но, мал- ка мо- ме, тръ- гна- ла е Я- на }
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
		tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,3"
  tagline = ##f
}


