%{
TD_179_2_29
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 144
  \time 2/4  
\acciaccatura f8 g4 \acciaccatura g8 a4  
a8\prall( g) g( a) 
\parS
 \times 4/5 { a16( g f g f } g8[ a]) g-\parenthesize-\prall[( f]) f16( e d8) d2 r4 r4^\ltoe
%%\break
f4 \acciaccatura f8 g4 \acciaccatura a8 g( f) f16( ees d ees) d2~ d~ d 
\varA
d8\startTextSpan d\noBeam d4~ d r4\stopTextSpan
 \bar "|." 
 s4 \fixB b4 \fixC 
 \bar "|."
\endm 
\varA
d8\startTextSpan d4. d r8\stopTextSpan 
\bar "|."
}
\addlyrics { Дон- ка ми, мо- ма ху- ба- ва, Дон- ка са би- да би- ди- ле }
%
\layout {
  indent = -2\mm
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}

\header {
  opus = "ТД-179,2,29"
  tagline = ##f
}


