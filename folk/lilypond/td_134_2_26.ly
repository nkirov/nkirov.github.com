%{
laz_134_2_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 168
\time 2/4
s8 b4 s8 \bar "||" 
\acciaccatura c8 d2 | 
\varA
d4\startTextSpan d8( e\stopTextSpan) | 
\varB
d4.\startTextSpan\mordent( c8\stopTextSpan) | 
\varC
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan b2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
b | d8( cis) d( e) |
d16([ e d cis] d4) | 
\varD
b\startTextSpan d\stopTextSpan | 
\varE
\acciaccatura e8\startTextSpan d16([ c] b4.\stopTextSpan) | 
\varC
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan b2\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
b~ | 
\afterGrace b\fermata( { \stdB a8) \stdE } | b4 b\fermata | 
b4 b\fermata
 \bar "|." 
 s4 \fixB e, \fixC
 \bar "|." 
\endm
\varA
d'8\startTextSpan( cis) d( e\stopTextSpan) \bar "||"
\varB
\afterGrace d4\startTextSpan(\( { \stdB e8\) \stdE }  
d8[ c\stopTextSpan)] \bar "||"
\varC
\afterGrace b2\startTextSpan( { 
  \override Stem  #'stroke-style = #"grace" a8) \stopTextSpan 
  \revert Stem #'stroke-style } \bar "||"
\varD
a4\startTextSpan d\stopTextSpan \bar "||"
\varE
d8\startTextSpan( c b4\stopTextSpan) 
 \bar "|."  
}
\addlyrics { и Ов- ча- ро- ва- та май- чи- ца, тя са за йов- чар на- дя- ва }
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
		tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,26"
  tagline = ##f
}


