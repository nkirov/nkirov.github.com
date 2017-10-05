%{
td_179_2_14
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 80
\cadenzaOn
f8 g\noBeam \acciaccatura g a4^\rtoe a8[( s^\ltoe g]) \times 2/3 { g16[( a g } f8^\rtoe]) 
\varA
a\startTextSpan[( g\stopTextSpan])
\parS
g-\parenthesize\prall[( f])
\acciaccatura { f16[ ees] } d4. r8 r4 \bar ""
\override Glissando #'style = #'zigzag
\noteFi \acciaccatura ees!8\glissando f8.^\rtoe f16\noBeam f4
\bar ""
f8.([ ees!16]) \bar "" \acciaccatura { ees!16[ d] } c4  \bar "" d8 d4. d2 r4^\ltoe \bar ""
\acciaccatura f8 g8.-\parenthesize^"↓" g16\noBeam g4 a8([ s^\ltoe g])  \bar ""
\times 2/3 { g16[( a g } f8^\rtoe]) \breathe
\bar ""
f8([ g]) g16.([ a32 g16 f])  \bar "" 
\acciaccatura { f16[ ees!] } d4. r8^\rtoe f8. f16\noBeam f4 \bar ""
\times 2/3 { f16[( g f } ees!8^\ltoe]) \bar "" ees16[( d c8^\rtoe]) \breathe
\bar ""
d8 d4. d2 r4^\ltoe f16[( g a8]~ a4.^\ltoe g8\noBeam) \bar "" g16.([ a32 g16 f]) 
f16.[( g32 f16 ees!] 
\varB
s16\startTextSpan d4.\stopTextSpan) r8
\bar ""
f8 f\noBeam( g16[ f] \times 4/5 { ees!16[ f ees d ees]) }  \bar "" d8\noBeam d~ d2^\ltoe d
 \bar "|." 
s4 \fixB d \fixC
  \bar "|." 
 s16 \clef treble
\varA
s\startTextSpan g4\stopTextSpan \bar "||"
\varB
\acciaccatura { f16\startTextSpan[ ees] } d4.\stopTextSpan
  \bar "|."  
}
\addlyrics { Сно- щи се Сто- ян за- вър- на, тър- гов- лук, пу- сти джи- лип- лик, 
вън на вра- та- та по- хло- па, по- хло- па, о- щи по- ви- ка: Ру- сан- ке, 
ру- са я- бъл- ко }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 80 4)
		}
	}
}
%
\header{
  opus = "ТД-179,2,14"
  tagline = ##f
}


