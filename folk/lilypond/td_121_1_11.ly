%{
TD_121_1_11
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%% \tempo 8 = 148
  \time 7/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"48"  
a4 e8. | a4 b8([ c16)] | 
\varA
\par
 \parenthesize \acciaccatura c8 d8\startTextSpan c\noBeam b\prall a16\stopTextSpan\noBeam | 
 g8 a b a16 |
g8 g16([ fis)] e8. | e8~ e~ e8. 
\bar ":|:"
g4 g16([ a8)] | \acciaccatura a8 g8.([ fis16)] e8. |
fis8 d\noBeam e fis16 | 
\varB
g8\startTextSpan g16([ a)] \acciaccatura b8 a g16\stopTextSpan | 
g8 g16([ fis)] e8. | e4~ e8.
 \bar ":|" 
s8. s8 \fixB ees8 \fixC
\bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble
\varA
\acciaccatura c'8\startTextSpan d8 c\noBeam \acciaccatura c8 b8([ a16])\stopTextSpan \bar "||"
\varB
g8\startTextSpan g16([ a)] a g8\stopTextSpan
\bar "|."
}
\addlyrics { Из- тъ- ка- ла~й Ки- ро- ви- ца бя- ла а- ба за кал- цу- ни,
пък на Ген- ча са по- рев- ни, че си у- ши пан- та- ло- ни }
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
		tempoWholesPerMinute = #(ly:make-moment 148 8)
		}
	}
}
%
\header{
  opus = "ТД-121,1,11"
  tagline = ##f
}


