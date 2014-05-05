%{
laz_134_2_30
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 168
\time 2/4
\varA
a8\startTextSpan( b) c( b) | c2\prall | c16( b a b a4\stopTextSpan) | 
\parS
a2 | c4 c8-\parenthesize\prall( b) | a2 | 
\varBC
a4\startTextSpan g\stopTextSpan |
\varD
\acciaccatura a8\startTextSpan c2\stopTextSpan |
\break
\varEF
\time 4/16 c16\startTextSpan([ b a b\stopTextSpan)] | 
\time 2/4 a2~ | a\fermata | a4^\ltoe a^\rtoe | a2
\bar "|."
s4 \fixB cis, \fixC
\bar "|."
\break %%\endm
\varA
a'8\startTextSpan( b) c( d) | c8( d d4\mordent) | \acciaccatura { c16[ b] }  a2\stopTextSpan \bar "||"
\varB
c8\startTextSpan( b) b4\stopTextSpan  \bar "||"
\varC
a8\startTextSpan( b) c( d\stopTextSpan)  \bar "||"
\varD
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan c2\trill\stopTextSpan \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)
\varE
\time 4/16
\set Score.measureLength = #(ly:make-moment 5 16) 
 s16\startTextSpan bes4\stopTextSpan  \bar "||"
\varF
\time 2/4
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan bes2\stopTextSpan^\ltoe
\bar "|."
}
\addlyrics { За- спа- ло ми йе ди- тен- це, ма- ми- но, ми- ло мом- чен- це }
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
  opus = "ТД-134,2,30"
  tagline = ##f
}


