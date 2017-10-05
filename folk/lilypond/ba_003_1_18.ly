%{
BA_3_1_18
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a4. b8 | c4 d | 
\varA
c4.\startTextSpan( b8\stopTextSpan) | 
a4 \acciaccatura c8 d4 | 
\gliss
\noteFi c4.\glissando g8 | c4 c8( b) | a2 | 
\varB
a8\startTextSpan( b) c( d\stopTextSpan) | 
c4. g8 | c4 c8( b) | a2 | a4 a 
 \bar "|." 
\endm
\varA
c4.\startTextSpan( \times 2/3 { d16[ c b]\stopTextSpan) } \bar "||"
\varB
c4\startTextSpan d\stopTextSpan 
\bar "|."
}
\addlyrics { Ка- льо, бя- ла бъл- гар- ко, фър- ли, мет- ни я- бъл- ка, 
фър- ли, мет- ни я- бъл- ка }
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
  opus = "ВА-3,1,18"
  tagline = ##f
}


