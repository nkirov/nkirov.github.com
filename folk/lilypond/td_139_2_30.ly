%{
sva_139_2_30
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 116
%\time 2/4
\cadenzaOn
\phrasingSlurDown
\acciaccatura c8 d4 c2 c8( \afterGrace d4.)\( { e16[ d c]\) } c([ b]) 
\afterGrace c4(\( { \stdB d8\) \stdE } c8[ bes]) a4 a4.( b8) c4~( c16[ d c b]) r4
\bar "" 
c8([ b]) a2 g2. c8([ b]) a2 g4 a4~( a16[ b a g^"↑"] a8[ g]) a1
\bar "|."
s4 \fixB ees
\bar "|."
}
\addlyrics { Сто- ян са  ю- нак за- же- ни, той теж- ка сват- ба по- диг- на }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,30"
  tagline = ##f
}


