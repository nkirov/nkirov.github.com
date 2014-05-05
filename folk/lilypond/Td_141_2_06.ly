%{
sva_141_2_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 4 = 120
%\time 2/4
\cadenzaOn
c4\prall c2. c8([ b d b]) c[( b]) \afterGrace c[\(( {\stdB  d8\) \stdE } c16 b] c4)
a2~( a8^\ltoe[ g]) a4.( b8) c4( b8) r8 r4
\bar "" \break
c8.\noBeam a16~ a2 a4 c8([ b]) \acciaccatura { c16[ b] } a4( g) g r a8([ b]) a1~ a4
 \bar "|." 
s16 \fixB c,4 
  \bar "|." 
}
\addlyrics { Скрий- те ма, бра- тя, скрий- те ма "в на-" ша- та рав- на гра- дин- ка }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-141,2,6"
  tagline = ##f
}


