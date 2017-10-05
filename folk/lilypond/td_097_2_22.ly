%{
td_097_2_22
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 8 = 184
\cadenzaOn
\override Glissando #'style = #'zigzag
f8 g\noBeam 
\varA
a8.\startTextSpan\glissando c\stopTextSpan\noBeam \bar ""
a8([ g16]) g8 a[( g16]) a([ g] f2)\fermata
\bar ""
\noteFi \hideNotes e64\glissando \unHideNotes g8 g\noBeam 
\bar "" g8.\glissando a8\noBeam g8. \bar "" g8\noBeam\glissando d8. \bar ""
\break
\acciaccatura f8 g2\fermata r4 
\bar "|:"
\noteFi \hideNotes e64\glissando \unHideNotes 
g8\noBeam g16[( f])  \bar "" f[( g] \grace { f16[\( g f e] } f2\) g32[ f e f]
\bar "" 
\varB
s16\startTextSpan g2\stopTextSpan \bar ""
a16[ g] f8\noBeam) \bar ""
\noteFi \hideNotes e64\glissando \unHideNotes \bar "" g16 f\noBeam
\bar ""
\break
f16[( e]) \bar ""
\varC
s16\startTextSpan d2.\stopTextSpan 
d2
 \bar ":|" 
s4 \fixB f \fixC
 \bar "|."
 s16 \clef treble 
\varA
 a8.\startTextSpan \acciaccatura a8 c\stopTextSpan \bar "||"
 \varB
s16\startTextSpan g4.\stopTextSpan \bar "||"
\varC
d2\startTextSpan~ d8\stopTextSpan 
 \bar "|." 
}
\addlyrics { О- ста- на Ко- льо млад до- вец " " 
със две мъ- нич- ки де- чи- ца: " "
Рад- ка и " " Рай- на двен- ки- те }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 184 8)
		}
	}
}
%
\header{
  opus = "ТД-97,2,22"
  tagline = ##f
}


