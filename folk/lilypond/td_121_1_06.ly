%{
TD_121_1_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 138
  \time 2/4  
  \repeat volta 2 { a4 b | b4.( c8) | d8( c) b( a) | a4 b8( a) | a2 }
  \alternative { { b8( a) g4 }
  { b8( a) g( fis) } } \bar "||"
d4 e8( fis) | g4.( a8) | 
\varA
a8\startTextSpan( g) g( fis\stopTextSpan) | 
a4 e | e r4 |
b'8( a) g( fis) | d4 e8( fis) | g4.( a8) | a8( g) g( fis) | a4 e | e2 | e4 e
 \bar ":|" 
 s4 \fixB d4 \fixC
\bar "|." 
\endm
\varA
a'8\startTextSpan( g) b( a\stopTextSpan)
\bar "|." 
}
\addlyrics { Сно- щи е Ян- ка от го- ра сляз- ла, сляз- ла,  от го- ра сляз- ла,
във се- ло фляз- ла,  от го- ра сляз- ла, във се- ло фляз- ла }
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
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-121,1,6"
  tagline = ##f
}


