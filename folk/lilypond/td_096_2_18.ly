%{
laz_096_2_18
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%% \tempo 8 = 160
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"80"
 \time 5/16
 g8 a8. | 
 \varA
 b8\startTextSpan~ b8.\stopTextSpan | 
 \varB
 a16\startTextSpan([ g~] g8.\stopTextSpan) | 
 \varC
 \parS
 a16\startTextSpan([ b)] b8.\stopTextSpan-\parenthesize\prall | 
 \varD
 a8\startTextSpan-\parenthesize\prall g8.\stopTextSpan | 
 g8 a8. | \acciaccatura a8 b8~ b8. | a16([ g~] g8.) | a16([ b)] a8. | a8 a8. 
 \bar ":|" 
s16 \fixB d,4 \fixC
 \bar "|."
 \endm
 \set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
\varA 
\acciaccatura a'8\startTextSpan b8~ b8.\stopTextSpan \bar "||"
 \varB
 a8\startTextSpan\prall( g8.\stopTextSpan)  \bar "||"
 \varC
\acciaccatura a8\startTextSpan b b8.\stopTextSpan  \bar "||"
 \varD
 a8\startTextSpan g16([ f8\stopTextSpan]) 
  \bar "|."
}
\addlyrics { Сед- на Стой- чо да ви- че- ря, сед- на Стой- чо да ви- че- ря }
\addlyrics { на сре- бър- на па- ра- ли- я, на сре- бър- на па- ра- ли- я }
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
		tempoWholesPerMinute = #(ly:make-moment 160 8)
		}
	}
}
%
\header{
  opus = "ТД-96,2,18"
  tagline = ##f
}


