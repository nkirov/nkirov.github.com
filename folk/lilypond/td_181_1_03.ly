%{
sva_181_1_03
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 112
%\time 2/4
\cadenzaOn
d8([ e]) fis([ g]) a([ g]) fis!1\fermata( e16[ fis e d] e[ fis e d]) 
d1(~ d8[ e]) fis!([ g]) g^\ltoe([ fis!^\rtoe]~ \afterGrace fis2.\( { e16[ fis]\)) } fis!1\fermata r4
\bar "" 
d8([ e]) fis([ g]) a([ g]) fis!8^\ltoe([ e^\rtoe]~ e2.~ e8[ d]) \acciaccatura fis!8 g[( fis!] g[ fis])
e[( fis!] e[ d]) d4 d1\fermata( c4) r
\bar "" 
d8([ e]) fis([ g]) a([ g]) fis!4( e2.~ e8[ d]) \acciaccatura fis!8 g4( fis!16[ g a g] fis8[ e])
fis!4( e8[ d]) d4 d1\fermata
 \bar "|." 
s4 \fixB c
  \bar "|." 
}
\addlyrics { Я из- грей, слън- це, я из- грей, ра- но ми ра- но "в не-" де- ля  
да ви- диш, слън- це, да ви- диш }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,3"
  tagline = ##f
}


