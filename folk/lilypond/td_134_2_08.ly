%{
td_134_2_08
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%%\tempo 4 = 138
\time 2/4
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkCdot #"138-144"
\override Glissando #'style = #'zigzag
d4 e8[( d]) | d[( c d e]) | d[( c]) c4 
\bar ":|"
d4 d8[( c]) | b2 | a8 g\noBeam fis g\noBeam | a4 d | a2 | d4 e | d d8[( c]) |
b4.(\glissando a8) | a g\noBeam fis g\noBeam | a4 d | a2 | a4 a \bar "||"
d4 d | d8[( c b a]) | 
\set Score.measureLength = #(ly:make-moment 3 4)
 b2\glissando \hideNotes e4 \unHideNotes| 
\set Score.measureLength = #(ly:make-moment 2 4)
d4 d | d8[( c b a]) | b4 r |
a8[( b]) c[( b]) | a2 | a8 b\noBeam g g\noBeam | a8[( b]) c[( b]) | a2 | a4 a
 \bar "|." 
s4 \fixB fis 
 \bar "|."  
}
\addlyrics { Ро- си- ца ро- си, 
ти рой, рой, рой- не ма- ри, ти ру- са ко- са, 
ти рой, рой, рой- не ма- ри, ти ру- са ко- са. 
Йо- съм- на- хме, " "  йо- къс- ня- хме,
Га- но, Ган- ке ле, ма- ри, бай- но ба- те- ва }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,8"
  tagline = ##f
}


