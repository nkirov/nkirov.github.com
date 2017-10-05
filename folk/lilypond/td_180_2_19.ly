%{
sva_180_2_19
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 168
\time 3/8
%\cadenzaOn
\acciaccatura f8 g g4 | a16([ bes]) a8.([ g16]) | g32([ f16.~] f8.^\rtoe[ e16]) |
\parS
f16([ g]) g4 | g8\prall\noBeam( f8.-\parenthesize^\rtoe[ e16]) | 
g8 f4^\ltoe | f16([ e]) e[( d8.^\ltoe]) | d4.~ | d^\rtoe | d16\noBeam d~ d4^\ltoe | d r8
 \bar "|." 
 s8 \fixB b4
 \bar "|."  
}
\addlyrics { Ше- та- лай Ра- да, Ра- до мо, по свек- ро- ви си дво- ро- ве }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
  opus = "ТД-180,2,19"
  tagline = ##f
}


