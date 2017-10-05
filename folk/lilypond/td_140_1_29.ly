%{
TD_140_1_29
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 144
  \time 2/4
\varA  
 f4\startTextSpan \acciaccatura g8 a4\stopTextSpan |
\varBC
 g\startTextSpan a\stopTextSpan | 
 a2^\rtoe |
\varD 
 a16\startTextSpan( g8.) \acciaccatura g8 a4\stopTextSpan |
 \acciaccatura a8 g8.( f16 e8[ d)] |
 e4 \acciaccatura f8 g4 | 
\varE
 a16\startTextSpan( g8.) g8( f\stopTextSpan) |
 \time 3/4 e2. \time 2/4 e8( d) e4 e2 
 \bar "|." 
 s4 \fixB e4  \fixC 
 \bar "|." 
\endm 
\varA  
 e4\startTextSpan \acciaccatura g8 a4\stopTextSpan \bar "||"
\varB
 g\startTextSpan g\stopTextSpan \bar "||"
\varC
 a16\startTextSpan( g8.) a4\stopTextSpan \bar "||"
\varD 
 g4\startTextSpan \acciaccatura g8 a4\stopTextSpan \bar "||"
 \varE
 a4\startTextSpan g8( f\stopTextSpan) 
\bar "|."
}
\addlyrics { Ди- мя- на ду- ма Сто- я- на: Лю- бе Сто- я- не, Сто- я- не }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%    ragged-last = ##t
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}

\header{
  opus = "ТД-140,1,29"
  tagline = ##f
}


