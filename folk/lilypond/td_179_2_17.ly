%{
laz_179_2_17
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
%% \tempo 8 = 168
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"48"
 \time 7/16
c8 d d8. | 
\varA
c8\startTextSpan d16[( e]) f[( e d\stopTextSpan]) | 
d8\noBeam( d) e8.\mordent | f16([ e]) d[( e]) f16.([ e]) | 
\varB
d16^>\startTextSpan[( e]) c8\noBeam d8.\stopTextSpan | 
d8\noBeam( d) d8. 
 \bar "|." 
s8. \fixB cis4 \fixC 
 \bar "|."  
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble
\varA
c8\startTextSpan d16[( e]) \times 3/4 { f[( e d c\stopTextSpan]) } \bar "||"
\varB
d16^>\startTextSpan[( e]) d8\noBeam d8.\stopTextSpan 
 \bar "|."  
}
\addlyrics { За- да- ло ми са~й, за- да- ло, ца- ри- град- ска- та сик- се- ля }
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
		tempoWholesPerMinute = #(ly:make-moment 168 8)
		}
	}
}
%
\header{
  opus = "ТД-179,2,17"
  tagline = ##f
}


