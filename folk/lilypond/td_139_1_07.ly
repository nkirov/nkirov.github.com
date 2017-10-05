%{
sva_139_1_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 104
%%\time 2/4
\cadenzaOn
\override Glissando #'style = #'zigzag
a4 
\varA
s4\startTextSpan g2.\stopTextSpan 
a4\mordent( b16[ a g8]) a4\mordent\glissando 
\afterGrace g4\mordent(\( { \stdB a8\) \stdE } g16[ f e]) e4 e4.( d8) g4\mordent( a16[ g f8^"↑"]) 
 \breathe \acciaccatura fis8 g4 e2 e r4 
\bar "" \break 
\varB 
 \acciaccatura fis!8\startTextSpan g([ fis!\stopTextSpan]) s8
\varC 
 \acciaccatura { g16\startTextSpan[ f] } e2\stopTextSpan 
 d4 
\varD 
s4\startTextSpan e2.\stopTextSpan 
 e1~ e4
 \bar "|." 
 s4 \fixB gis \fixC
  \bar "|." 
 s16 \clef treble
\varA
s4\startTextSpan g2\stopTextSpan \bar "||"
\varB 
 \acciaccatura fis!8\startTextSpan g4\stopTextSpan \bar "||"
 \varC 
 s4\startTextSpan e2\stopTextSpan \bar "||"
 \varD 
s4\startTextSpan e2\stopTextSpan 
 \bar "|."   
}
\addlyrics { Скрий- те ма, брай- но, скрий- те ма във ва- шта рав- на гра- дин- ка }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 104 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,7"
  tagline = ##f
}


