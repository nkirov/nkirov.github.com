%{
BA_3_1_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g4 a | b8 a\noBeam g fis\noBeam | g4 a | b8( a g4) |
\afterGrace fis2( { \stdB e8) \stdE } | 
b'8( a) a4 | b8 a\noBeam g fis\noBeam | 
\gliss
b( a) \noteFi \afterGrace a4\glissando( { \stdB g8) \stdE } |
fis2 | f4 r
 \bar "|." 
}
\addlyrics { Ба- ти Ко- льо, ма- \startTextSpan мо, \stopTextSpan 
ба- ти Ко- льо, 
ба- нян- че- то, ма- \startTextSpan мо, \stopTextSpan ба- нян- че- то }
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
  opus = "ВА-3,1,7"
  tagline = ##f
}


