%{
TD_141_1_30
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 4 = 76
%\time 5/16
\cadenzaOn
\phrasingSlurDown
\acciaccatura cis8 d4 cis!8 d\noBeam e16 e\noBeam d8(~ \afterGrace d2\( { e16[ d c]\) } b4)
d8.^\ltoe c16\noBeam b2.( g4) r d'8 cis! d\noBeam
\bar ""
e16 e\noBeam d8(~ d4. c8 b4^\ltoe) d8. c16\noBeam b2. r4 \bar ""
\bar "|:"
d8 e fis a8 g\noBeam(~ g2 b,4) 
\bar ""
c16 c\noBeam a8~ a2. r4 
\bar ""
\parS
g' fis! e16[( d^\ltoe e8]) e 
d\noBeam~\afterGrace d2-\parenthesize^\ltoe\( { c16[ b]\) } c16 c\noBeam
b8~ b1 r4
 \bar ":|" 
s4 \fixB bes,
 \bar "|."
}
\addlyrics { През е- дин про- ле- тен май- ски ден 
през  е- дин про- ле- тен май- ски ден за- лю- бих мо- ма ху- ба- ва, аз 
хи по- ис- ках ръ- ка- та }
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
		tempoWholesPerMinute = #(ly:make-moment 76 4)
		}
	}
}
%
\header{
  opus = "ТД-141,1,30"
  tagline = ##f
}


