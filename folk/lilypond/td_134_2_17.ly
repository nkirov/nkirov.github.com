%{
TD_134_2_17
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 8 = 200
%\time 5/16
\cadenzaOn
e8 d\noBeam a'1( b8[ a16\prall g] a[ b a g]) e[( f]) g[( a8.]) 
\acciaccatura { g16[ a g a] } g2.( \afterGrace a4\( { b16[ a g]\) } 
\times 2/3 { a16[ b a } g f]) 
\varA
g8\startTextSpan[( f32 g f e\stopTextSpan]) 
d1~ d2 r4 r
\bar ""
\varB
d8\startTextSpan e16[( f\stopTextSpan]) 
\varCD
g2.\startTextSpan( \afterGrace a4\( { b16[ a g]\) } a[ b a g\stopTextSpan])
\varEF
f8\startTextSpan g4\stopTextSpan 
\parS
\afterGrace f!8-\parenthesize^↑[(\( { g16[ f]\) } e f]) e8 e1~ e~ e2
 \bar "|." 
s4 \fixB d \fixC 
 \bar "|." 
s16 \clef treble
\varA
g8\startTextSpan[( \times 2/5 { f32 g f e f\stopTextSpan]) } \bar "||"
\varB
d4\startTextSpan e16[( f!\stopTextSpan^↑]) \bar "||"
\varC
g16\startTextSpan([ a] g[ a g fis] g2 \afterGrace a4)\( {  b16[ a g\stopTextSpan]\) } \bar "||"
\varD
g2\startTextSpan( \afterGrace a4\( { b16[ a]\) } g4\stopTextSpan) \bar "||"
\varE
g16\startTextSpan[ fis!] g4\stopTextSpan \bar "||"
\varF
g16\startTextSpan[ f!^↑] g4\stopTextSpan
 \bar "|."  
}
\addlyrics { Слън- ци- то треп- на да зай- де, Ма- рий- ка чи- към за- фа- ща }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 200 8)
		}
	}
}
%
\header{
  opus = "ТД-134,2,17"
  tagline = ##f
}


