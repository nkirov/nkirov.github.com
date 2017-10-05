%{
BA_1_2_18
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\repeat volta 2 {  a4 d | d( c) | d2 | 
\varA
  d8\startTextSpan( c) c16([ b a b\stopTextSpan)] |  
a8( b) c4 | d8( [ c b a ) ] | a2 |
} 
\alternative  {{ a4 a8( g) } { a4 a }}
 \bar "|." 
\endm
\varA
  d8\startTextSpan( c) c4\stopTextSpan 
\bar "|."
}
\addlyrics { Ка- ко съ и хо- ро "в Тър-" но- во за- ви- ло, }
\addlyrics { "в Тър-" но- во за- ви- ло, чи и за- и- " " " " гра- ло }
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
  opus = "ВА-1,2,18"
  tagline = ##f
}


