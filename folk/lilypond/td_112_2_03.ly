%{
sva_112_2_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 144
%%\time 2/4
\cadenzaOn
c8\mordent d16\prall([ c]) c8 \slurDown \afterGrace b4( { a16[ b c]) } \slurNeutral
g2( \times 2/3 { a16[ g f]) } r8 \acciaccatura g8 \afterGrace a2\fermata( { \stdB g8) \stdE }
c8\mordent( c32[ b a b]) a2( b32[ a g a] b[ a g a] b[ a g f e]) r4 
 \bar ""
\override Glissando #'style = #'zigzag 
\noteFi \afterGrace g8(\glissando { \stdB c) \stdE } c32[( b]) c16\noBeam 
\acciaccatura { b16[ c b a] } g2 r8 \breathe c8\mordent( d32[ c b c] d[ c b16])
a32([ b16.] 
\phrasingSlurDown \afterGrace b8\( { a16[ g a]\) } b32[ a g16]) g\noBeam g~ g2\fermata
 \bar "|." 
 s8 \fixB a
 \bar "|."  
}
\addlyrics { На- хо- ди ли са, Ги- но мо, ба- щи- ни рав- ни дво- ро- ви }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 144 8)
		}
	}
}
%
\header{
  opus = "ТД-112,2,3"
  tagline = ##f
}


