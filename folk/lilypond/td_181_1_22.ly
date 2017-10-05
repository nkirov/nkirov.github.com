%{
td_181_1_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 72
\cadenzaOn
\parS
g4 a \times 2/3 { a-\parenthesize\prall( g8) } \times 2/3 { g4( a8) } 
\varA
a1\startTextSpan( bes8[ a16\prall g] a8[ \times 2/3 { g16\prall f g] } g2\stopTextSpan 
a8[ g16\prall f] g32[ a g f]) r8
\bar ""
\varB
g8\startTextSpan\noBeam g( a4 g32[ a g f] g32[ a g f]) \bar "" f4\stopTextSpan( 
g2. f32[ g f e f] \bar ""
\varC
\times 2/3 { g16\startTextSpan[ f e] } \bar "" \times 2/3 { g16[ f e] } d8[ c\stopTextSpan]) r4
\bar ""
\varD
g'16\startTextSpan\noBeam a8.\noBeam \bar "" a32[( bes! a g f8\stopTextSpan])
\bar "" %%3
f8([ s^\ltoe g ]) \bar "" g2( f32[ g f e f8^\ltoe] \bar "" \times 2/3 { g16[ f e } f8^\ltoe] 
\times 4/5 { g16[ f e d c]) } \breathe
\bar ""
d16 d\noBeam d8(~ d1 e32[ d c16]) r8
\bar "" %% 4
d16[( e]) f8\noBeam~ f1 g8([ a] 
\varE
\grace { g32\startTextSpan[\( a g f] } g2\) 
\bar "" a8[ g32 a g f] \times 2/3 { g16[ a g } f8\stopTextSpan])  \breathe
\bar ""
f8([ g]) \bar "" g2( f32[ g f e f8^\ltoe] \times 2/3 { g16[ f e } f8] 
\times 4/5 { g16[ f e d c]) } d8 d\noBeam d1\fermata  
 \bar "|." 
 s4 \fixB gis, \fixC
  \bar "|." 
\varA
a'1\startTextSpan( \grace { g32[\( a g f] } g2.\) \hideNotes d16\stopTextSpan) \unHideNotes \bar "||"
\varB
g8\startTextSpan\noBeam a( \grace { g32[\( a g f] } g2.\) \bar "" a8[ g32 a g f] g16[ a g f]) 
f8([ g] \hideNotes d16\stopTextSpan) \unHideNotes \bar "||"
\varC
\hideNotes d16\startTextSpan( \unHideNotes \times 2/3 { g16[ f e } f8] \times 4/5 { g16[ f e d c\stopTextSpan]) } \bar "||"
\varD
\times 2/3 { g'8\startTextSpan\noBeam g4( } a) a8[( g32 a g f] \times 2/3 { g16[ a g } f8\stopTextSpan]) \bar "||"
\varE
\acciaccatura { g16\startTextSpan[ a g f] } 
\afterGrace g2(\( { \stdB f8\) \stdE } \times 2/3 { g16[ a g } f8\stopTextSpan])
 \bar "|."   
}
\addlyrics { Ми- тьо по дво- ри хо- де- ше, две- те си де- ца во- де- ше и 
жал- но гле- да бал- ка- на " " " "
бал- ка- на " " Ми- тьо льо }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,22"
  tagline = ##f
}


