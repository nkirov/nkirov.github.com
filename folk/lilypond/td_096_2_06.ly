%{
TD_096_2_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
g4 c | b g | \afterGrace a2\( { b16[ a g]\) } | f4 g | 
\acciaccatura g8 a4( \grace { \stdB b8\( \stdE } a\)[ b]) | 
g4 c | b g | 
\acciaccatura g8 
\afterGrace a2\( { \stdB b8\) \stdE } | a4 g | g2 
 \bar "|." 
s4 \fixB ees
  \bar "|." 
}

\addlyrics { Цъф- тя лю- ля- ка, при- цъф- тя, 
 цъф- тя лю- ля- ка, при- цъф- тя }
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
  opus = "ТД-96,2,6"
  tagline = ##f
}


