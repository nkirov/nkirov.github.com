%{
TD_93_2_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 9/16
\varA  
  g8\startTextSpan a16([ b]) c8 b32([ c b8\stopTextSpan]) | 
\varBC  
  g8\startTextSpan a16([ b]) c8 \acciaccatura { b16[ a] } b8.\stopTextSpan | 
  g8\noBeam a a8 \acciaccatura a8 c8([ b16]) | 
\varD
  c8\startTextSpan\noBeam a8 a8\noBeam a8.\stopTextSpan\fermata
 \bar "|." 
s4. \fixB ees16 \fixC s8
 \bar "|."
\break 
% \set Score.measureLength = #(ly:make-moment 1 16)  
% s16 \bar ""  
% \set Score.measureLength = #(ly:make-moment 9 16)  
% \clef treble
\varA  
  g8\startTextSpan a16([ b]) c8 \acciaccatura c8 b32([ c b8\stopTextSpan]) \bar "||" 
\varB  
  g8\startTextSpan a16([ b]) \acciaccatura { c16[ b] } c8
  \acciaccatura { b16[ a] } b8.\stopTextSpan \bar "||" 
\varC
  g8\startTextSpan a16([ b]) \acciaccatura { c16[ d c b] } c8
  \acciaccatura { b16[ a] } b8.\stopTextSpan \bar "||"   
\varD  
  c16\startTextSpan([ b)] a8 a\noBeam a8.\stopTextSpan\fermata
 \bar "|." 
}
\addlyrics { Раз- бо- ля- ла "съ~й" Ма- рий- ка, раз- бо- ля- ла "съ~й" Ма- рий- ка }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-93,2,23"
  tagline = ##f
}


