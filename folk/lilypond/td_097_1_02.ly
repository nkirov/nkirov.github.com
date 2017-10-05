%{
sva_097_1_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 76
%%\time 2/4
\cadenzaOn
a8.([ b16]) c8([ d16]) \times 2/3 { b8[( c b]) } \afterGrace a2( { b16[ a g]) }
c8\noBeam c16([ b]) a8\noBeam g 
a8.([ b16)] c8.([ d16]) \times 2/3 { b8[( c b]) } \afterGrace a2( { b16[ a g]) }
c16[( b]) c16([ b]) a4 a2.
\bar "|." 
s4 \fixB cis,
\bar "|." 
}
\addlyrics { За- ся- ва- ми, за- пя- ва- ми, за- ся- ва- ми, за- пя- ва- ми }
%
\layout {
  \context { \Staff \remove "Time_signature_engraver" }
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
  opus = "ТД-97,1,2"
  tagline = ##f
}


