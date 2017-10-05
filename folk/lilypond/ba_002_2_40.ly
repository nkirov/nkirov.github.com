%{
BA_2_2_40
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  \repeat volta 2 { a4 b8( a) | b8.([ a16] g4) | a b8( a) | a2 }
  \alternative { { a4 g16([ fis g8]) } { a4 a } }
 d c | b8.([ a16] g4) | a4 b8( a) | a4.( g8) | b8( a) g4 | 
\varA 
 a4\startTextSpan a\stopTextSpan | 
b4.( a16[ g]) | a4 b8( a) | a2 | a4 a
 \bar "|."
\endm
\varA 
 a4\startTextSpan b8( a\stopTextSpan)  \bar "|." 
}
\addlyrics { Ка- кво и цве- ти цъф- на- ло -на- ло "в поп" Ни- ко- лов' та 
гра- дин- ка, "в поп" Ни- ко- лов' та гра- дин- ка }
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
  opus = "ВА-2,2,40"
  tagline = ##f
}


