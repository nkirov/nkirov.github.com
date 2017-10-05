%{
sva_093_1_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 8 = 110
%%\time 2/4
\cadenzaOn
\varA
a4.\startTextSpan( b8) \acciaccatura c8 d4 c c16([ b c8] b16[ a8.\stopTextSpan]) 
\varB
a4.\startTextSpan( g8\stopTextSpan) \breathe
a4 b c2(~ c8[ b16 a] b[ a g8]~ g2\fermata)
c4.( d8) \acciaccatura { d16[ e] } d4 d c( b16[ a b8]) 
\bar ""
%\break
\varB
a4.\startTextSpan( g8\stopTextSpan) \breathe
c8([ bes]) bes![( a)] a2\fermata
\bar "|."
s4 \fixB c, \fixC
\bar "|."
%%\break
\varA
c'4.\startTextSpan( d8) e8[( d]) d16[( c d8])c4.( bes8\stopTextSpan) \bar "||"
\varB
a2\startTextSpan( g4\stopTextSpan) 
 \bar "|." 
}
\addlyrics { Йе- ла са ви- ва- пре- ви- ва, мо- ма са с'ро- да про- ща- ва }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 110 8)
		}
	}
}
%
\header{
  opus = "ТД-93,1,14"
  tagline = ##f
}


