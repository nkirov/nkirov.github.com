%{
sva_139_1_09
%}


\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 4 = 92
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkCdot #"92-96"
\cadenzaOn
\phrasingSlurDown
g4 a2 b4 \acciaccatura b8 a4( \grace { b16[\( a] } g4\)) c4
\slurDown \afterGrace b(\( { c16[ b\)] } \grace { c16[\( b] } a4\))
\varA
a16\startTextSpan[( g8.\stopTextSpan]) 
a2 \acciaccatura a8 b4 \bar ""
\break
\varBC
\acciaccatura b8\startTextSpan a4( g8) r8\stopTextSpan s16
 a4 a1~ a4 
 \bar "|." 
 s4 \fixB bes \fixC
 \bar "|." 
 s16 \clef treble 
\varA
s8\startTextSpan g4\stopTextSpan \bar "||" 
\varB
bes16\startTextSpan([ a bes a] g4\stopTextSpan) \bar "||" 
\varC
a4\startTextSpan g\stopTextSpan
 \bar "|."  
}
\addlyrics { Из- ле- зи, из- ле- зи, ти, мом- ко- ва май- ко  }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 94 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,9"
  tagline = ##f
}


