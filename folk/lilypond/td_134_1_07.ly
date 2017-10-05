%{
TD_134_1_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 112
%\time 5/16
\cadenzaOn
\phrasingSlurDown
\par
\iii \parenthesize a8 
\parG
\override Glissando #'style = #'zigzag
c4 
\varA
\acciaccatura \parenthesize c8\startTextSpan \afterGrace d2\stopTextSpan(\( { c16[ b]\) } c[ d c b]) a2^\rtoe c8[( d]) 
\acciaccatura { d16[ c b] } c1( d2) d8[( c]) d[( c16 b] \noteFi c8[\glissando a])
a1(~ a4 g8) r r4
\bar ""
a4 c(~ c16[ b a b]) \acciaccatura { c[ b] } a2 a8\prall[( g]) c4(~ c16[ b a b c)]
b8[( a]) a1 r4 r \acciaccatura g8 a2 a1~ a4 \stemUp d2
 \bar "|." 
s4 \fixB bes, \fixC
 \bar "|." 
 s16 \clef treble
\varA
\stemNeutral \acciaccatura \parenthesize c'8\startTextSpan d4.\stopTextSpan
  \bar "|." 
}
\addlyrics { и За- спа- ла бя- ла То- дор- ка на- край мо- ре- то, край- че- е- то, и }
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
		tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,7"
  tagline = ##f
}


