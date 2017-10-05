%{
laz_096_2_19
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 160
 \time 2/4
e8( f) \acciaccatura f8 g4 | \acciaccatura g8 e2 | d2 | e8( f) g4 | 
\varA
f\startTextSpan^\rtoe \acciaccatura f8 g4\stopTextSpan | 
\acciaccatura g8 e2 | d4( e^\ltoe) | e e
 \bar ":|" 
s4 \fixB e \fixC
\bar "|."
\endm
 \varA
g8\startTextSpan^\rtoe( f) \acciaccatura f8 g4\stopTextSpan
\bar "|."
}
\addlyrics { Ов- ча- рю- ва ма- мо, ов- ча- рю- ва ма- мо, }
\addlyrics { къ- де ти ов- ча- ря, къ- де ти ов- ча- ря }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-96,2,19"
  tagline = ##f
}


