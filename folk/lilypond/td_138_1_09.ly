%{
TD_138_1_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
  \time 2/4
  \acciaccatura g8 a4 b | 
\override Glissando #'style = #'zigzag
\varAB
  \noteFi d8\startTextSpan\glissando([ c]) b4\stopTextSpan | 
b4.\mordent( a16[ g]) |   \acciaccatura a8 b4 a8\prall([ g]) | 
\varC
\set Score.measureLength = #(ly:make-moment 3 4)
e2\startTextSpan \hideNotes e4\stopTextSpan \unHideNotes | 
\set Score.measureLength = #(ly:make-moment 2 4)
g4 a | 
\varD
\acciaccatura a8\startTextSpan bes4 a8\prall([ g\stopTextSpan]) | 
  \acciaccatura { g16[ f!] } ees2 | e4 e | e2\fermata
 \bar "|." 
s4 \fixB cis4 \fixC 
 \bar "|." 
\endm
\varA
  \acciaccatura b'8\startTextSpan \noteFi d8\glissando([ c]) b4\stopTextSpan \bar "||"
\varB
  d4\startTextSpan b4\stopTextSpan  \bar "||"
\varC
\acciaccatura { g16\startTextSpan[ f!] }  e2\stopTextSpan \bar "||"
\varD
\acciaccatura a8\startTextSpan bes4 a4\stopTextSpan 
 \bar "|." 
}
\addlyrics { Дим- ко льо, Ка- ра- ат- лий- ко, " " ма- ри, по- по- ва дъ- ще- рьо }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,9"
  tagline = ##f
}


