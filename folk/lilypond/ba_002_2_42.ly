%{
BA_2_2_42
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g8 g4. | d'4 d8( c) | c8([ b] g[ a]) | c8 c4( b8) | b8([ a] g[ a]) | 
\break
\varA
c4~\startTextSpan c16 c8([ b16]) | a8 a4. | b4.( a16[ g]\stopTextSpan) | 
g8 g4. | g4 r4 
 \bar "|." 
\endm
\varA
\set Score.measureLength = #(ly:make-moment 5 16)
c8\startTextSpan^"(сгъстяване на трайностите)" c8([ b16]) | 
\set Score.measureLength = #(ly:make-moment 2 8)
a8 a | 
\set Score.measureLength = #(ly:make-moment 5 16)
\slurDown
b8~( b16[ a g]\stopTextSpan) 
\bar "|."  
}
\addlyrics { Ка- ни се Гьор- ги, ка- ни се, ка- ни се Гьор- ги да и- де }
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
  opus = "ВА-2,2,42"
  tagline = ##f
}


