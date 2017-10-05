%{
td_180_1_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 152
\cadenzaOn
g4 a g8([ a]~ a2 g16[ a g f] g2 \bar ""
\varA
a16\startTextSpan[ g f8]) g4 a^\ltoe\stopTextSpan \bar ""
a16[( g f8]~ f4) \acciaccatura f8 g4
\bar ""
g16[( a g f] g2 \grace { f16\([ g f e] } f2\) ees16[ d c8]) \bar "" r4 r d^\rtoe 
\varB
f\startTextSpan f8([ g]~ g4 \grace { f16\([ g f ees] } f2\) \time 2/3 { ees!8[ d c8\stopTextSpan]) } r4
\bar ""
\acciaccatura f8 g4 f8[( ees!]) d \bar "" 
\varC
d\startTextSpan\noBeam~ d2. d( c8\stopTextSpan) r 
r4 r \bar "" 
\varD
s4\startTextSpan d\stopTextSpan 
f \bar ""
\varE
f8\startTextSpan([ g]~ g4 \grace { f16\([ g f ees] } f2\) \time 2/3 { ees!8[ d c8\stopTextSpan]) } r4 
\bar ""
f f8([ ees!]) d8 d\noBeam d1.
\bar "|." 
s4 \fixB cis \fixC
\bar "|." 
 s16 \clef treble
\varA
\hideNotes f4\startTextSpan( \unHideNotes  f) f g\stopTextSpan \bar "||"
\varB
f8\startTextSpan([ g]) \grace { g32[\( a g f] } g2\)( \grace { f32[\( g f e] } f4.\) ees!8\noBeam d8[ c\stopTextSpan]) \bar "||"
\varC
d8\startTextSpan~ d4^\ltoe d1(~ d4 c8\stopTextSpan) \bar "||"
\varD
s8\startTextSpan d2\stopTextSpan \bar "||"
\varE
\grace { g32\startTextSpan[\( a g f] } g2\)( \grace { f32[\( g f ees] } f4.\) ees!8\noBeam d8[ c\stopTextSpan])
\bar "|." 
}
\addlyrics { Слън- це- то треп- ти, зай- де- ва, Ся- ро си кон- че сид- ла- и,
си- ни го сид- ла йо- сед- ли }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-180,1,21"
  tagline = ##f
}


