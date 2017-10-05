%{
sva_134_1_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
%%\time 2/4
\cadenzaOn
\phrasingSlurDown
\ii a8
\parS
b2 \acciaccatura b8 a4 \acciaccatura b8 c4 \afterGrace b4(\( { \stdB c8\) \stdE } b8[ g])
a1 
\varA
b4\startTextSpan( a\stopTextSpan) 
b2-\parenthesize^\ltoe b1( 
\varB
c16\startTextSpan[ b a b\stopTextSpan] 
a1 
b16[ a g8]) r4  g'8 \phrasingSlurNeutral b,2
\bar "" \break
 \acciaccatura b8 a4 \acciaccatura b8 c4 \acciaccatura c8 b4( \grace c8\( b\)[ g]) 
\varC
s8\startTextSpan a1\stopTextSpan 
b8[( c] b[ a]) b2-\parenthesize^\ltoe b1~ b fis'4
 \bar "|." 
s4 \fixB f, \fixC
  \bar "|." 
 s16 \clef treble
\varA
b4\startTextSpan\prall( a\stopTextSpan) \bar "||"
\varB
a16\startTextSpan[ b a b\stopTextSpan] \bar "||"
\varC
s8\startTextSpan a2.\stopTextSpan 
  \bar "|."  
}
\addlyrics { и Хра- ни- ла май- ка, гле- да- ла, и, два си- на, дор два бли- зна- ка, и }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,5"
  tagline = ##f
}


