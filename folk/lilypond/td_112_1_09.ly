%{
laz_112_1_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 200
 \time 3/8
\slurDown 
b4. | b4~( b16[ a]) | 
\varA
d8\startTextSpan a8.\noBeam a16\stopTextSpan | 
g16[( fis]) e8([ d)] | fis16[( g]) a4 |
\varB
b8\startTextSpan^\ltoe b8.\noBeam b16\stopTextSpan | 
\break
\varC
a4.\startTextSpan~ | a8\noBeam a8 r\stopTextSpan
 \bar "|." 
 s8. \fixB a8 \fixC s16
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 3 8)  
 \clef treble 
\varA
d8\startTextSpan a4\stopTextSpan \bar "||"
\varB
b8\startTextSpan^\ltoe b4\stopTextSpan \bar "||"
\varC
a4.\startTextSpan\fermata | a8 r r\stopTextSpan
\bar "|." 
}
\addlyrics { Ке- ря- ни- те о- па- шки, Ке- ря- ни- те о- па- шки }
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
		tempoWholesPerMinute = #(ly:make-moment 200 8)
		}
	}
}
%
\header{
  opus = "ТД-112,1,9"
  tagline = ##f
}


