%{
laz_093_2_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 4 = 138
\time 2/8
b8 a | a b16( c) | d8 c | 
\varA
b16\startTextSpan( c) a8\stopTextSpan | 
b8 c | 
\varA
b16\startTextSpan( c) a8\stopTextSpan | 
a a | 
\varB
\set Score.measureLength = #(ly:make-moment 3 8)
s8\startTextSpan b4\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 8)
b\fermata
 \bar "|." 
 s8 \fixB f \fixC
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 2 8)  
 \clef treble 
\varA
b8\startTextSpan a\stopTextSpan | 
\varB
\acciaccatura a8\startTextSpan b4\stopTextSpan | 
 \bar "|." 
}
\addlyrics { Си- ди Пе- тър на по- ла- да, шап- ка- та му над о- чи- те }
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
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-93,2,16"
  tagline = ##f
}


