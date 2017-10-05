%{
BA_1_2_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  g4 g | 
\varA  
  c4\startTextSpan d\stopTextSpan | 
  d c8( b) | a4 g | c4 c8( b) | 
  a4 g | g a | a2 | a2
\bar ":|"  
\endm
\varA  
  c4\startTextSpan c\stopTextSpan
\bar "|."
}
\addlyrics { Рус- ка тъ- че жъл- то бу- ло да са бу- ли пред И- ва- на }
\addlyrics { Ма- ма Рус- ка лю- то къл- не: Ма- ри Рус- ке, ми- ла дъ- ще }
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
  opus = "ВА-1,2,13"
  tagline = ##f
}


