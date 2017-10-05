%{
BA_2_1_41
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a4 b | a8([ b] a8[ g]) | a4 b8( a) | a4.( g8) | b4 g | a4 b8( g) | b4( a8[ g]) | a4 a | a2 | a4 a  
 \bar "||"
%%\break 
d8( c) b4 | b4( a8[ g]) | a4 a | 
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan a2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
b8( a) g8\noBeam g | a4 a | b4( a8[ g]) | a4 b8( a) | a2 | a4 a
 \bar "|."
 \endm
\varA
a4\startTextSpan r4\stopTextSpan  
\bar "|."
}
\addlyrics { Сто- ян на Йов- ка на- миг- на, на Йов- ка, на сва- тя- та си, 
на Йов- ка, на сва- тя- та си у Беш- те- лян- ска- та чер- ко- ва }
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
  opus = "ВА-2,1,41"
  tagline = ##f
}


