%{
td_139_1_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 160
\cadenzaOn
\acciaccatura d8 e4^\rtoe d cis d \acciaccatura d8 e1~ 
\afterGrace e\( { \stdB d8\) \stdE }
d4 d16\prall[( c b c] d[ c b8]~ b4) b1~ b2 r4 r
\bar ""
\acciaccatura b8 c4 c c1 \bar "" b8[( c]) \bar "" d8.[( e16] d4 c) d \bar ""
c8.([ d16] c4 b) \bar "" b16[( c b a] g4) r
\bar ""
g4 a^\ltoe a bes\mordent \bar "" c16[( bes! a bes] c[ bes a g]~ g4) \bar ""
g8 a\noBeam a1~ a r4 r
\bar ""
\acciaccatura b8 c c\noBeam c2. \bar "" \acciaccatura c8 d4 d16[( e d c]~ c4) 
c c\prall( b) b4. r8 r4
\bar ""
g4 a8.\noBeam^\rtoe a16 bes!4 \bar "" 
\acciaccatura c8 bes!4.( a8) g\noBeam a4.\bar ""
a1~ a4 r b8 c\noBeam~ c1
\bar ""
b8[( c b c ] c[ a16 b] c[ b a g]) r4 \bar ""
a8 a\noBeam~( a2 g8\prall[ f^"↑"] g16[ a g f])
r4 e8.^\rtoe e16\noBeam \bar "" e1~ e2 r4 r
\bar ""
b'4 c1~( c4 b8[ c] d8.[ e16] d8[ c]) \bar "" 
b4.( c16[ d] c[ b a g]~ g8\noBeam) a a4( g8)
g\prall[( f]) f([ e]) e1~ e4
 \bar "|." 
s4 \fixB cis
 \bar "|."  
}
\addlyrics { Ра- но ми То- дор под- ра- ни, ра- но ми, на ден Гьор- гьов- ден,
ни- ви- те да си о- би- да, ни- ви и рос- ни ли- ва- ди. 
Ко- га са на- зад по- вър- на, Е- лен- ка пи- та То- до- ра:
Лю- бе То- до- ре, То- до- ре }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,24"
  tagline = ##f
}


