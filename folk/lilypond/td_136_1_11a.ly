%{
TD_136_1_11a
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 138
  \time 2/4
  \set Score.measureLength = #(ly:make-moment 3 4)
s4 \acciaccatura f8 g4  d 
\set Score.measureLength = #(ly:make-moment 2 4)    
  f g8( f) \grace { f16([ ees] } d2) \acciaccatura ees8 f4
f8\prall( ees) d2 f4 \acciaccatura f8 g4 
 \gliss
 \set Score.measureLength = #(ly:make-moment 3 4)  
 g4 \breathe \noteFi f4\glissando \hideNotes c4 \unHideNotes 
 \set Score.measureLength = #(ly:make-moment 2 4)  
d2 d8( c) d4 d2 
 \bar "|." 
}
\addlyrics { Де са йе чу- ло- ви- дя- ло, зъл- ва бу- ля " " си да жи- лей }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}

\header{
  opus = "ТД-136,1,11"
  tagline = ##f
}


