%{
td_140_1_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 160
%\time 2/4
\override Glissando #'style = #'zigzag
\cadenzaOn
\acciaccatura b8 c4 c8( d4 c8) b4( a) g a2 \noteFi \acciaccatura b8\glissando d[( c])
b4( a) b1~ b4 r
\bar ""
b c( d8[ c]) b4( a)
g \bar "" 
\varA
s16\startTextSpan a2\stopTextSpan 
b4 \acciaccatura a8 g4( a) a1~ a4
 \bar "|." 
s4 \fixB e \fixC
  \bar "|." 
 s16 \clef treble
\varA
s16\startTextSpan a2.\stopTextSpan 
\bar "|." 
}
\addlyrics { Ян- ке ле, дюл- бер Габ- ров- ко, от зе- мя ли си ник- на- ла }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,16"
  tagline = ##f
}


