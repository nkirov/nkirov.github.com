%{
eng_134_2_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
%\time 2/4
\cadenzaOn
\acciaccatura c8 d4 d16[( e d c] b2. c16[ b a8]) 
\acciaccatura { a16[ b a] } g4^\rtoe a8\noBeam a( b4~ b1 c16[ b] a8\noBeam~ a) r8
\acciaccatura c8 d8 d16[( c] b8[ a]) \bar "" 
\acciaccatura a8 g2~( g16[ fis e fis]) \bar ""
g8\noBeam 
 \bar ""
g( \grace { g16[\( a g fis!] } g1\) \bar ""
\grace { fis!16[\( g fis e] } \afterGrace fis!1\))\( { e16[ d\)] } r4 r4
b'8([ a]) a16([ b a g] a8 g4.) fis!8[( e]) e([ fis!)] \bar ""
g4( \grace { fis!16[\( g fis e] } fis1\)~ \bar "" fis8[ e16 d])
 \bar ""
 r4 r \bar "" b'8([ a]) a16([ b a g] a16[ \afterGrace g8.])( { a16[ g fis!]) }
 e8([ fis!] \afterGrace g4)\( { \stdB fis!8\) \stdE } fis!8\noBeam e8~ e1~ e1~ e2
 \bar "|."
 s4 \fixB a,
 \bar "|." 
}
\addlyrics { Ой Йе- не, Йе- не, Йе- ньо- ва бу- ля,
я брък- ни, Йе- не, пръ- стен из- ва- ди }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,21"
  tagline = ##f
}


