%{
laz_179_2_27
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"54"  
 \tempo 8 = 192
 \time 7/16
c8 d\noBeam d8. | f8\noBeam~( f16[ ees]) d8. | f8\noBeam f16[( ees]) d8. | 
d16.([ ees32] d16[ c]) bes8. | d8\noBeam ees \acciaccatura f8 ees16.[( d]) |
c8\noBeam( c) d8. | d8\noBeam d d8. | d8\noBeam( d) d8.
 \bar "|." 
}
\addlyrics { Ко ми са би- ле, би- ле ши- ри- не ба- ир на ба- ир, че- ир на че- ир }
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
		tempoWholesPerMinute = #(ly:make-moment 192 8)
		}
	}
}
%
\header{
  opus = "ТД-179,2,27"
  tagline = ##f
}


