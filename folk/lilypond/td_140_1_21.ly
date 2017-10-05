%{
TD_140_1_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 144
  \time 2/4
e2 \acciaccatura f8 e( d) c4 \acciaccatura c8 d4 e 
\varA
e8\startTextSpan( d c16 d8.\stopTextSpan) 
a4 \acciaccatura c8 d4 \acciaccatura e8 d4( c) \break
\acciaccatura c8 d4 d8( c) c( b) a4 a2^\rtoe a4 a4 
 \bar "|." 
 s4 \fixB b,4  \fixC 
 \bar "|."
 \endm
 \varA
 \times 2/3 { e'8\startTextSpan([ d c] } d4\stopTextSpan) 
 \bar "|."
}
\addlyrics { Ни- ко- ла, хай- дут Ни- ко- ла, Ни- ко- ла тур- ци вар- де- ли }
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
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}

\header{
  opus = "ТД-140,1,21"
  tagline = ##f
}


