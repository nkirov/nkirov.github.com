%{
BA_2_1_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA 
  d4\startTextSpan a8( b\stopTextSpan)  | 
\slurDown b4.\trill( a16 b)  \slurNeutral | a4 g | g4 a8( b) | 
b4.\trill( g8) | a8( b) b8( g) | a4 g8( fis) | e4.( d8) | g4 a | 
a4 g8( fis) | e2 | e4 e | g4 g8( fis) | e2 | g4 a | a4 g8( fis) | e2 | e4 e
 \bar "|." 
 \fixB s4 e4 \fixC 
 \bar "|." 
 \varA 
  g4\startTextSpan b4\stopTextSpan 
\bar "|." 
}
\addlyrics { Над- фър- га- ли са, над- фър- га- ли са йер- ген и вдо- вец,
йер- ген и вдо- вец, кой- то над- фър- ли дър- во йел- хо- во }
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
%
\header{
  opus = "ВА-2,1,13"
  tagline = ##f
}


