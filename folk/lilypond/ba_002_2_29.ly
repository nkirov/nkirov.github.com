%{
BA_2_2_29
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4 
%%\bar "|:"
\repeat volta 2 { c8\noBeam d e4 | e4.( d8) | 
\varA
d8.\startTextSpan\noBeam d16~ d4 | e8.\noBeam c16~ c4\stopTextSpan | 
c8( b) a4 } 
\alternative { { a4.( g8) } { a2 } }
 \bar "|:"
 \repeat volta 2 { b8\noBeam c d4 | a2 | b4 b8\noBeam c | d4 d8( c) | 
\varB 
 b4\startTextSpan a\stopTextSpan }
 \alternative { { b2 } { a2 } }
 \bar "|."
\endm
\varA
d4\startTextSpan d | e c\stopTextSpan \bar "|."
\varB 
 b8(\startTextSpan a) a4\stopTextSpan 
 \bar "|."
}
\addlyrics { Хо- ди, бу- льо, ду- май доб- ро за ме- ня, ня, 
да- но до- ди пир- пи- ри Пен- ка при ме- ня -ня  }
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
  opus = "ВА-2,2,29"
  tagline = ##f
}


