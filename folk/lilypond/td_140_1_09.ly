%{
sva_140_1_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 100
%\time 2/4
\cadenzaOn
c8([ b]) 
\varA
\acciaccatura b8\startTextSpan c([ b] a[ g\stopTextSpan]) 
\override Glissando #'style = #'zigzag
a2. \acciaccatura a8 c([ b]) 
\acciaccatura b c8.([ b16] a8[ g]) a([ g]) a2~( a8[ \noteFi b\glissando]) 
\hideNotes f8 \unHideNotes g2. r4 
\bar "" 
a8([ g]) \acciaccatura g a4.^\rtoe( b8) g2 a4 a16([ g fis g^\rtoe]) a8([ g]) 
\acciaccatura g8 a2. a 
 \bar "|." 
s4 \fixB fis \fixC
  \bar "|." 
   s16 \clef treble
\varA
\acciaccatura b8\startTextSpan \times 2/3 { c([ b a] } g4\stopTextSpan) 
  \bar "|."    
}
\addlyrics { Скрий- те ма, брай- не, скрий- те " " ма във ва- шта рав- на гра- ди- на }
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
  opus = "ТД-140,1,9"
  tagline = ##f
}


