%{
eng_134_2_36b
%}

\include "td-preamble.ly"

\score {
\relative c' {
%\tempo 4 = 92
%%\time 2/4
\cadenzaOn
 a'8([ b ] \grace { a16[\( b a g] } a1\)) a16[( b a\prall g] s^\rtoe a[ b a8]) 
 a16([ b a\prall g^"↑"] a2. b8[ a32 b a g] a[ b a g] a[ b a g]) r4 r
 \bar "|"  
 g16([ a8.]) a8([ g16\prall f] g16[ \afterGrace a8.])( { g16[ a]) } 
 \afterGrace g8\([( { \stdB f8\) \stdE } e)] 
 e2.( f8[ e16 d]) r4 r 
 a'16[( b a\prall g^"↑"] \afterGrace a2.\( { \stdB b8\) \stdE } a32[ b a g] a[ b a g)]
 \bar "|"
 g8([ s^\ltoe a)] \acciaccatura { g16[ a g f] } e4 e2.( f8[ e16\prall d]) r4 r e4.( d8) 
 g16([ a] \times 2/3 { g\prall[ fis g] } \afterGrace a4)\( { g16[ a\)] } 
 \acciaccatura { g16[ a g fis] } e4 e2. e1~ e2
 \bar "|."
}

\addlyrics { %%Ку- ку- ви- ца- та ку- ку- ва на ви- со- ка- та~й мо- ги- ла
на ви- со- ка- та~й мо-  ги- ла на ши- ро- ка та~й по- ля- на }
%
\layout {
   \context { \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 92 4)
		}
	}
}
%
\header{
%  opus = "ТД-134,2,36"
  tagline = ##f
}


