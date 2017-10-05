%{
BA_1_2_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA
c4\startTextSpan c8\noBeam c\stopTextSpan | 
b4 aes | g2 | f8( e) d4 | f4 f8\noBeam f | 
\acciaccatura g8 aes4 b8^"↓"( aes) | 
\varB
g4\startTextSpan r4\stopTextSpan | 
\varC
aes4\startTextSpan b^"↓"\stopTextSpan | 
c4 c8\noBeam c | b4 aes4 | g2 | f8( e) d4 | f4 f8\noBeam f | 
\varD
\acciaccatura g8\startTextSpan aes4 b8^"↓"( aes\stopTextSpan) | 
g2 | g4 g 
 \bar "|."
\endm 
\varA
d'4\startTextSpan c8\noBeam c\stopTextSpan \bar "||"
\varB
g4.\startTextSpan( f8\stopTextSpan) \bar "||"
\varC
g8\startTextSpan( aes) b4^"↓"\stopTextSpan \bar "||"
\varD
f4\startTextSpan b8^"↓"( aes\stopTextSpan) 
\bar "|." 
}
\addlyrics { Бра- ла йе Ян- ка я- го- ди край Ни- ко- ло- ва ма- на- стир, 
бра- ла йе Ян- ка я- го- ди край Ни- ко- ло- ва ма- на- стир  }
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
  opus = "ВА-1,2,24"
  tagline = ##f
}


