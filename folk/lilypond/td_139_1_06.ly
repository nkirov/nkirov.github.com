%{
sva_139_1_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 104
%%\time 2/4
\cadenzaOn
\phrasingSlurDown
a4 
\varA
s4\startTextSpan g2.\stopTextSpan 
a4.\mordent( \grace { b16[\( a] } g8\)) \acciaccatura g8 a4
\afterGrace g4\(( { \stdB a8\) \stdE } \acciaccatura { g16[ f] } e4) e 
\parS
e4.-\parenthesize^\rtoe( d8) 
g4\mordent( a16[ g f8]) 
\par
\parenthesize r4
\acciaccatura f8 g[( f])  
\bar "" \break
\varB
s4\startTextSpan e2.\stopTextSpan 
e2 \breathe
\varC
g8\startTextSpan([ f\stopTextSpan]) 
e2 d4 e2. e1~ e2
 \bar "|." 
 s4 \fixB gis \fixC
 \bar "|." 
 s16 \clef treble
\varA
s4\startTextSpan g2\stopTextSpan \bar "||"
\varB
s4\startTextSpan e2\stopTextSpan \bar "||"
\varC
\acciaccatura f8\startTextSpan g4\stopTextSpan 
 \bar "|." 
}
\addlyrics { Ку- ме лье, кум Ко- ста- ди- не, пий ви- но, не о- пи- вай ся }
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
  opus = "ТД-139,1,6"
  tagline = ##f
}


