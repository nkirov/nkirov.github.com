%{
td_113_1_19
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%%\tempo 8 = 168
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkDdot #"168-172"
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
c8\noBeam c16[( b]) a1(\glissando \times 2/3 { b16[ c\prall b] } c\prall[ b] g1\fermata) r4
a16[( b]) \noteFi c[(\prall\glissando b^"↓"]) a2.( b32[ a b a g8] a16[ g\prall f!8)]
\bar ""
g8 a2.( \grace { bes16[\( a] } g4\)) r8 a16\noBeam a\prall^\markup{ \flat }[( g8]) 
g16[( a] \grace { g[\( a g f] } g2\) a4 bes!32 a g a] g16[ f]) r8. f16\noBeam g[( a])
\bar ""
g4( a32[ g f e] f[ g f e]) d16\noBeam d~( d2. c8) r8 a'\noBeam a16[( g]) 
g[( a] \grace { g16[\( a g f] } g2\) \afterGrace a4\( { \stdB g8\) \stdE } 
\grace { a16\([ g] } f8\))
\bar ""
f16\noBeam g32[( a]) g4( a32[ g f e] f[ g f e]) d16\noBeam d~ d2.
 \bar "|." 
s4 \fixB e
  \bar "|." 
}
\addlyrics { Гли- да- ча хо- ди из се- ло, гли- да- ча, ин- дже- кюв- ски- я, 
из се- ло и по се- ла- та }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 168 8)
		}
	}
}
%
\header{
  opus = "ТД-113,1,19"
  tagline = ##f
}


