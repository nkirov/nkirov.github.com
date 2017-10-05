%{
sva_139_2_33
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 104
%\time 2/4
\cadenzaOn
\acciaccatura c8 d4 c2 c8([ d] e16[ d c b]) c8([ b]) c4( d16[ c b8]) a4 
\parS
\afterGrace a2-\parenthesize^\rtoe( { \stdB b8) \stdE }  c4( d16[ c b8]) r4
\bar "" \break
\override Glissando #'style = #'zigzag
c8([ b]) a2 g^\rtoe c8([ b]) a2 \noteFi g4 a(\glissando c16[ bes a bes] c[ \noteF bes\glissando g8])
a1~ a4
 \bar "|." 
s4 \fixB ees
  \bar "|." 
}
\addlyrics { Скрий- те ма, брай- не, скрий- те ма, 
във ва- шта рав- на гра- дин- ка }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 104 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,33"
  tagline = ##f
}


