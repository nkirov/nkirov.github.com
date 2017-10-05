%{
TD_138_2_05
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 112
  \time 2/4
\varA  
  f8\startTextSpan( g) a4\stopTextSpan | 
\varB  
  \acciaccatura a8\startTextSpan d8([ c]) b8.([ a16\stopTextSpan]) | 
\varC  
  \acciaccatura a8\startTextSpan b4.( \times 2/3 {c16[ b a\stopTextSpan])} | 
  a8([ b]) b([ a]) | 
\varDE  
  a4\startTextSpan\mordent( g\stopTextSpan) \breathe | 
  a4 b | 
\varFG
\override Glissando #'style = #'zigzag
\noteFi a\startTextSpan\glissando g8.([ f16\stopTextSpan]) | 
e2 | e4 e | e2\fermata  
 \bar "|." 
s4 \fixB cis \fixC 
 \bar "|." 
\break 
\varA  
  \acciaccatura f8\startTextSpan g4 a4\stopTextSpan \bar "||" 
\varB  
  \acciaccatura a8\startTextSpan d4 b8.([ a16\stopTextSpan]) \bar "||"  
\varC  
  \acciaccatura a8\startTextSpan b4( c16[ b a8\stopTextSpan]) \bar "||"  
\varD
  a4\startTextSpan\mordent( d16[ c a8\stopTextSpan)]  \breathe \bar "||"  
\varE  
\set Score.measureLength = #(ly:make-moment 3 4)
\hideNotes a4\startTextSpan \unHideNotes a2\mordent\stopTextSpan \bar "||"  
\set Score.measureLength = #(ly:make-moment 2 4)  
\varF
 \acciaccatura b8\startTextSpan \noteF a4\glissando g8.([ f16\stopTextSpan]) \bar "||" 
\varG
\set Score.measureLength = #(ly:make-moment 3 4)
\noteF a4\startTextSpan\glissando \noteF g4\glissando \hideNotes e4\stopTextSpan \unHideNotes 
\set Score.measureLength = #(ly:make-moment 2 4)
 \bar "|."
}
\addlyrics { Сто- ян на Бой- ка ду- ма- ше: Лю- бе Бой- ке ле, Бой- ке ле }
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
  opus = "ТД-138,2,5"
  tagline = ##f
}


