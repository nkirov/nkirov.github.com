%{
BA_2_1_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a4 b8( c) | d8([ c] b8[ a]) | 
\par
\varA
d8\startTextSpan d4.\stopTextSpan | 
\varB
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan c2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
c8( b) a4 | 
\varC
d8\startTextSpan d4( c8\stopTextSpan) | 
\varD
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan c2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
\break
c8( b) a4 | a2 | a4 a   
 \bar ":|" 
 \fixB s4 f4 \fixC 
\bar "|."
\endm
\varA
d'4\startTextSpan d8( c\stopTextSpan) \bar "||"
\varB
c4.(\startTextSpan d8\stopTextSpan)\bar "||"
\varC
d4\startTextSpan d8( c\stopTextSpan) \bar "||"
\varD
c8\startTextSpan( b c4\stopTextSpan)
\bar "|."
}
\addlyrics { Как- во "съ~й" хо- ро за- ви- ло, за- ви- ло и за- и- гра- ло, }
\addlyrics { за- ви- ло и за- и- гра- ло "в Ин-" дже- кьов- ска- та ко- ри- я }
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
  opus = "ВА-2,1,8"
  tagline = ##f
}


