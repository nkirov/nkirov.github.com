%{
BA_2_2_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA  
g8\startTextSpan\noBeam g a8\noBeam b\stopTextSpan | 
c8( b) a4 | a a | a8\noBeam g a8\noBeam b | c8( b) a4 | 
\gliss
\varB
\set Score.measureLength = #(ly:make-moment 3 4)
a4\startTextSpan a\glissando \hideNotes e\stopTextSpan \unHideNotes 
\set Score.measureLength = #(ly:make-moment 2 4)
 \bar "|:" 
 \repeat volta 2 { 
\varC   
g8\startTextSpan\noBeam f8 f8\noBeam f16\noBeam f16\stopTextSpan | 
f8( e) d4 }
 \alternative  { { g4 g } { d4 d } } 
 \bar "|."
\endm
\varA  
g8\startTextSpan\noBeam a a8\noBeam b\stopTextSpan \bar "||" 
\varB
a4\startTextSpan a8( g\stopTextSpan) \bar "||"
\varC   
a8\startTextSpan\noBeam f8 f8\noBeam f16\noBeam f16\stopTextSpan 
\bar "|."
}
\addlyrics { Дя- до Па- но, дер- мян- джи- йо, дя- до Па- но, дер- мян- джи- йо, " " въ- ри ли ти во- ди- нич- ка- та ка- та }
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
  opus = "ВА-2,2,24"
  tagline = ##f
}


