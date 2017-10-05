%{
TD_170_1_04
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 138
  \time 2/4
 \parS 
 \varA
 d4\startTextSpan fis\stopTextSpan 
g4.-\parenthesize-\mordent( a8) \acciaccatura a8 g( fis) ees4  \acciaccatura fis8 g4 g8( fis)
 fis4.( a8) g8( fis) ees( d) d4.( e!8 )
\break 
 f8( ees^"↑") fis4 ees8( d) d4 d2~ d\fermata
  \bar "||" %%\break
d4 fis g4.( a8) g( fis) ees4\mordent  \acciaccatura fis8 g4  
\acciaccatura a8 g( fis) fis4.( a8) g( fis) ees( d) d4.( e!8) fis( ees) fis4
ees8( d) d4 d2\fermata 
 \bar "|."  
\endm 
 d8\startTextSpan( ees^"↑") fis4\stopTextSpan \bar "|." 
}
\addlyrics { Пус- ти- те кле- ти чер- ке зи мо- ми ро- бин- ки взе- ма- ли 
и мла- ди бул- ки, ер- ге- ни бър- же ги на ред у- чи- ли }
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
		tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}

\header{
  opus = "ТД-170,1,4"
  tagline = ##f
}



