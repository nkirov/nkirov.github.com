%{
BA_2_1_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 5/16
\repeat volta 2 {
  \varA  
d8\startTextSpan\noBeam e8.\stopTextSpan | 
e8~\noBeam e8. | e8 e16([ d8]) | }
\alternative  { {  
  d8~\noBeam d8. | e16([ d]) c8. }
%% \bar ":|" 
{ d8~( d16 [ c8]) | d16([ e]) e8 r16 } }
\break
\bar "|:"
\varB
c8\startTextSpan d16([ e8\stopTextSpan]) | 
\slurDown
d8~ \afterGrace d8.( { e16 [ d c]) } | 
\slurNeutral
c16([ b]) a8. | 
\parG
a8\noBeam~ 
\afterGrace a8.( { \stdB \parenthesize g8) \stdE } | 
d'16([ c]) c32([ b g8]) | b16([ c]) d16([ c8]) | 
\slurDown
d8~ \afterGrace d8.( { c16[ b c] ) } | 
\slurNeutral
c16([ b]) a8. | a8~\noBeam a8. | a8\noBeam a8.
 \bar ":|"
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble 
 \varA  
d8\startTextSpan\noBeam d16.([ e)]\stopTextSpan \bar "||" 
\varB
b16([\startTextSpan c)] d16([ e8\stopTextSpan]) 
\bar "|." 
}
\addlyrics { О- бла- ка до- дье, дъжд ня- ма, дъжд ня- ма, Ра- до мо, ма- ри, 
трив- нян- ке, трив- нян- ке, ки- ли- фар- чен- ке }
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
  opus = "ВА-2,1,23"
  tagline = ##f
}


