%{
sva_139_1_05a
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 104
%%\time 2/4
\cadenzaOn
\parS
a4 b2-\parenthesize^\rtoe c4\mordent 
c8( s4-\parenthesize^\rtoe b4.) \acciaccatura b8 c4 \acciaccatura d8 c4(
\acciaccatura { d16[ c] } b4) 
\varA
b8\startTextSpan([ a\stopTextSpan])
b2-\parenthesize^\rtoe \acciaccatura b8 c4  \bar "" 
\break
\varB
b4\startTextSpan\prall( c16[ b a8\stopTextSpan]) 
\varC
s4\startTextSpan b4\stopTextSpan 
b2~ b2.
 \bar "|." 
 s4 \fixB g \fixC
  \bar "|." 
 s16 \clef treble  
\varA
s4\startTextSpan a\stopTextSpan  \bar "||"
\varB
\acciaccatura c8\startTextSpan b4( a\stopTextSpan) \bar "||"
\varC
\acciaccatura a8\startTextSpan b4\stopTextSpan 
 \bar "|."   
}
\addlyrics { И- ма- ла е Я- на два бра- та на- до- лу }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 104 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,5"
  tagline = ##f
}


