%{
TDG_138_2_12 
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 112
\time 5/4
%\cadenzaOn
g4 a8 b\noBeam c4 c2 | 
\varAB
e4\startTextSpan d c8[( d]) c2\stopTextSpan \breathe | 
\varC
d8\startTextSpan d\stopTextSpan\noBeam 
d d\noBeam c[( b]) a4. b8 | 
\varD
c2\startTextSpan~ c2.\stopTextSpan | 
\varE
c4.\startTextSpan( b8\stopTextSpan) 
b\prall[( a]) a4.( b8) | c4.( b8) b-\parenthesize\prall[( a]) a4 r |
\varF
\time 9/8 
d8\startTextSpan d\noBeam d b\noBeam c4 c8[( d]) b8\stopTextSpan | 
\time 5/4 a2~ a2.
 \bar "|." 
 \set Score.measureLength = #(ly:make-moment 2 4)
s4 \fixB d,4 \fixC
\set Score.measureLength = #(ly:make-moment 5 4)
 \bar "|."  
\varA
e'4\startTextSpan d8 b\noBeam c4 c2\stopTextSpan \bar "||"
\varB
e4\startTextSpan d8 c\noBeam d4 c2\stopTextSpan \bar "||"
\varC
\set Score.measureLength = #(ly:make-moment 2 8)
c8\startTextSpan d\stopTextSpan\noBeam \bar "||"
\set Score.measureLength = #(ly:make-moment 5 4)
\varD
c2\startTextSpan~ c2 r4\stopTextSpan \bar "||"
\varE
\set Score.measureLength = #(ly:make-moment 2 4)
c4.\startTextSpan( \times 2/3 { d16[ c b\stopTextSpan)] } \bar "||"
\set Score.measureLength = #(ly:make-moment 5 4)
\varF
%\time 9/8 
d4\startTextSpan d8\noBeam b c4 c8[( d b\stopTextSpan])  
 \bar "|."  
}
\addlyrics { Мъ- жът се връ- ща от го- ра- та, а же- на- та от ба- ня- та,
Хей, хей, хей, хей, хей, хей, а же- на- та от ба- ня- та }
%
\layout {
%     \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 12 4)
		}
	}
}
%
\header{
  opus = "ТД-138,2,12"
  tagline = ##f
}


