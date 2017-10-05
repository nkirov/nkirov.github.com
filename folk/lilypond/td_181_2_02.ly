%{
td_181_2_02
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 126
\cadenzaOn
f8([ g]) g([ a]) a([ g]) a\noBeam g( a1\fermata \grace { g32[\( a g f] } g2.\) \grace { a16[\( g] } f4\)) 
g8([ a]) a16[( g f8]) f([ g]~ \afterGrace g1\( { f16[ e]\) } \afterGrace f2\( { e16[ d]\) } c4) r
\bar ""
f8[( g]) g([ a]) a16([ g f8]) 
\varA
s4\startTextSpan g4^\ltoe\stopTextSpan 
f8([ g~] \afterGrace g1\( { f16[ e]\) } f4 e16[ d c8]) d4^\ltoe d1 d1.( c4) r
\bar ""
f8[( g]) g([ a]) a16([ g f8]) 
\varB
s8\startTextSpan g8^\rtoe\noBeam\stopTextSpan 
f^\ltoe( \afterGrace g1\( { f16[ e]\) } f4 e16[ d c8]) d8\noBeam d~ d1 d1\fermata
 \bar "|." 
s4 \fixB ees \fixC
  \bar "|." 
 s16 \clef treble
\varA
s4\startTextSpan f4^\ltoe\stopTextSpan \bar "||"
\varB
s8\startTextSpan f8\noBeam\stopTextSpan 
 \bar "|."   
}
\addlyrics { Раз- сър- дял ми са~й млад Сто- ян, чи ня- ма мъж- ка рож- би- ца,
и- мал е се мо- ми- че- та }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-181,2,2"
  tagline = ##f
}


