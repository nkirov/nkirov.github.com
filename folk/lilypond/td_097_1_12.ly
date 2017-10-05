%{
TD_09_1_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 132
%\time 5/16
\cadenzaOn
a2~ a8 g\noBeam a[( b]) c4 c8[( b] a4~ a16[ b c8]) c[( b]~ b1.) r4
\bar ""
g8[( a]~ a4~ a8) g\noBeam a[( b]) c[( b]) c[( b] a4^\ltoe) a1.\fermata
 \bar "|." 
s4 \fixB ees
 \bar "|." 
}
\addlyrics { За- мрък- на- "ла~й" мо- ма на го- ля- ма ни- ва }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,12"
  tagline = ##f
}


