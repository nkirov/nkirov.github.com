%{
BA_2_2_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\gliss  
d4 b | 
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
\noteFi b8\startTextSpan(\glissando a) \noteFi a4\glissando \hideNotes f\stopTextSpan \unHideNotes | 
\set Score.measureLength = #(ly:make-moment 2 4)
g2 | a4 b8( a) | a2 | 
\varB
\noteFi d4\startTextSpan\glissando b\stopTextSpan | 
\varC
b8\startTextSpan( a) \noteFi a(\glissando g\stopTextSpan) | 
g2 | g8 g4. | g4 r4 
 \bar ":|" 
\endm
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
\noteFi b8\startTextSpan(\glissando a) \noteFi b4\glissando \hideNotes f\stopTextSpan \unHideNotes 
\bar "||" 
\set Score.measureLength = #(ly:make-moment 2 4)
\varB
\noteFi d'4\startTextSpan\glissando g,8( a\stopTextSpan) \bar "||"
\varC
b8\startTextSpan( a) b4\stopTextSpan 
\bar "|."
}
\addlyrics { Пу- сто- то~й тур- " " че А- ли- я, ко- га ри- че- ше бъл- гар- ка, }
\addlyrics { ус- та- та му " " съ пу- ка- ха по на две, на три, че- тя- ри }
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
  opus = "ВА-2,2,20"
  tagline = ##f
}


