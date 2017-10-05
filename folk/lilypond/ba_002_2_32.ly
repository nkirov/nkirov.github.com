%{
BA_2_2_32
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  g4 b8( c) | 
\slurDown  
  \afterGrace d2\fermata({ c16[ b])} | 
\slurNeutral  
\varA  
d4.\startTextSpan c8\stopTextSpan | 
\varB
c8\startTextSpan([ b] a4\fermata\stopTextSpan) | 
\gliss
\set Score.measureLength = #(ly:make-moment 9 16)
b4 \noteFi c\glissando \hideNotes g16 \unHideNotes | 
\set Score.measureLength = #(ly:make-moment 2 4)
d'8 c4. | 
\varC
b8\startTextSpan( a4.\prall\fermata\stopTextSpan) | 
\varD
b4\startTextSpan a8( g\stopTextSpan) | 
g2\fermata | g4 g   
 \bar ":|" 
\endm 
\varA  
d'8\startTextSpan( c) c4\stopTextSpan \bar "||" 
\varB
b4\prall\fermata\startTextSpan( a4\stopTextSpan) \bar "||"| 
\varC
\parS
\acciaccatura c8\startTextSpan b4-\parenthesize-\prall\fermata( a4\stopTextSpan) \bar "||" 
\varD
g4\startTextSpan a4\stopTextSpan 
\bar "|."
}
\addlyrics { Ма- ма Ма- рий- ки ду- ма- ши: " " Ма- рий- ке, ка- зъм Ма- рий- ке, }
\addlyrics { за- що, Ма- рий- ке, за- къс- ни, " " на чуш- ма, ка- зъм, за во- да }
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
  opus = "ВА-2,2,32"
  tagline = ##f
}


