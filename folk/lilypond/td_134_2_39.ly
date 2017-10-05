%{
eng_134_2_39
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
%%\time 2/4
\cadenzaOn
\acciaccatura cis8 d4 \slurDown \acciaccatura { d16[ e d cis] } \slurDown \afterGrace b2.( { a16[ b]) } 
\acciaccatura { a16[ b a] } g4 g8([ a]) \slurDown a([ b~] b2.)
\acciaccatura cis!8 d4 \slurNeutral d16\prall([ cis b8] cis16[ b cis8]) a8\prall([ g16 fis] g4) 
a4\prall \acciaccatura { a16[ g fis!] } g1 r4 r 
#(set-accidental-style 'forget)
\bar ""
\acciaccatura cis!8 d4 \acciaccatura { d16[ e d cis] } \slurDown \afterGrace  b2( { \stdB a8) \stdE }
\acciaccatura { a16[ b a] } \afterGrace g2.( { fis!16[ e f)] }
\acciaccatura g8 a4 \acciaccatura { a16[ b a] } g2. r4 
a4 \acciaccatura { a16[ b a] }  g4^\rtoe g8.([ fis!16] e4) e e1~ e2 
 \bar "|." 
 s4 \fixB aes,
  \bar "|." 
}
\addlyrics { Хой, Йе- ньо, Йе- ньо, чар- ви- ва жа- ба, чар- ви- ва жа- ба 
приз бур- чак бя- га }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,39"
  tagline = ##f
}


