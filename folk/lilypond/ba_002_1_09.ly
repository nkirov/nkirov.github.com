%{
BA_2_1_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g8\noBeam a g4 | g8( a) a8( b) | b8([ a] g4) | b8( a) a8( g) | g8\noBeam g a8( g) | e8( f) g8( a) |
g2 | 
\set Score.measureLength = #(ly:make-moment 3 4)
\gliss
g8( a) b4\glissando \hideNotes e,4 \unHideNotes | 
\set Score.measureLength = #(ly:make-moment 2 4)
g8\noBeam g a8( g) | e8( f) g8( a) | g2 | g4 g   
\bar "|." 
 \fixB s4 g
\bar "|." 
}
\addlyrics { Сто- ян приз го- ра вър- ве- ши, го- ре го- ра- та гле- да- ши, 
" " го- ре го- ра- та гле- да- ши }
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
  opus = "ВА-2,1,9"
  tagline = ##f
}


