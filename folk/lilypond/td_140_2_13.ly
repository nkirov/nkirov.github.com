%{
TD_140_2_13
%}

\include "td-preamble.ly"
\include "makam.ly"

\score {
\relative c' {
 \tempo 4 = 152
  \time 2/4
 d4 f8( g) |
\varAB
 a4\startTextSpan g8\prall( f\stopTextSpan) |
\parS
 \acciaccatura g8 a2-\parenthesize-\rtoe a8( g) g4 f8( e d c) 
 d4 f g f8( efb) \time 3/4 d2. 
 \varC
 \time 2/4 d4\startTextSpan^\ltoe d\stopTextSpan^\rtoe d2 
 \bar "|." 
 s4 \fixB fb4 \fixC
 \bar "|."
 \endm
 \varA
 f4\startTextSpan g\stopTextSpan \bar "||" 
 \varB
 a4\startTextSpan g\stopTextSpan \bar "||" 
 \varC
 \time 2/4 d4\startTextSpan^\ltoe d8( c\stopTextSpan)
 \bar "|."
}
\addlyrics { Два бра- та дял- ба де- ли- ли, два бра- та дял- ба де- ли- ли }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%   ragged-last = ##t
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
  opus = "ТД-140,2,13"
  tagline = ##f
}


