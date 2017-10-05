%{
td_096_1_13
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 144
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
f4 g8([ aes]) b[( c]~ c1 d16[ c b c] d[ c b8]~ b2.) \acciaccatura b8 c4^\rtoe
c8[( b]) b16[( c b aes!] g2.\glissando c4^\rtoe)
\bar ""
c16[( d c b]) b1.\fermata r4 r \bar ""
f8 g4. b8[( c]~ c2. \times 2/3 { d8[ c b] } 
c[ b] \grace { \stdB c8\( \stdE } b\)[ aes!] \afterGrace g2.)\( { \stdB aes!8\) \stdE }
\bar ""
b8[( c]) c[( b]) b16[( c b aes!] g2.) g4^\rtoe g1.\fermata
 \bar "|." 
s4 \fixB e
  \bar "|." 
}
\addlyrics { Как- во са~й хо- ро за- ви- ло до Ян- ки- ни- те пор- тич- ки }
%
\layout {
   \context { 
	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-96,1,13"
  tagline = ##f
}


