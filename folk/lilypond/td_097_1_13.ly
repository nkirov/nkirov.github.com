%{
eng_097_1_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 80
%\time 2/4
\cadenzaOn
\slurDown
\afterGrace c4( { d16[ c b)] }  a4 
\slurNeutral
a2~\prall( a8[ b16 c]) c16([b)] a([ b)] c8([ b\prall)] g8\noBeam g16( a~ a1) r4 
g16[( a]) a([ g~] g2~ g8[ a]) a8([ g~] g2.\fermata)
 \bar "|." 
 s4 \fixB c,
  \bar "|." 
}
\addlyrics { Зла- то льо, Зла- то льо, ми- ла, ле- ли- на }
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
		tempoWholesPerMinute = #(ly:make-moment 80 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,13"
  tagline = ##f
}


