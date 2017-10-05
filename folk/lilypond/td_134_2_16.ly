%{
TD_134_2_16
%}

\include "td-preamble.ly"
\include "makam.ly"

\score {
\relative c'' {
\tempo 4 = 80
%\time 5/16
\cadenzaOn
\phrasingSlurDown
c2 c16[( d c\prall b] c[ d c b]) c8[( b\prall] a4) c16[( d])
d8( \grace { c16[\( d c d] } c2\)~ c8[ d\mordent] c32[ d c b] c32[ d c b])
a16[( b])
\bar ""
c8( \grace { b16^↓[\( c b a] } bfk4\) \afterGrace c4\( { d16[ c b]\) }
c[ bfk! a bfk]) \afterGrace a1\( { bfk!16[ a g]\) } r4 r c4 
\varA
c8\startTextSpan[( bfb\stopTextSpan]) 
\acciaccatura bfb!8 a4
\bar ""
bfb!8 c\noBeam(\( \grace { bfk16^↑[ c bfk a]\) } bfk!4 \afterGrace c)\( { d16[ c b]\) }
b!8 a\noBeam~ a4 a1~ a2
\bar "||"
\acciaccatura b8 c2 c16[( d c\prall b] c[ d c b]) c[( b\prall a8^\rtoe]) c16[( d]) 
d8( \grace { c16[\( d c b] } c2\) \times 2/3 { d16[ c d } c b] c[ d c b])
\bar ""
a16[( b]) c8( b32^↓[ c b a bfk8] c16[ bfk! a bfk]) \afterGrace a1\( { bfk!16[ a g]\) }
r4 r c b16[( c] \grace { b16[\( c b a] } bfk!8\)) a4
\bar ""
bfb4( \afterGrace c)\( { d16[ c b]\) } b!8 a\noBeam~ a4 a1~ a2
 \bar "|." 
s4 \fixB d, \fixC
 \bar "|." 
s16 \clef treble
\varA
bfb'32\startTextSpan[( c bfb] a[ bfb\stopTextSpan]) 
 \bar "|."  
}
\addlyrics { Ка- ли- но, Рус- ке бу- ли- на, що тъ- чеш тън- ки да- ро- ве,
хем тъ- чеш, Рус- ке, хем пла- чеш, що ни тъ- чеш  да пе- еш }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 80 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,16"
  tagline = ##f
}


