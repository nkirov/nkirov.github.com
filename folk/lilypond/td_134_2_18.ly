%{
laz_134_2_18
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 152
\time 2/4
\varA
d8\startTextSpan( c) c4\stopTextSpan | 
d( e16^"↓"[ d c8]) | c8( b\prall a4) | a2 | 
\varB
\override Glissando #'style = #'zigzag
\set Score.measureLength = #(ly:make-moment 3 4)
c4\startTextSpan \noteFi b\glissando \hideNotes g \unHideNotes  | 
\set Score.measureLength = #(ly:make-moment 2 4)
a2\stopTextSpan | 
\varCD
a8\startTextSpan( b) c( d) | 
\set Score.measureLength = #(ly:make-moment 3 4)
\acciaccatura d8 \noteFi c2\trill\glissando \hideNotes a4 \unHideNotes | 
\set Score.measureLength = #(ly:make-moment 2 4)
a8( b4 a8\stopTextSpan) |
\break
a2( | 
\varE
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan a2\stopTextSpan\fermata) | 
\set Score.measureLength = #(ly:make-moment 2 4)
%%\break
a4^\ltoe a^\rtoe | a2 
 \bar "|." 
 s4 \fixB d, \fixC
  \bar "|." 
\endm
\varA
d'8\startTextSpan( c) d8( c\stopTextSpan) \bar "||"
%%\break
\varB
c8\startTextSpan c4( b8) | b8( a4.\stopTextSpan) \bar "||"
\varC
a8\startTextSpan( b) c( d) | c4.\prall( b8) | a8( b4\prall a8\stopTextSpan) \bar "||"
\varD
a8\startTextSpan( b) c( b) | c4( \times 2/3 { d8[ c b]) } | a8([ b] b\prall[ a\stopTextSpan)] \bar "||"
\varE
\afterGrace a2\startTextSpan \fermata( { b16[ a g\stopTextSpan]) } | 
 \bar "|."   
}
\addlyrics { Сто- ян на Ган- ка ду- ма- " " ше: Лю- би Га- " " не ле, Га- не ле }
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
  opus = "ТД-134,2,18"
  tagline = ##f
}


