%{
kav_139_2_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
 \time 2/4
 d8( e) d4 | d8( e4 d8) | d( e) d( c) | 
 d(  \slurDown \afterGrace e4.)( { g16[ f e]) } \slurNeutral |
\varA 
 \acciaccatura d8\startTextSpan e4 d8( c\stopTextSpan) | 
 b( c) d4 | c8( d4 c8) | 
\varB
 d\startTextSpan( c) c4\stopTextSpan | 
 a a | a2
 \bar "|." 
s4 \fixB cis, \fixC
 \bar "|."
 \endm
\varA 
 d'8\startTextSpan( e) d8( c\stopTextSpan) \bar "||"
\varB
 d4\startTextSpan c4\stopTextSpan  
  \bar "|."
}
\addlyrics { Тва, що йе чу- до ста- на- ло във Сей- мен гра- да го- ля- ма }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,23"
  tagline = ##f
}


