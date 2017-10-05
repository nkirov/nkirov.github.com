%{
BA_2_2_30
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
d4 c8\noBeam d | e4 d | a2 | d4 c | b4 a8\noBeam b | c4 b | a2 | 
\break
d4 c | 
b a8\noBeam b |
\varA
c4\startTextSpan b\stopTextSpan | 
a2 | a4 a 
 \bar "|." 
 \endm
\varA
c4\startTextSpan b8( a\stopTextSpan) 
\bar "|." 
}
\addlyrics { Дан- ка Е- дре- цов Ко- льо- ва, Дан- ка йе чор- ба ва- ри- ла, 
Дан- ка йе чор- ба ва- ри- ла }
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
  opus = "ВА-2,2,30"
  tagline = ##f
}


