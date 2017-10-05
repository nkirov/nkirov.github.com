%{
kav_140_1_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
 \time 2/4
 \varA
 d4\startTextSpan c8( d\stopTextSpan) | 
 d16[( c b8]) a4 | 
 \varBC
 c8\startTextSpan( 
 \slurDown
 \afterGrace d4.)( { \stdB c8) \stdE } | 
 \slurNeutral
 b2 | a8( g) a4\stopTextSpan | 
 b4 b8( a) | g( fis) g4 | 
 \varDEF
 b4.\startTextSpan( g8\stopTextSpan) | 
 a2 | a4 a
 \bar "|." 
s4 \fixB cis, \fixC
\bar "|." 
\break
 \varA
 d'8\startTextSpan( c8) d4\stopTextSpan \bar "||"
 \varB
 \acciaccatura c8\startTextSpan d2 | \acciaccatura { d16[ c] } b4.( a8) | 
 a8( gis) b4\stopTextSpan \bar "||"
 \varC
 \acciaccatura c8\startTextSpan d4.( c8) | \acciaccatura { d16[ c] } b2 | a8( g) a4\stopTextSpan \bar "||"
 \varD
 b4\startTextSpan~( b16[ c b g\stopTextSpan)] \bar "||"
 \varE
 a4\startTextSpan( b\stopTextSpan) \bar "||"
 \varF
 a8\startTextSpan( b4 g8\stopTextSpan)
\bar "|." 

}
\addlyrics { Къл- ни, къл- ни, мал- ка мо- ме, ко- го- то си щеш ти къл- на }
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
  opus = "ТД-140,1,13"
  tagline = ##f
}


