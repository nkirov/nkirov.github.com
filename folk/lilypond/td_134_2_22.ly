%{
TD_134_2_22
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
% \tempo 4 = 152
 \time 2/4
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkCdot #"152-160" 
 g4 \acciaccatura b8 c4 | b8([ a)] g4 | b8([ a] \acciaccatura b8 a[ g]) |
 g4.( a8) | b([ c]) c[( b]) | g([ a]) b([ c]) | 
  \break
 b([ a]) g4 | b8([ a] \acciaccatura b8 a[ g]) | g2~ | g\fermata | g4^\rtoe g\fermata
 \bar "|."
s4 \fixB d4 
 \bar "|." 
}
\addlyrics { Ро- дан- чи- це, мал- ка мо- ме, ти ка- то си най- ма- нин- ка }
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
  opus = "ТД-134,2,22"
  tagline = ##f
}


