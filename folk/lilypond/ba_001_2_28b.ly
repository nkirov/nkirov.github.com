%{
BA_1_2_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
c4^"II изпяване" f | e4. e8 | d4 c8( b) | c4 d8( c) | b4 c4 | d8( e) f4 | 
\break
 d4 f | e4. e8 | d4 c8( b) | b8( c) d4 | e8->( d) d4 | d4 d 
\bar "|." 
}
\addlyrics { Из- лъ- га щим Ра- да, из- лъ- га щим Ра- да да на- бе- ре Ра- да, да на- бе- ре Ра- да }
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
%%  opus = "ВА-1,2,28"
  tagline = ##f
}


