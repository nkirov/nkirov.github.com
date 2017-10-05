%{
td_140_1_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 132
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
a8 a4. \acciaccatura a8 c1(~ c2 d4\glissando 
\noteFi c16[\glissando \noteFi b\glissando \noteFi a\glissando b]
\noteF c[\glissando \noteF b\glissando \noteF a\glissando g]~ g4) c8[( b]) c2^\rtoe 
\acciaccatura b8 c8.[( b16] a8[ g]) 
\bar ""
a1( b4) a8[( g]~ g2.~ g2) r4 a4 a2 \noteF \acciaccatura a8\glissando c1( \afterGrace d2\( { c16[ b]\) }
c16[ d c b] a4) c8 c4.
\bar ""
c8.[(\mordent b16]) a1~ a~ a4 r g( a) a1~ a
 \bar "|." 
s4 \fixB ees
  \bar "|." 
}
\addlyrics { Ка- лин-  ка къл- не Ка- ра- джа: Бре, да про- ле- тиш, Ка- ра- а- джа }
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
  opus = "ТД-140,1,11"
  tagline = ##f
}


