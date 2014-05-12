%{
sva_096_2_35
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 108
%%\time 2/4
\cadenzaOn
g8\noBeam g g8([ a~] \afterGrace a2\( { \stdB b8\) \stdE } c8[ b]) c16([ b]) a[( b])
c8([ b\prall]) g8\noBeam 
g( a2~ \afterGrace a8[\( { \stdB b8\) \stdE } c16 b]) \bar "" c16([ b]) \bar "" a([ b]) \bar ""
\afterGrace c8([\( { \stdB b8\) \stdE } c16 b]) g8\noBeam g a4.( b8) a8\noBeam a8~ a1
\bar "|." 
s4 \fixB cis, 
\bar "|." 
}
\addlyrics { Ви- че- ряй, Ла- ло, със ма- ма, със ма- ма слад- ка ви- че- ря }
%
\layout {
   \context { \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 108 4)
		}
	}
}
%
\header{
  opus = "ТД-96,2,35"
  tagline = ##f
}


