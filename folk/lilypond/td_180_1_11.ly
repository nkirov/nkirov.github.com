%{
TD_180_1_11
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 126
  \time 2/4
 d4 \acciaccatura g8 a4 
 \varA
 a\startTextSpan( \times 2/3 { a8 g f\stopTextSpan) } |
 g( a) g( a) 
 \varB
 g4\startTextSpan( a16 g f e\stopTextSpan)  f4 e8( c) 
d( e^\ltoe) f( g)  g4( a16 g f e) f4 e d2\fermata 
\varC
d8\startTextSpan d4.\stopTextSpan  
\bar "|."
\endm
\varA
a'4\startTextSpan( \grace { \stdB bes8\(  \stdE } \times 2/3 { a8\) g f\stopTextSpan) } \bar "||"
\varB
 g4.\startTextSpan( f16 e\stopTextSpan) \bar "||"
\varC
d4\startTextSpan d4\stopTextSpan
\bar "|."
}
\addlyrics { Гьор- ги- ва ма- ма ду- ма- ше: Гьор- ге ле, син- ко Гьор- ге ле }
%
\layout {
  indent = 0\mm
  line-width = 190\mm
  ragged-right=##f
%%  ragged-last = ##t
}
%

%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}

\header{
%%  title = "Гьоргива мама думаше"
  composer = "ТД-180,1,11"
  tagline = ##f
}


