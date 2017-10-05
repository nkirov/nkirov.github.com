%{
BA_2_1_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
e,4 g8\noBeam g | a8 g4. | a8( g) f( e) | a8 g4. | a8( g) f8( e) | a4 a8( g) | 
%\break
a4 a8\noBeam a8 | 
a8( g) g4 | a8( g) f8( e) | a8 g4. | a8( g) f8( e) | e4 e 
 \bar "|." 
 s4 \fixB e 
 \bar "|." 
}
\addlyrics { Въл- ко от- го- ря сла- зя, го- ря от го- ра- та, 
Въл- ко от- го- ря сла- зя, го- ря от го- ра- та }
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
  opus = "ВА-2,1,10"
  tagline = ##f
}


