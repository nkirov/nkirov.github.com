%{
td_138_2_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 100
\cadenzaOn
\phrasingSlurDown
\acciaccatura b8 c4 c8 c\noBeam b2. \times 2/3 { c8[( b a] } g2.~ g2) r4 \bar "" 
g a8[( b]) \bar "" c4.( \grace { d16[\( c] } b8\)) \bar "" b2.
\bar ""
c8[( b]) a\prall[( g]) g1 r4 \bar "" g 
\varA
g8\startTextSpan g\stopTextSpan\noBeam
\varBC
\acciaccatura g\startTextSpan a4.( \grace { bes16[\( a] } g8\) fis4 ees8[ d]) d2.\stopTextSpan r4
\bar ""
g4 a8[( b]) \bar ""
\varD
\afterGrace c2\startTextSpan(\( { d16[ c]\) } bes4\stopTextSpan) \bar ""
\parS
a( g) fis!-\parenthesize\prall ees!8[( d]) d1 r4 \bar ""
g g8 g\noBeam \acciaccatura g a4( bes!16[ a g8] fis!4\prall ees!8[ d])
\bar ""
d2. r4 g a8[( b]) c2( bes4) \bar "" a( g) fis!\prall \bar "" ees!8[( d]) d1
 \bar "|." 
s4 \fixB a \fixC
 \bar "|." 
\break %%  s16 \clef treble
\varA
\times 2/3 { g'8\startTextSpan g\noBeam g\stopTextSpan } \bar "||"
\varB
\acciaccatura g8\startTextSpan a4( bes!16[ a g8] fis4\prall ees8[ d]) d2.\stopTextSpan \bar "||"
\varC
\acciaccatura g8\startTextSpan a4.( g8 fis!4 ees8\noBeam) d8~ d2\stopTextSpan \bar "||"
\varD
c'2\startTextSpan( bes!4\stopTextSpan) 
 \bar "|."  
}
\addlyrics { Ах, ле- ле, До- не, ле- ле, жи- ва раз- дя- ла, я ще да и- да
го- ре- до- лу, към Стам- бол, там ще да сто- я до две, до три го- ди- ни }
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
  opus = "ТД-138,2,7"
  tagline = ##f
}


