%{
TD_093_1_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
% \tempo 4 = 152
% \time 2/4
% \tempo 8 = 168
 \time 9/16
 \varA
 a8\startTextSpan b16([ c)] \acciaccatura { c16[ b] } c8 b16([ a8\stopTextSpan)] | 
 g8 b\noBeam a16([ b)] a16([ g8)] |
 \varB
 a8\startTextSpan b \acciaccatura { b16[ c] } b8 b16([ a8\stopTextSpan)] | 
 g8 a a a8.\fermata
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 9 16)  
 \clef treble
\varA
 a8\startTextSpan b16([ c)] b16([ c)] b16([ a8\stopTextSpan)] \bar "||" 
 \varB
 g8\startTextSpan a16([ b)] c8 b16([ a8\stopTextSpan)] 
  \bar "|." 
}
\addlyrics { Ра- но ра- нил све- ти Гер- ге, ра- но ра- нил све- ти Гер- ге }
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
  opus = "ТД-93,1,4"
  tagline = ##f
}


