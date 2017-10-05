%{
td_180_1_02
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 116
\cadenzaOn
e8[( f]) f[( g]~ g1 \times 2/5 { aes16[ g f e f] } g32[ f e16]) c8
e^\ltoe[( f^\rtoe]) f^\ltoe[( g^\rtoe]~ g2.~ g8[ f]) f^\ltoe[( g^\rtoe]) 
\afterGrace g4(\( { f32[ g f ees]\) } \afterGrace f1\( { ees!16[ d]\) } e32[ f e d] 
c4^\rtoe) \bar "" c1\fermata r4 r
\bar ""
c4 \afterGrace f8[(\( { \stdB ees!\) \stdE } f]~ f2) f8[( s^\ltoe ees!]) f[( s^\ltoe g])
g16[( f8 ees!16] f8[ g16 f] ees!16[ d^\ltoe c8]) d8 d\noBeam~ d1\fermata d2.
 \bar "|." 
s4 \fixB e
 \bar "|."  
}
\addlyrics { Слън- це- то треп- ти да зай- де, Ди- ми- тър че- към за- хва- ща }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-180,1,2"
  tagline = ##f
}


