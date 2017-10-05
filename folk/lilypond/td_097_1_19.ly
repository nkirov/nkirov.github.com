%{
td_097_1_19
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 8 = 160
\time 3/8
\override Glissando #'style = #'zigzag
\varA
f8\startTextSpan a\noBeam a\stopTextSpan | 
b  c4 | d8 b16[( a])  a8 | e8 a\noBeam a | b c8.([ b16]) |
a8 r r | d8 d16[( e]~ e8\noBeam | e4\glissando c8) |
d8 d\noBeam d | \acciaccatura d e c4 | \acciaccatura c8 d b16[( a]) a8 |
b a\noBeam b | 
\acciaccatura c d c8.[( b16]) | \acciaccatura c8 d b[( a]) | a4.\fermata
 \bar "|." 
s8 \fixB c,4 \fixC
  \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 3 8)  
 \clef treble  
 \varA
e8\startTextSpan a\noBeam a\stopTextSpan
 \bar "|." 
}
%
\addlyrics { Чи- сът два- най- си ю- да- ри, чи- сът два- най- си ю- да- ри,
да дой- ди ли- би, ня- ма го, да дой- ди ли- би, ня- ма го }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 160 8)
		}
	}
}
%
\header{
  opus = "ТД-97,1,19"
  tagline = ##f
}


