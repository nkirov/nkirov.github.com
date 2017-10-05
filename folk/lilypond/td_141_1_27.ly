%{
sva_141_1_27
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 4 = 100
%\time 2/4
\cadenzaOn
\override Glissando #'style = #'zigzag
\acciaccatura c8 d4 c1 c4.( d8\noBeam c[ b]) c[( b)] c2\glissando( b4^\ltoe) a2.
\parG
a4.( b8\noBeam c[ b]) c2( bes4) r4 r8 \parenthesize g8\noBeam
\bar "" \break
\par
c([ bes!]) a2. a2. r8^\rtoe \parenthesize g8\noBeam
c([ g]) c2( d16[ c b8]) a4\prall( g^\rtoe) a4.( b8\noBeam c[ b]) a1 f'2
 \bar "|." 
 s4 \fixB a,,
 \bar "|."  
}
\addlyrics { Скрий- те ма, ма- мо, скрий- те ма "(ъ)" в'на- ша- та "(ъ)" 
рав- на гра- дин- ка и }
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
  opus = "ТД-141,1,27"
  tagline = ##f
}


