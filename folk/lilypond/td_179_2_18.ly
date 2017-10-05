%{
laz_179_2_18
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
%
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"50"

%%\tempo 8 = 176
\time 7/16
c8\noBeam d d8. | f8\noBeam~( f16[ ees]) d8. | \acciaccatura ees8 f8 f16[( ees]) d8. |
d16.([ ees32] d16[ c]) bes8. | 
\break
d8\noBeam ees d8. | c8\noBeam( c) d8. | c8\noBeam d d8. | 
d8\noBeam( d) d8.
 \bar "|."
 s8. \fixB cis4
 \bar "|." 
}
\addlyrics { Ма- ма То- до- ре ра- но ра- не- ше, ра- но ра- не- ше, 
хит- ро у- че- ше }
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
		tempoWholesPerMinute = #(ly:make-moment 176 8)
		}
	}
}
%
\header{
  opus = "ТД-179,2,18"
  tagline = ##f
}


