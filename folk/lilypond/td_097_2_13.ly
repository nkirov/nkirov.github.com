%{
TD_097_2_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
 \time 2/4

\override Glissando #'style = #'zigzag
e8\noBeam d d4\mordent | \acciaccatura d8 c4.( a8) | 
b4 c | 
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
 \noteFi \hideNotes a4\startTextSpan\glissando \unHideNotes d8\noBeam b b4\stopTextSpan\mordent |
\set Score.measureLength = #(ly:make-moment 2 4)
a2 |
\set Score.measureLength = #(ly:make-moment 3 4)
a8( b) c( \noteFi d)\glissando \hideNotes e4 \unHideNotes  | 
\set Score.measureLength = #(ly:make-moment 2 4)
e8\noBeam d d4\mordent | 
\varB
c4.\startTextSpan( a8\stopTextSpan) | 
b4 c | d8\noBeam b b16([ a8.)] | a2 | a4 a\fermata
 \bar "|."
s4 \fixB d,4 \fixC
  \bar "|." 
\endm
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
\noteFi \hideNotes a'4\startTextSpan\glissando \unHideNotes d8\noBeam b b16([ a b a\stopTextSpan]) \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)
\varB
\acciaccatura d8\startTextSpan c4.( a8\stopTextSpan)
   \bar "|." 
}
\addlyrics { Да и- ма край ка- бил " " две жи- ни да во- дя, " "  
две жи- ни да во- дя и Нед- ка да взе- ма }
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
  opus = "ТД-97,2,13"
  tagline = ##f
}


