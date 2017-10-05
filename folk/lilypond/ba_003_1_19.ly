%{
BA_3_1_19
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g8 a16([ b]) c4 | 
\gliss
\set Score.measureLength = #(ly:make-moment 3 4)
d8\noBeam c \noteFi d4\glissando \hideNotes b \unHideNotes  | 
\set Score.measureLength = #(ly:make-moment 2 4)
\noteFi c8\noBeam\glissando a a8\noBeam a | d4.( c16[ b]) |
\varA
c8\noBeam\startTextSpan c c4\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 3 4)
d8\noBeam c \noteFi d4\glissando \hideNotes b \unHideNotes  | 
\set Score.measureLength = #(ly:make-moment 2 4)
\noteFi c8\noBeam\glissando a a8\noBeam a | a4 r4 
 \bar ":|" 
\endm
\varA
g8\noBeam\startTextSpan a16([ b)] c4\stopTextSpan \bar "|."
}
\addlyrics { Лю- би ле, лю- би ле, " " гол фу- ду- ля- но, от де взе, 
от де взе " " га- щи, та до- де }
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
  opus = "ВА-3,1,19"
  tagline = ##f
}


