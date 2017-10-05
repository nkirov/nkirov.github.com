%{
BA_2_2_31
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g8\noBeam a a4 | c2 | d8\noBeam c c8( b) | 
\varA
a4.\startTextSpan( g8\stopTextSpan) | 
\varB
d'8\startTextSpan\noBeam c c8( b\stopTextSpan) | 
\varC
a4.\startTextSpan( g8\stopTextSpan) | 
\varD
g8\startTextSpan\noBeam  a a4\stopTextSpan | 
a4 r4  
 \bar ":|" 
\endm 
\varA
a4.\startTextSpan( d8\stopTextSpan) \bar "||"
\varB
c8\startTextSpan\noBeam c c8( b\stopTextSpan) \bar "||"
\varC
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan a2\stopTextSpan \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)
\varD
b8\startTextSpan\noBeam a a4\stopTextSpan 
\bar "|."
}
\addlyrics { Ма- ри Ра- до,  бя-  ла  Ра- до, ти ли лю- биш вай- во- да- та, }
\addlyrics { ти  ли лю- биш вай- во- да- та, ти ли не-  го, той ли  те- бя }
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
  opus = "ВА-2,2,31"
  tagline = ##f
}


