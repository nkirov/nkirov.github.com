%{
TD_140_1_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 138
  \time 2/4
\override Glissando #'style = #'zigzag  
g4 a | \acciaccatura a8 c2 |
\varA
\set Score.measureLength = #(ly:make-moment 3 4) 
c4\startTextSpan( d8 c16 \noteFix b)\glissando\stopTextSpan \hideNotes f4 \unHideNotes |
\set Score.measureLength = #(ly:make-moment 2 4) 
c'4 \noteFi c8\glissando( a) c4 c8( bes) 
\varB
c8.\startTextSpan( b16 a8[ g)] \stopTextSpan |
\parS
a2-\parenthesize-\rtoe | a4 a
 \bar "|." 
 s4 \fixB ees4 \fixC 
 \bar "|."
\endm 
 \varA
c'8.\startTextSpan([ d16] c8[ bes\stopTextSpan)]  \bar "||" 
 \varB
c8\startTextSpan([ b a g\stopTextSpan)]
 \bar "|."

}
\addlyrics { Ра- де, бя- ло " " Ра- де, зна- еш ли, пом- ниш ли }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%   ragged-last = ##t
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}

\header{
  opus = "ТД-140,1,4"
  tagline = ##f
}


