%{
TD_097_1_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
% \tempo 8 = 168
% \time 7/16
d4 d8\noBeam d | a4 b8( c) | d8\noBeam c d( c) | b4.( c8) | d4 c8( b) | a4 b |
c4\rtoe a^\ltoe | a2\fermata
 \bar "|." 
s4 \fixB d,4   
  \bar "|." 
}
\addlyrics { Сно- щи за- лю- бих мла- ди Мар- ко и сно- щи му при- ста- нах }
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
  opus = "ТД-97,1,10"
  tagline = ##f
}


