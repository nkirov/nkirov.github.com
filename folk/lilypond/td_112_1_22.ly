%{
sva_112_1_22
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 168
\time 2/4
e8( f) g4 | \acciaccatura b8 c4 g | f8( e) d4 | f f8( e) | d4 d |
\acciaccatura g8 a4 a8( g) | f4 g | \acciaccatura b8 c4 g | 
\varA
f8\startTextSpan( e) d4\stopTextSpan | 
\varB
f\startTextSpan f8( e\stopTextSpan) | 
\acciaccatura f8 g4 d | d d
 \bar "|." 
 s4 \fixB b \fixC
 \bar "|." 
\endm
\varA
f'8\startTextSpan( e) d( c\stopTextSpan) \bar "||"
\varB
f4\startTextSpan f16( g f e\stopTextSpan)
 \bar "|." 
}
\addlyrics { Дим- чо са~й раз- сър- дил за- що съм му рек- ла, 
за- що съм му рек- ла: Дим- чо, май- на- та ти }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
  opus = "ТД-112,1,22"
  tagline = ##f
}


