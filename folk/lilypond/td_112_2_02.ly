%{
sva_112_2_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 220
%%\time 2/4
\cadenzaOn
\acciaccatura b8 c b16[( c b a]) g4 g8 
c2.\mordent\fermata^"↓"( d32^>[ c b c]  d^>[ c b c]  
\varA
d\startTextSpan^>[ c b c] b16\prall[ a\stopTextSpan]) 
r4 a8 c4.\mordent  d32[( c b c]  
\varB
d\startTextSpan[ c16.\stopTextSpan]) 
\varC
d32\startTextSpan[( c b16\stopTextSpan])
a2.\fermata r4
 \bar ""
 c8 b16([ c b a]) g4 g8 c4\mordent( d32^>[ c b c] d^>[ c b c] 
\varD 
 d\startTextSpan^>[ c b16]) a8 \acciaccatura b8  c\stopTextSpan\noBeam 
\acciaccatura { b16[ a g] } a4 
\varEF
s8\startTextSpan  g8\stopTextSpan
g2\fermata
 \bar "|." 
 s8 \fixB a \fixC
  \bar "|." 
\break  
\varA
d32\startTextSpan^>[ c b16] a8\stopTextSpan \bar "||" 
\varB
d32\startTextSpan[ c b16\stopTextSpan] \bar "||" 
\varC
\afterGrace b8\startTextSpan( { \stdB a\stopTextSpan) \stdE } \bar "||" 
\varD 
 d32\startTextSpan^>[( c b16] a8)  r8 a\noBeam \acciaccatura b8  c\stopTextSpan\noBeam \bar "||" 
\varE
s8\startTextSpan  g4\stopTextSpan \bar "||" 
\varF
s8\startTextSpan  g16\stopTextSpan
  \bar "|." 
}
\addlyrics { Чи- чо на Не- да ти- хом го- во- ри: 
Не- до мо, ми- ла Не- до, чи- чо- ва }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 220 8)
		}
	}
}
%
\header{
  opus = "ТД-112,2,2"
  tagline = ##f
}


