%{
sva_094_2_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 72
\cadenzaOn
\varA
a8\startTextSpan([ b\stopTextSpan]) 
c16[( b c b]) a4 \acciaccatura { a16[ b] } c4 
\varB
b2\startTextSpan( a8[ g\stopTextSpan]) 
a16[( b)] c([ b]) \afterGrace b4( { a16[ b]) } 
\times 2/3 { a16[( b a] } g[ a]) g2~ g8 r8 
 \bar ""
\acciaccatura g8 a8.([ b16]) 
c16[( b c b]) \acciaccatura a8 \afterGrace b4( { \stdB a8) \stdE } a4 a2
 \bar "|." 
 s4 \fixB cis, \fixC
  \bar "|."
 s64 \clef treble 
\varA
\acciaccatura g'8\startTextSpan a8.([ b16\stopTextSpan]) \bar "||"
\varB
b2\startTextSpan( a16[ b a g\stopTextSpan]) 
   \bar "|." 
}
\addlyrics { Ни сме зна- я- ли, 
дра- \startTextSpan ги ми ку- ме, \stopTextSpan ни сме зна- я- ли }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
	}
}
%
\header{
  opus = "ТД-94,2,5"
  tagline = ##f
}


