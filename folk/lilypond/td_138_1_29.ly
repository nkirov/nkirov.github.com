%{
td_138_1_29
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 138
\cadenzaOn
\phrasingSlurDown
g8\noBeam 
\varA
a\startTextSpan\noBeam b\stopTextSpan 
c\noBeam 
\varB
\afterGrace c2\startTextSpan(\( { b16[ c]\) } d16[ c b8\stopTextSpan]) 
d8
\varC
\acciaccatura { d16\startTextSpan[ c] } 
\afterGrace b2(\( { a16[ b]\) } c32[ b a16])
\acciaccatura { a16[ b a g] } a2. r4\stopTextSpan
\bar ""
a8 d\noBeam a a\noBeam a4 \bar "" b8\noBeam \bar "" g16.[( fis32 e16 fis]) g8 r \bar ""
g a\noBeam fis! \bar "" g\noBeam g4 \bar "" a8 g16[( fis! e fis])
\bar ""
g2~ g8 r g a[( b]) \bar "" c2(~ c8 d16.[ e32 d16 c] b4. \bar "" c32[ b a b] c[ b a g]) r8 
\bar ""
\acciaccatura a8 b4 a16\prall[( g]) \acciaccatura g8 \bar "" a4.( b32[ a g fis!] 
g[ a g fis!]) \bar "" e8 e2. r4 r \bar "" g8 a[( b])
\bar ""
c2(~ c8 d8.[ c16] b4. c32[ b a b] c[ b a g]) r8 \bar ""
\acciaccatura a8 b
a16\prall[( g]) \bar "" \acciaccatura g8 \afterGrace a2(\( { g16[ fis!]\) } 
g32[ a g fis!])
\bar ""
e8 e2. r8 \bar "" a b\noBeam g a\noBeam \afterGrace a2(\( { g16[ fis!]\) }
g32[ a g fis!]) \bar ""
\varD
e8\startTextSpan^\rtoe e\stopTextSpan\noBeam 
e2.
 \bar "|." 
s4 \fixB b \fixC
 \bar "|." 
\break %%s16 \clef treble
\varA
a'8.\startTextSpan\noBeam b16\stopTextSpan \bar "||"
\varB
c2\startTextSpan( d32[ c b c] d[ c b16\stopTextSpan]) \bar "||"
\varC
\acciaccatura { d16\startTextSpan[ c] } 
b4.( c32[ b a b] c[ b a16]) a[( b] \grace { a16[\( g] } a2\)~ a8) r\stopTextSpan \bar "||"
\varD
e8\startTextSpan e\stopTextSpan\noBeam^\ltoe 
\bar "|."  
}
\addlyrics { Как- во йе чу- до ста- на- ло във Ес- ки Зах- ра го- ля- ма!
За- же- нил са я, за- же- нил от Зах- ра Сте- фан да- ска- ла: 
ни- де- ля "с бе-"
ли вен- чи- ла, пон'- дель- ник жи- ва раз- де ла }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,29"
  tagline = ##f
}


