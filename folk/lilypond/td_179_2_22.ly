%{
TD_179_2_22
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 138
%  \time 2/4
\cadenzaOn 
c4^\ltoe d4. c8\noBeam d( e)  \acciaccatura e8 f8.([ e16] f16 e d c) d8([ e^\ltoe)] f16( e d e) d2 r4 \bar ""
c8 d16([ e)] f16([ e8.)] d8 \bar ""
\varA
d4.~( d2\fermata d16\startTextSpan[ c d \stopTextSpan)] 
d8^\ltoe d\noBeam^\rtoe d2
 \bar "|." 
s16 \clef treble
\varA
e16\startTextSpan[ d c d \stopTextSpan] 
 \bar "|." 
}
\addlyrics { Дон- ка си бу- льо ду- ма- ше: Бу- льо льо, бу- льо ми- лич- ка }
%
\layout {
   \context { \Staff \remove "Time_signature_engraver" } 
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
  opus = "ТД-179,2,22"
  tagline = ##f
}


