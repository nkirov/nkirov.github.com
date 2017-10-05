%{
BA_2_1_43
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g8 a4. | 
\varA
a8\startTextSpan( g) a8( b\stopTextSpan) | 
c8.([ d16] c8[ b]) | 
\varB
c8\startTextSpan( b) a8( g\stopTextSpan) | 
a4.( g8) | g4 a8( b) | 
\break
c8( b) a8\noBeam a~ | a2\fermata | a8 a4. | a4 r4  
 \bar ":|"
\endm 
\varA
a4\startTextSpan c4\stopTextSpan \bar "||"
\varB
c4\startTextSpan a8( g\stopTextSpan) 
\bar "|."
}
\addlyrics { Сду- ма- ли са са, сду- ма- ли че- те- ри мо- "ми~й" три бул- ки }
\addlyrics { да и- дат пръст да ко- па- ят на Гер- дям- ска- та пръст- ни- ца }
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
  opus = "ВА-2,1,43"
  tagline = ##f
}


