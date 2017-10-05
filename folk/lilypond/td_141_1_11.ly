%{
td_141_1_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 4 = 144
\cadenzaOn
\phrasingSlurDown
\par
\ii \parenthesize g8
\override Glissando #'style = #'zigzag
\acciaccatura b c4 c1 c16[( d] c32[ d c b] c16.[ d32 c16 b]  c16.[ d32 c16 b])
b[( c]) c[( d c b] a2) 
\bar ""
a16[( b8.] \afterGrace b2.\( { a16[ b]\) } c4.\glissando b8) \bar ""
\afterGrace b4(\( { a16[ b]\) } c[ b a8]) a16[( g8.]~ g2.) r4 g4 g8[( a])
\bar ""
\parS
a2.( b16[ a g a] \grace { b16[\( a] } g2.\)) c4-\parenthesize^\ltoe 
b(~ b16[a b a]) a8. \bar ""
g16\noBeam~ g2 g2.( \grace { a16^"↓"[\( g] } f4\)) r
\bar ""
g4 g8[( a]) 
\varA
a2\startTextSpan( g16[ a] \grace { b[\( a] } g2\stopTextSpan\)) 
\acciaccatura b8 c4 b(~ b16[ a b a]) a8. g16\noBeam~ g2 g1
 \bar "|." 
s4 \fixB cis, \fixC
 \bar "|."  
 s16 \clef treble
\varA
a'2\startTextSpan( b16[ a g a] \grace { b[\( a] } g2\stopTextSpan\)) 
 \bar "|."  
}
\addlyrics { и Брай- не ле, ка- ра Ди- мит- ре, не- мой ми че- към за- хва- ща, 
че са я вре- мя мрък- на- то }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-141,1,11"
  tagline = ##f
}


