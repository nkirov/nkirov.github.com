%{
TD_138_1_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 116
 \time 2/4
% \tempo 8 = 168
% \time 7/16
\varA
d4\startTextSpan a\stopTextSpan | 
\acciaccatura c8 d2 | 
\varB
\acciaccatura e8\startTextSpan d4 c\stopTextSpan | 
\varC
d\startTextSpan( \times 2/3 { e8[ d c\stopTextSpan]) } |
c8\prall([ bes)] a4 | 
\acciaccatura c8 d4 c | \acciaccatura c8 d4( \times 2/3 { e8[ d c)] } | 
\varD
d4\startTextSpan c8\prall[( bes\stopTextSpan)]  |
\break
\varE
a2\startTextSpan^\rtoe | a4 a\fermata\stopTextSpan
 \bar "|." 
 s4 \fixB d,4 \fixC
 \bar "|." 
 \endm
\varA
\acciaccatura c'8\startTextSpan d4 a\stopTextSpan  \bar "||"
\varB
\acciaccatura e'8\startTextSpan d4 d8([ c\stopTextSpan)] \bar "||"
\varC
\acciaccatura c8\startTextSpan d4.( c8\stopTextSpan]) \bar "||"
\varD
\override Glissando #'style = #'zigzag
\set Score.measureLength = #(ly:make-moment 3 4)
d4\startTextSpan \noteFi c4\glissando \hideNotes a4\stopTextSpan \unHideNotes \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)
\varE
a8\startTextSpan a4. | a2\stopTextSpan
 \bar "|." 
}
\addlyrics { Ба- так е- ла- ма из- ля- зъл, бре, Ба- так да ми у- да- рет }
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
		tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,16"
  tagline = ##f
}


