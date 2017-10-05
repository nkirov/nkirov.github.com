%{
BA_2_1_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA  
c4\startTextSpan c8( d\stopTextSpan) | 
e8([ d] c16[ d c b]) | 
\varB
a8\startTextSpan( b) c4\stopTextSpan | 
d8([ c] c16[ d c b]) | a8 a4( g8) | c4 c8( b) | a4.( g8) | 
\varC
 c4\startTextSpan c8( b\stopTextSpan) | 
\varD
a2~\startTextSpan | a4 a8\noBeam a\stopTextSpan  
 \bar ":|"
\endm  
\varA
a8\startTextSpan( b) c8( d\stopTextSpan) \bar "||"
\varB
a8\startTextSpan( b) c8( d\stopTextSpan) \bar "||"
\varC
d8\startTextSpan( c) c8( b\stopTextSpan)\bar "||"
\varD
a2\startTextSpan a8 a\noBeam r4\stopTextSpan 
\bar "|."
}
\addlyrics { Ма- ма~й Жи- ляз- ка сго- ди- ла за Ян- ка, мо- ма ху- ба- ва }
\addlyrics { Твър- дя и би- ло да- ле- ко приз де- вят се- ла в'ди- се- то }
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
  opus = "ВА-2,1,6"
  tagline = ##f
}


