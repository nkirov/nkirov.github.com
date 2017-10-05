%{
BA_3_1_36
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA  
d8\startTextSpan( c) b4\stopTextSpan | 
\varB
c8\startTextSpan( b) a4\stopTextSpan | 
\varC
a4\startTextSpan b\stopTextSpan | 
\varD
a\startTextSpan g\stopTextSpan | 
c c8( b) | a( g) c4 | 
\varE
c8\startTextSpan( b) a4\stopTextSpan | 
\varF
a4\startTextSpan b\stopTextSpan | 
\varG
a\startTextSpan g\stopTextSpan | 
g g   
 \bar "|."
\break 
%% \time 2/4
\varA
g8\startTextSpan( a) c4\stopTextSpan \bar "||" 
\varB
c8\startTextSpan( b) a8( g\stopTextSpan) \bar "||" 
\varC
g8\startTextSpan( a) b4\stopTextSpan \bar "||" 
\varD
a8\startTextSpan( g) g4\stopTextSpan \bar "||" 
\varE
c8\startTextSpan( b) a8( g\stopTextSpan) \bar "||" 
\varF
g8\startTextSpan( a) b4\stopTextSpan \bar "||" 
\varG
a8\startTextSpan( g) g4\stopTextSpan 
 \bar "|." 
}
\addlyrics { Гьор- ги бу- льо ти- хом про- го- во- ри, 
Гьор- ги бу- льо ти- хом про- го- во- ри }
\addlyrics { Ма- ри бу- льо, бу- льо Сто- йе- ни- це, 
ма- ри бу- льо, бу- льо Сто- йе- ни- це }
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
  opus = "ВА-3,1,36"
  tagline = ##f
}


