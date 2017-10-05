%{
BA_2_1_42
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA  
  a4^">"\startTextSpan c\stopTextSpan | 
\varB  
  d4\startTextSpan c8( b\stopTextSpan) | 
c8([ b] a8[ g]) | d'8( c) c4 | c8([ b] a8[ g]) | a8( b) c8( b) | 
\break
a8\noBeam a a4( | a2\fermata) | a8 a4. | a4 r4  
 \bar ":|"
 \endm
\varA 
\afterGrace a4^">"\startTextSpan( { \stdB b8) \stdE } 
c4\stopTextSpan \bar "||"
\varB  
  d8\startTextSpan c4.\stopTextSpan \bar "|."
}
\addlyrics { Де са йе чу- "ло~й" ви- дя- ло мо- ма ке- ри- я да ка- ра, }
\addlyrics { как- "то~й" Ма- рий- ка ка- ра- ла два пъ- тя до Ца- ри- гра- да }
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
  opus = "ВА-2,1,42"
  tagline = ##f
}


