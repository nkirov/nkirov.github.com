%{
TD_097_1_15
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 160
 \time 2/4
% \tempo 8 = 168
% \time 7/16
f4 g8([ a)] | g2 | a8( g) f( e) | f4 g | \acciaccatura g8 a4.( g8) | 
f4 g8( a) | g2 | a8( g) f( e) | f4\rtoe g^\ltoe | g2\fermata
 \bar "|."
 s4 \fixB bes4
 \bar "|." 
}
\addlyrics { Ла- за- ре, дра- го ли ти йе, че и- де про- лят ве- се- ла }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,15"
  tagline = ##f
}


