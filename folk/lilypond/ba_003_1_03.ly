%{
BA_3_1_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  c4 b8 a\noBeam | b4 g | b d | c4( \times 2/3 { d8 c b) } |
\varA 
  c4\startTextSpan b8 a\stopTextSpan\noBeam |
  b4 g | a a | a r 
 \bar "|." 
\endm
\varA 
  b4\startTextSpan b8 a\stopTextSpan\noBeam  
 \bar "|."  
}
\addlyrics { Ка- дъ- на  ви- но     ни  пи- йе, ка- дъ- на ло- зи ни ко- пай }
\addlyrics { три дни ка- дъ- "на~й" ко- па- ла, три ме- ри ви- но из- пи- ла }
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
  opus = "ВА-3,1,3"
  tagline = ##f
}


