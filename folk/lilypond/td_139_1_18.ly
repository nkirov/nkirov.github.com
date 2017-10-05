%{
sva_139_1_18
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 132
%%\time 2/4
\cadenzaOn
\parG
\acciaccatura \parenthesize c8
d4 d cis d d1~ d2 d8([ c)] d8\mordent([ c16 b] c2.) \acciaccatura { b16[ c b] } a4 r r
a4 b b2. d8([ c)] d16[( c b c] d[ c b c]) b8\prall([ a]) b16[( a gis a]) gis!4 r
\bar "" 
a4 a a a a2 b8\prall([ a]) \acciaccatura { b16[ a] } gis!4 gis!1~ gis2 r4 r
\parS
d'4 d cis! d d2. d8([ cis]) \acciaccatura { d16[ cis b] } cis2 b4-\parenthesize\prall( a) r
\bar "" 
a4 b b2 cis4\mordent \acciaccatura c8 d16[( c b c] d[ c b8]) b8\prall[( a)] \acciaccatura b8 a([ gis!)] gis!4 r4
\acciaccatura gis!8 a a\noBeam a a\noBeam a2 b16[( c b a]) \acciaccatura { b16[ a gis!] } a4 gis!1 r4 r
\bar "" 
a4 b8([ c)] d1(~ d8[ c] d16[ c b c] d[ c b8] a4) a gis!( f!8) r8^\rtoe f\noBeam f( e4) e1~ e2 r4 r
\bar ""
a4 b8([ c)] \phrasingSlurDown \afterGrace d1(\( { \stdB c8\) \stdE } 
\phrasingSlurNeutral d16[ c b c] d[ c b8] a8) r a\noBeam a( gis!4) f!8 e4. e1~e
 \bar "|." 
s4 \fixB d 
  \bar "|." 
}
\addlyrics { Две Нед- ки, ма- мо, две Нед- ки, две Нед- ки, две бра- тов- чед- ки
е- дин дра- гов- ник лю- би- ли, е- дин дра- гов- ник, И- ван- чо.
По- мал- ка Нед- ка, ху- ба- ва, тя ми за во- да о- ти- ва,
на пъ- тя Нед- ка по- срещ- на ней- но- то лю- бе И- ван- чо }
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
  opus = "ТД-139,1,18"
  tagline = ##f
}


