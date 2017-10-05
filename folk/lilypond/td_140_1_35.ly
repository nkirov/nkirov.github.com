%{
td_140_1_35
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 108
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
g2. g8[( a]) b4 \noteFi \acciaccatura b8\glissando c2. 
\afterGrace b4(\( { \stdB a8\) \stdE } 
\afterGrace b^\rtoe[\( { \stdB a\) \stdE } g]) g2.
g8[( a]) \afterGrace b4(\( { a16[ g]\) } a1~ a8[ g16 a] b[ a g8])
\bar ""
g1~ g4 r g8[( a]) b4 \noteFi \acciaccatura b8\glissando c2.  b4( a) 
a8[( s^\ltoe b]) g1~ \afterGrace g^\rtoe\( { \stdB f8\) \stdE } g2~ g4
 \bar "|." 
s4 \fixB d
 \bar "|."  
}
\addlyrics { Раз- ни- сай- те са, се- дян- ки, че са йе по- ле бял- на- ло }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 108 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,35"
  tagline = ##f
}


