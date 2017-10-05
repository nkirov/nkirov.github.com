%{
BA_2_1_11
%}

\include "td-preamble.ly"
%%\include "makam.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  a8( g) g8( f) | e4.( d8) | e8\noBeam f g8( a) | 
\varA
a8\startTextSpan( g) g8( a\stopTextSpan) | 
a8( g) g8( f) | e4.( d8) | cis8\noBeam d e4 | e4 e8( d) | e8( f) g8( f) | e4 r4 | e8\noBeam f g8( a) | 
a8( g) g8( a) | a8( g) g8( f) | e4.( d8) | 
\varB
cis8\startTextSpan\noBeam d e4\stopTextSpan | e4 e 
 \bar "|." 
\endm
\varA
a8\startTextSpan( g) g4\stopTextSpan \bar "||"
\varB
cis,8\startTextSpan\noBeam d4 e8\stopTextSpan
\bar "|."
}
\addlyrics { И- ван на Стан- ка ду- ма- ше: Стан- ки мо, бе- ним бал- дъ- зо, 
И- ван на Стан- ка ду- ма- ше: Стан- ки мо, бе- ним бал- дъ- зо }
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
  opus = "ВА-2,1,11"
  tagline = ##f
}


