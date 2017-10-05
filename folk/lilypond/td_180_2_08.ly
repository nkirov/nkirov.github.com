%{
td_180_2_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 100
\cadenzaOn
\phrasingSlurDown
\parS
g4-\parenthesize\prall g8[( a]~ a1) a2(~ a8[ g]) a[( bes]) 
\acciaccatura { c16[ bes!] } a2.( bes!16[ a g8] a[ g] f1) r4^\rtoe f8[( g])
\bar ""
g8[( a]~ a2.~ a8[ g]) \bar "" 
\acciaccatura f \afterGrace g2.\( { f16[ g]\) } \bar ""
f8[( e^"↓"]) d1\fermata( c4) r \bar ""
f g8[( \afterGrace a]\( { g\) } a2 bes!16[ a g8])
\bar ""
\varAB
\afterGrace g2.\startTextSpan\( { f16[ g]\stopTextSpan\) } \bar ""
f8[( e]) \bar "" d2. r4 \bar "" f8[( g]) 
\afterGrace g4(\( { \stdB f8\) \stdE } \afterGrace g2)\( { f16[ e]\) }
f2(~ f16[ e d c]) d4 d1\fermata
 \bar "|." 
s4 \fixB c \fixC
  \bar "|." 
 s16 \clef treble
 \varA
\afterGrace g'2.\startTextSpan\( { a32[ g f g]\stopTextSpan\) } \bar "||"
\varB
g8\startTextSpan[( a] \grace { g32[\( a g f] } g2\) a16[ g f8\stopTextSpan])
 \bar "|." 
}
\addlyrics { Ой, Я- но, Йен- ке, Бог- дан мах- лен- ке, бог да у- би- е таз
твой- та май- ка }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
%
\header{
  opus = "ТД-180,2,8"
  tagline = ##f
}


