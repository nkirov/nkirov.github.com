%{
sva_139_1_11
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 4 = 136
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkCdot #"132-138"
\time 2/4
\acciaccatura g8 a4 b | \acciaccatura c8 d4 b | b a | e2 | 
\varA
a4\startTextSpan\prall a8.([ g16\stopTextSpan]) |
\varB
b4\startTextSpan a\stopTextSpan | 
\varC
e4\startTextSpan e\stopTextSpan | 
e2 | 
\break
\acciaccatura g8 a4 b \acciaccatura c8 d4 b | b a | e2 |
\varD
b'8\startTextSpan([ a]) a4\stopTextSpan | 
\varE
\acciaccatura a8\startTextSpan b4 g\stopTextSpan | 
\acciaccatura a8 g([ fis]) e4 | e2
 \bar "|." 
 s4 \fixB fis \fixC
 \bar "|." 
\break %% \endm
\varA
g8\startTextSpan([ a]) a8([ g\stopTextSpan]) \bar "||"
\varB
b4\startTextSpan g\stopTextSpan \bar "||"
\varC
e4\startTextSpan \acciaccatura a8 g([ fis\stopTextSpan]) \bar "||"
\varD
a4\startTextSpan\mordent a\stopTextSpan \bar "||"
\varE
b8\startTextSpan([ a]) \acciaccatura a8 g4\stopTextSpan 
 \bar "|."  
}
\addlyrics { Фа- ле- на- та бул- чи- ца фа- лен зел- ник сто- ри- ла: 
три- де- ня го то- ка- ла, пет де- ня го пе- ка- ла  }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 134 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,11"
  tagline = ##f
}


