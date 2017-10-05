%{
TD_141_2_10
%}

\include "td-preamble.ly"

\score {
\relative c' {
%% \tempo 4 = 152
  \time 2/4    
\acciaccatura f8 g4 g   
 a bes a4.( g8) a4 bes a4.( g8) a( bes) a( g)
 a4 g8( f e2) e4 e e2 
 \bar "|." 
 s4 \fixB ees4 
 \bar "|." 
}
\addlyrics { Сно- щи са Сто- ян по- на- пи на дол- на- та ме- ха- на }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}

\header{
  opus = "ТД-141,2,10"
  tagline = ##f
}


