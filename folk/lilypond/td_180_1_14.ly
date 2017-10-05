%{
TD_180_1_14
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 120
  \time 2/4
e8( d) d4 \acciaccatura f8 g4( a16 g fis8) fis8( e) e( fis) 
\varA
\acciaccatura g8\startTextSpan fis8( e d4\stopTextSpan)
\varB 
fis8\startTextSpan( e) e( fis\stopTextSpan)
e4.( fis8) e( d) d( e) d4.( c8) d( e) e4 e4.( fis8) 
\parS
e(-\parenthesize-\prall d)  d( e) d4 r4 
\bar "|."
\endm
\varA
\acciaccatura g8\startTextSpan fis16( g fis e d4\stopTextSpan) \bar "||"
\varB
fis8\startTextSpan( e) e4\stopTextSpan 
\bar "|."
}
\addlyrics { Сто- я- не, Сто- я- не, ка- рай си ста- до- то, ка- рай- си ста- до- то }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}

\header{
%%  title = "Стуяне, Стуяне"  
  composer = "ТД-180,1,14"
  tagline = ##f
}


