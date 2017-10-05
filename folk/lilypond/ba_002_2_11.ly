%{
BA_2_2_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA  
g4\startTextSpan a8( b\stopTextSpan) | 
b4.\fermata ( a8) | g4 a8( b) | a4.\fermata( g16[ fis]) | g8( fis) e4 | g4 a |
a4.\fermata( g16[ fis]) | g8( fis) e4 | e2\fermata | e4 e  
 \bar ":|" 
\endm 
\varA  
b'4\startTextSpan b\stopTextSpan 
\bar "|."
}
\addlyrics { Стой- на ле- ля си ду- ма- ши: Ле- льо мо, ми- лин- ка ле- льо, }
\addlyrics { да зна- иш, ле- льо, да зна- иш ка- ко си лю- би за- лю- бих }
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
  opus = "ВА-2,2,11"
  tagline = ##f
}


