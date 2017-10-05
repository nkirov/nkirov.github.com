%{
sva_140_2_40
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
%\time 2/4
\override Glissando #'style = #'zigzag
\cadenzaOn
\phrasingSlurDown
d8([ c^"↑"]) d([ c b a]) b2. \noteFi \acciaccatura c8\glissando d[( c])
d\mordent[( c b a]) b4 \afterGrace b2.(\( { c8[ b]\) } a4) b2. r4^\rtoe
\bar "" \break
b8([ a]) b4.( \times 2/3 { d16[ c b)] } a2. \acciaccatura c8 b4
\times 2/3 { b8([ a b] } a4) b b2.( d16[ c d c]) b1
 \bar "|." 
s4 \fixB g
  \bar "|." 
}
\addlyrics { За- гла- вил са йе млад Сто- ян, за- гла- вил са йе, за- же- нил }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-140,2,40"
  tagline = ##f
}


