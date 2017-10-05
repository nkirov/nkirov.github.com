%{
td_136_1_10
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 8 = 168
\cadenzaOn
d8^\rtoe f\noBeam^\ltoe \acciaccatura { f32[ g f e] } f2\fermata( g~ g16[ f] f4. ees16[ d] c8) r16
\par
\ii \parenthesize g' g8\noBeam f16\noBeam f1~ \afterGrace f8\noBeam\( { \stdB ees!\) \stdE } d\noBeam d2\fermata( c\mordent\fermata) r8\fermata
\bar "" %%2
f8^\ltoe g\noBeam^\rtoe g16[( f32 e] f2\fermata ees16[ d] c8) r16 \bar ""
g' g8\noBeam f f32[( ees! d16]) d8 d2.\fermata r8 r
\bar "" %%3
g8 g4. g16[( a]~ \afterGrace a4.\( { g16[ f]\) } g4. f8) r \bar ""
d f4 g8[( f16]) g g\noBeam~( g[ f32 ees^"↓"] 
f2\fermata ees!16[ d] c8) r
\bar "" %%4
f8 g16\noBeam g(~ \afterGrace g8\noBeam\( { f16[ ees^"↓"\)] } f4 ees!16[ d] c) r16^\rtoe \bar ""
f f\noBeam f[( ees!)] d 
d\noBeam~ d1\fermata r4\fermata
\bar "" %%5
g8 g4. \bar "" g16[( a]~ \afterGrace a4.\( { g16[ f]\) } g4. f8) r \bar "" 
d f4 g8[( f]) g  \bar ""  g16([ f32 ees^"↓"] f2.\fermata ees!16[ d] c[ bes]) r8
\bar "" %%6
f'8^\ltoe g\noBeam^\rtoe \bar "" g(~ \afterGrace g\noBeam\( { f16[ ees\)] } f4 ees!16[ d] c) r16^\rtoe \bar ""
f f\noBeam f[( ees!)] d8^\ltoe \bar "" 
d4 d2( c\fermata) r8
\bar "" %%7
g'16 g\noBeam  \bar "" g(~ \afterGrace g\noBeam\( { f16[ ees\)] } f4 ees!16[ d] c) r16^\rtoe \bar ""
f f\noBeam f32[( ees! d16]) d \bar "" 
d\noBeam~ d2\fermata r8 r r
\bar "" %%8
g16 g\noBeam~ g4 g16([ a]~ \afterGrace a4.\( { g16[ f\)] } g4.) r8 \bar ""
d f4 g16[( f]) g \bar "" g\noBeam~( g[ f32 ees] f2\fermata
ees!16[ d] c) r16
\bar "" %%9
r16 f f[( g]) \afterGrace g8(\( { f16[ ees\)] } f4 ees!16[ d] c) r16^\rtoe f f\noBeam f[( ees!]) d 
d\noBeam~( d1\fermata c2\fermata) r8
\bar ""
f8 g\noBeam \afterGrace g(\( { f16[ ees]\) } f4 ees!16[ d] c8\noBeam) r16^\rtoe
f16 f\noBeam f[( ees!]) d d\noBeam~ d1\fermata
 \bar "|." 
s4 \fixB g,4 
 \bar "|."  
}
\addlyrics { Слън- ци- то "(а)" треп- ти, за- хож- да, Ми- тьо са от Сли- вен
за- връ- ща, тоз Ми- тьо, тоз ди- ли Ми- тьо, тоз Ми- тьо, тоз ди- ли Ми- тьо, 
на- хлю- пял кал- пак до веж- ди и си кон- чи- то раз- вож- да- ши,
йед- но си пис- мо чи- те- ши. Ми- тьо- ва ма- ма ду- ма- ши:
Бре Ми- тьо, бре ди- ли Ми- тьо, 
що по двор, Ми- тьо, ти хо- диш }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 168 8)
		}
	}
}
%
\header{
  opus = "ТД-136,1,10"
  tagline = ##f
}


