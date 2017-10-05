%{
TD_139_1_19
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
 \time 2/4

\repeat volta 2 {
\varA 
\acciaccatura c8\startTextSpan d4 d8( c\stopTextSpan) | 
\varB
c8\startTextSpan( b) c( d\stopTextSpan) | 
d\mordent( c d16[ c b a]) | a2 |
\parS
b4.-\parenthesize\mordent a8 | g4 a }
\alternative { { a4 r | 
\varC
d4\startTextSpan\mordent( e16[ d c8\stopTextSpan]) } 
               { a2 | a4 r } }
\bar "|." 
s4 \fixB gis \fixC
\bar "|." 
\endm
\varA 
d'4.\startTextSpan( c8\stopTextSpan) \bar "||"
\varB
\acciaccatura d8 c8\startTextSpan( b) c( d\stopTextSpan) \bar "||"
\varC
d4\startTextSpan\mordent( e16[ d c b\stopTextSpan])
\bar "|." 
}
\addlyrics { Пе- пе- ру- да- ру- да, май- ка- та му дру- га дру- га }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,19"
  tagline = ##f
}


