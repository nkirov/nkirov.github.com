%{
laz_112_1_01
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
% \tempo 4 = 168
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"60"
 \time 7/16
\varA 
g8\startTextSpan a\noBeam a8.\stopTextSpan | 
\override Glissando #'style = #'zigzag
\varB
\noteFi c16\startTextSpan\glissando[( b]) \noteFi b\glissando[( c)] \noteFi c16.\glissando([ b\stopTextSpan)] |
a4 \acciaccatura a8 b8. | 
\varB
\noteFi c16\startTextSpan\glissando[( b]) \noteFi b\glissando[( c)] \noteFi c16.\glissando([ b\stopTextSpan)] |
\varC
a8\startTextSpan a\noBeam a8.\stopTextSpan | 
a4 a8.
 \bar "|." 
 s8. \fixB d,4 \fixC
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble 
\varA 
g8\startTextSpan a\noBeam a8[( g16\stopTextSpan]) \bar "||"
\varB
\noteFi c16\startTextSpan\glissando[( b]) \noteFi a\glissando[( b)] \noteFi c16.\glissando([ b\stopTextSpan)] \bar "||"
\varC
a16\startTextSpan([ b]) a8\noBeam a8.\stopTextSpan 
 \bar "|."  
}
\addlyrics { "В се-" ло зла- та- ри до- до- ха, до- до- ха и кон- ди- са- ха }
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
		tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
  opus = "ТД-112,1,1"
  tagline = ##f
}


