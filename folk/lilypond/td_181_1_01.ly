%{
sva_181_1_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 100
%\time 2/4
\cadenzaOn
g8([ a]~ \afterGrace a2)( { g8) } fis8[( e]) fis!([ g]) 
g4( a1\fermata g16[ a g fis!] g2.~ g8[ fis!]) r4
a4.( g8) fis!4( d8) d8([ e]) fis!8( g]~ g1\fermata) r4 
\bar "" \break
g8([ a]~ \afterGrace a4)( { g8) } fis!4( d8) d8([ e])
fis!8([ g] fis!\prall[ e]~ e1\fermata d4) r4
fis!8[( g]~ g[ fis]) e[( fis!] e^\ltoe[ d^\rtoe]) d8\noBeam d~( d1\fermata c4) r4
\bar "" \break
fis!8^\ltoe([ g^\rtoe] a16[ g fis!8]) d4( c8) 
d8([ e]) fis!8([ g] fis![ e]~ e1 fis!16^"↓"[ e d8]) r4
fis!8^\ltoe([ g^\rtoe]~ g[ fis]) e([ fis!] e[ d]) d8\noBeam d~ d1.\fermata
 \bar "|." 
 s4 \fixB c
 \bar "|." 
}
\addlyrics { Де- вер- ко льо, млад не- же- нен, млад не- же- нен, 
млад не- го- ден, я про- дай си би- во- ли- те }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,1"
  tagline = ##f
}


