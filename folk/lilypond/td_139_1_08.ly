%{
sva_139_1_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 84
%%\time 2/4
\cadenzaOn
\parS
\acciaccatura b8 c[( b]) c2.-\parenthesize\prall( c16[ d c b] 
\varA
c\startTextSpan[ d c b\stopTextSpan]) s8
\acciaccatura b8 a1( g8) r8
\acciaccatura b8 c[( b^"↓"]) 
\varB
c8.\mordent\startTextSpan([ d16] c[ b^"↓" \grace { a16[\( bes] } g8\stopTextSpan]\))
a4 a2.( bes!32[ a g a] bes[ a g16]) 
\bar ""
g1~ g4 r4 a8([ g]) a2.( bes!32[ a g a] bes[ a g16])
g2~ g8 r8 a4 bes!16[( a bes a] g4^\ltoe)
\bar ""
 a a2~( a16.[ bes!32 c16 bes]) a1~ a2
 \bar "|." 
s4 \fixB a \fixC
  \bar "|." 
 s16 \clef treble
\varA
 \times 4/5 { c16\startTextSpan[ d c b a\stopTextSpan] } \bar "||"
\varB
c8.\startTextSpan\mordent([ b16^"↓"]) \acciaccatura { a16[ bes!] } g4\stopTextSpan
 \bar "|."   
}
\addlyrics { Рад- ка са с'май- ка про- ща- ва: Про- ща- вай, ма- мо, про- ща- вай }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 84 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,8"
  tagline = ##f
}


