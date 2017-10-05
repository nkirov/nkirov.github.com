%{
sva_113_1_12
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 4 = 144
%%\time 2/4
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkCdot #"144-152"
\cadenzaOn
\override Glissando #'style = #'zigzag
g16[( aes]) b8\noBeam b16[( c]) b8.[(\glissando aes!16]) g4.( aes!32[ g f16])
g16[( s^\ltoe aes!]) b8[( c32^\ltoe b a!16]) b4.\prall( a16[ b] c4) r8
 \bar ""
g16[( a!^"↓"]) b8\noBeam b16[( c)] b8.\prall[( a!16]) \acciaccatura b8 c8[( d32 c b16])
b16([ aes^"↑" g f])  \breathe g16\noBeam g~ \afterGrace g2.( { \stdB f8) \stdE } r8
 \bar ""
 c'8\noBeam d16[( c]) c8\noBeam b8.([ a!16]) \acciaccatura b8 c8[( d32 c b c]) b32[( c b a!^"↓"] g16[ f])
 g8\noBeam g2.
 \bar "|." 
 s4 \fixB c,
  \bar "|." 
}
\addlyrics { На- хо- ди ли са, Злат- ки мо, на- но- си ли са, Зла- тки мо,
на твой- та ху- бос  и мла- дос }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 69 4)
		}
	}
}
%
\header{
  opus = "ТД-113,1,12"
  tagline = ##f
}


