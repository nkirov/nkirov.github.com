%{
TD_113_1_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 152
  \time 2/4
\override Glissando #'style = #'zigzag  
g4 a | c8([ \noteFi d\glissando c b]) | 
\set Score.measureLength = #(ly:make-moment 9 16)
\noteFi \hideNotes a16\glissando \unHideNotes d4 d | 
\set Score.measureLength = #(ly:make-moment 2 4)
\varA
d8\startTextSpan^\ltoe([ c^\rtoe~] c16[ d c b\stopTextSpan)] | 
a8([ b]) a8([ g]) | 
%\break
a8([ b]) c8([ b]) | c4( d16[ c b8]) | 
\varB
a8\startTextSpan^\ltoe([ b^\rtoe]) a8([ g\stopTextSpan]) | 
a2\fermata | a4 a 
 \bar "|." s4 \fixB c,4 \fixC 
 \bar "|." 
\endm
\varA
d'16\startTextSpan([ c8.] \times 2/3 { d8[c b\stopTextSpan)] } \bar "||"
\varB
a8\startTextSpan a4( g8\stopTextSpan) 
 \bar "|."
}
\addlyrics { Три- фон Гер- " " га- ни ду- ма- ше: Гер- га- не брат- че по- мал- ко }
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
  opus = "ТД-113,1,14"
  tagline = ##f
}


