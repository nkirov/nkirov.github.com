%{
BA_2_1_07
%}

\include "td-preamble.ly"

showMeter = { \once \revert Staff.TimeSignature #'stencil }

%\layout { %% безразмерно, Unmetered music
%\context { \Staff \remove "Time_signature_engraver" } }

\score {
  \new Staff = "assia" \with
  { \override TimeSignature #'stencil = ##f }
{ \relative c'' {
\set Score.measureLength = #(ly:make-moment 2 8)
g8\noBeam a16( b) |
\varA
\set Score.measureLength = #(ly:make-moment 2 4)
b4.\startTextSpan( a16[ b\stopTextSpan)] | 
\set Score.measureLength = #(ly:make-moment 2 8)
g8\noBeam a16( b) | 
\varB
\set Score.measureLength = #(ly:make-moment 2 4)
a4.\startTextSpan( g16[ fis\stopTextSpan]) | 
\varC
\set Score.measureLength = #(ly:make-moment 3 8)
g16\startTextSpan([ fis]) e4\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 8)
g8\noBeam a | 
\varD
\set Score.measureLength = #(ly:make-moment 2 4)
a4.\startTextSpan( g16[ fis\stopTextSpan]) | 
\set Score.measureLength = #(ly:make-moment 2 8)
g16([ fis]) e8 | 
\set Score.measureLength = #(ly:make-moment 2 4)
e2 | e8\noBeam e r4
 \bar "|."
\endm
\varA
b'4.\startTextSpan( \times 2/3 { b16[ a g\stopTextSpan)] } \bar "||"
\varB
a4.\startTextSpan( \times 2/3 { b16[ a g\stopTextSpan]) } \bar "||"
\varC
\set Score.measureLength = #(ly:make-moment 3 8)
g16\startTextSpan([ fis]) e8[( d\stopTextSpan])  \bar "||"
\set Score.measureLength = #(ly:make-moment 2 8)
\varD
\set Score.measureLength = #(ly:make-moment 2 4)
\acciaccatura b'8\startTextSpan a4.( \times 2/3 { b16[ a g\stopTextSpan]) }
 \bar "|."
\break
\showMeter \time 2/4 
g4^"А вероятно трябва да бъде така:" a8( b) b4.( a16 b) g4 a8( b) a4.( g16 fis) g8( fis) e4 g a a4.( g16 fis) g8( fis) e4 e2 e4 e 
 \bar "|."
 } }
\addlyrics { Про- чу са "в се-" ло ма- хла- та, чи и- ма мо- ми ху- ба- ви
" " " " " " " " " " 
 Про- чу са "в се-" ло ма- хла- та, чи и- ма мо- ми ху- ба- ви }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
   %% безразмерно, Unmetered music
%%	\context { \Staff \remove "Time_signature_engraver" }
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ВА-2,1,7"
  tagline = ##f
}


