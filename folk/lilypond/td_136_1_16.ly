%{
TD_136_1_16
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 144
  \time 2/4
d4 f | \acciaccatura f8 g2 | d4 f | g2 |
  \override Glissando #'style = #'zigzag
\varA  
\acciaccatura a8\startTextSpan \noteFi g4\glissando f16( ees c8) \stopTextSpan |
d4 f | \break
\varB
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan g2\stopTextSpan |
\set Score.measureLength = #(ly:make-moment 2 4)
f8( e^"(↓)") d4 d2 d4 d 
\bar "|." 
 s4 \fixB gis,4 \fixC 
\bar "|."
\endm
\varA  
 g'8\startTextSpan\prall( f) f16([ e c8)] \stopTextSpan \bar "||"
\varB
 g'4.\startTextSpan( a8)  \stopTextSpan  \bar "||"
\varB 
  g4.\startTextSpan( f8)  \stopTextSpan
 \bar "|."
}
\addlyrics { Еж- те ми, пей- те, пи- лян- ца, дор- де сти мал- ки при ма- ма }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%   ragged-last = ##t
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}

\header{
  opus = "ТД-136,1,16"
  tagline = ##f
}


