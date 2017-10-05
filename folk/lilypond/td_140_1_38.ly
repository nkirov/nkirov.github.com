%{
td_136_1_10
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 132
\cadenzaOn
\acciaccatura f8 g4 g( a2) f4 g8([ a]) a4.( g16[ f] g8[ f]) g([ a]) a2
f4(~ \times 2/3 { f8[ e d] } c4) r
\bar ""
\acciaccatura f8 g4 \afterGrace g8[(\( { \stdB a8\) \stdE } g16 f ^"↑"] g2.) \bar "" 
f8[( s^\ltoe e]) f([ g]) \bar ""
g[( f16 e] f8.^\rtoe[ ees16]) \bar "" d8 d\noBeam~ d4 d1~( d4 c^\ltoe) r4
\bar ""
\override Glissando #'style = #'zigzag
\acciaccatura f8 g4 g16[( a g f!] g8.\prall[ f!16]) f8([ s^\ltoe ees]) f([ g]) 
g[( f16 ees] \noteFi f8.[\glissando\prall^\rtoe ees!16]) d8 d\noBeam~ d1 d~ d4
 \bar "|." 
s4 \fixB b
  \bar "|." 
}
\addlyrics { Пре- ме- ня- вай се, То- дор- ке, по чес- то край нас ми- на- вай,
да- но те ма- ма ха- ре- са }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,38"
  tagline = ##f
}


