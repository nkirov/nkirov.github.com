%{
td_094_1_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 160
%\time 2/4
\cadenzaOn
g8 a\noBeam \afterGrace a8[(\( { b16[ a]\) } g8]) g4. 
\varA
s\startTextSpan c4.\stopTextSpan 
b8 c\noBeam b a16[( b]) g8 \breathe a\noBeam a16[( b])
\bar ""
\afterGrace a8[(\( { b16[ a]\) } g8]) g2. r4 
\varA
s\startTextSpan c4.\stopTextSpan  
b8 c\noBeam b a4 a2\fermata
 \bar "|." 
s4 \fixB e \fixC
 \bar "|." 
 s16 \clef treble
\varA
s4\startTextSpan c'2\stopTextSpan  
 \bar "|."  
}
\addlyrics { Край чу- ка- ри зи- ле- ни па- на- ри,
край чу- ка- ри зи- ле- ни па- на- ри }
%
\layout {
   \context { 
	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 160 8)
		}
	}
}
%
\header{
  opus = "ТД-94,1,7"
  tagline = ##f
}


