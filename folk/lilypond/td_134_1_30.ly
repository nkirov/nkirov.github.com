%{
TD_134_1_30
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 168
  \time 2/4
  b8\noBeam b d4 | c4( d) | c8^>([ b]) b4 | d4 c | b8\noBeam a c4 | c4( d) | 
  c8^>([ b]) b4 | b4 b
 \bar "|." 
 s4 \fixB d, 
  \bar "|." 
}
\addlyrics { То- до- ро льо, бя- ла- ли- ка, бя- ла- ли- ка, чер- на- йо- ка }
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
  opus = "ТД-134,1,30"
  tagline = ##f
}


