%{
td_181_1_25
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 108
\cadenzaOn
f8\noBeam g a2 a8([ g]) g4.( f8) a([ g]) a4.( \times 2/3 { a16[ g f]) } 
f16([ ees d8]~ d4 c8) r
\bar ""
f8\noBeam f f2
\bar ""
f8([ ees!]) 
\bar ""
\acciaccatura f8 ees!( d4 c8) 
\bar ""
d\noBeam d~ d2 d1 r4
\bar ""
\varA
g8\startTextSpan([ a~] a4~ a16[ g f8\stopTextSpan]) 
g8.([ f16]) f([ ees! d8]~ d4 ees!16[ d c8]) \breathe
\bar ""
f8 f\noBeam~ f4
\bar ""
\varBC
f8\startTextSpan([ ees!16\prall d] \afterGrace ees!8[\( { \stdB f8\) \stdE } ees16 d] c4\stopTextSpan) 
\bar ""
d8 d\noBeam~ d1\fermata
 \bar "|." 
 s4 \fixB g, \fixC
  \bar "|." 
s16 \clef treble
\varA
a'2\startTextSpan~( a16[ g f8\stopTextSpan]) \bar "||"
\varB
f8\startTextSpan([ ees!16\prall d] \afterGrace ees!8[\( { \stdB f8\) \stdE } ees16 d] 
\grace { ees!16[\( d] } c4\stopTextSpan)\)  \bar "||"
\varC
f8\startTextSpan([ ees!16\prall d] \times 4/5 { ees!16[ f ees d c^\rtoe\stopTextSpan)] }
  \bar "|."  
}
\addlyrics { Ко- га се вой- на о- бя- ви "с те-" зи ми тур- ци по- ган- ци,
всич- ки- те сби- рат, о- ти- ват }
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
  opus = "ТД-181,1,25"
  tagline = ##f
}


