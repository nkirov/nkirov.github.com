%{
TD_136_1_11
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
\break
\set Score.measureLength = #(ly:make-moment 3 4)  
  s4^"II" \acciaccatura f8 g4 d
\set Score.measureLength = #(ly:make-moment 2 4)     
  g8( f) f( ees) d2 g8( f) f( ees) d4.( c8) d4 
  \acciaccatura d8 f4 g f8( ees) d2 d8 d4.^\ltoe d4 r4
 \bar "|." 
\break
 d4^"III" f g f8( ees) d2 g8( f) f(ees) d4.( c8) d4 f g4 f8( ees) d2 d4^\ltoe d^\rtoe d r4  
\bar "|."  
 s4 \fixB gis, 
\bar "|."

}
\addlyrics { Де са йе чу- ло- ви- дя- ло, зъл- ва бу- ля " " си да жи- лей, 
 зъл- ва бу- ля си да жи- лей! Де- вет е го- дин жи- ля- ла,
 де- вет е го- дин жи- ля- ла, на ди- се- тя- та~й го- ди- на }
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


