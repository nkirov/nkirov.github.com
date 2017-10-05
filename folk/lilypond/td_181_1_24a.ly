%{
td_181_1_24a
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 104
\cadenzaOn
f8[( g]) d2^\rtoe f8[( g]) g2. g8.[( a16] \grace { g32[\( a g f] } g4\)
\grace { a16[\( g f] } g4\) a16[ g f8]) f f\noBeam( g4.^\ltoe f8 g16[ a g f])
f8.[( g16]
\bar ""
\grace { f32[\( g f e] } f2.\) \bar "" \grace { g16[\( f e] } f4\) \bar ""
\times 4/5 { g16[ f ees d c]) } r4 \bar "" f f^\ltoe( g2)  \bar "" 
g8 f\noBeam f( g4 f8)  \bar ""
\afterGrace f[(\( { \stdB g\) \stdE } f32 g f ees!] 
\bar ""
f16.[ g32] f[ ees! d ees]) \bar ""
d8 d\noBeam~ d4 d1\fermata( c8) r^\rtoe \bar "" d16[( e^"↓"]) 
f8(~ f2~ f8[ g]) \bar "" g f\noBeam
\bar ""
f4( g4. f8 g16[ a g f])  \bar "" f8[( g] f32[ g f ees! f8] f16[ ees! d c])
d8 d\noBeam~ d2. d1\fermata
 \bar "|." 
s4 \fixB gis,
 \bar "|."  
}
\addlyrics { Рад- ка за во- да о- ти- ва, през зе- ле- нъ ге- рен
ми- на- ва, на ге- ре- нъ па- сът две ста- да, }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 104 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,24"
  tagline = ##f
}


