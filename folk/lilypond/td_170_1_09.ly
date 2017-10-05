%{
TD_170_1_09
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 126
  \time 2/4
c8 d4 c8 f4 f g8( a) a16( g8 a16) 
\varA
g8\startTextSpan( f4.\stopTextSpan) |
\varB
g8\startTextSpan( a) a16( g8 a16\stopTextSpan) 
%\break
\afterGrace g4(\( { f16[ e\)] } f8 g) g\prall( f)  
\override Glissando #'style = #'zigzag
\noteFi g\prall\glissando( ees)  d4^\ltoe d^\rtoe d2 
 \bar "|."
\endm 
\varA
\afterGrace g4\startTextSpan( { f16[ e]) } f4\stopTextSpan \bar "||"
\varB
g8\startTextSpan( a) a16( g8.\stopTextSpan)  
\bar "|."
}
\addlyrics { Ка- лу- да хо- ди по дво- ри, хо- ди Ка- лу- да, хем пла- че }
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
		tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}

\header{
  opus = "ТД-170,1,9"
  tagline = ##f
}


