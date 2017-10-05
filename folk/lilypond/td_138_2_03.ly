%{
TD_138_2_03
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 84
%\time 5/16
\cadenzaOn
e8[( f]) g4 \acciaccatura g8 a[( g]) \acciaccatura g8 
a2.( b16[ a g a] b32[ a g16]) r8^\rtoe \bar ""
\varA
\acciaccatura g8\startTextSpan a8.[( g16]) g8[( a\stopTextSpan])
 \acciaccatura { a16[ g] } f8.[( e16]) e2. r4
\bar ""
e8[( f]) 
\varB
s8\startTextSpan g4\stopTextSpan \bar ""
a8[( g]) \acciaccatura g8 f2\mordent( g16[ f e f] g32[ f e16]) r8^\rtoe \bar ""
g8.[( f16]) f[( g8.]) \bar ""
\varC
\acciaccatura g8\startTextSpan f16[( e f g] f[ e\stopTextSpan]) 
e2. r4
\bar ""
e8[( f]) 
\varB
s8\startTextSpan g4\stopTextSpan \bar ""
a8\prall[( g]) \acciaccatura g8 \afterGrace f2.\mordent(\( { e16[ f]\) }
g32[ f e16]) r8 \bar ""
g4 f16[( g8.]) \bar ""
\varD
\acciaccatura g8\startTextSpan f16[( e f g] f[ e\stopTextSpan]) 
e2.
 \bar "|." 
s4 \fixB e \fixC
 \bar "|." 
s16 \clef treble
\varA
a4\startTextSpan g\stopTextSpan\prall \bar "||"
\varB
\acciaccatura f8\startTextSpan g4\stopTextSpan \bar "||"
\varC
\acciaccatura g8\startTextSpan f8.[( e16\stopTextSpan]) \bar "||"
\varD
\acciaccatura g8\startTextSpan f8[( e\stopTextSpan]) 
\bar "|."  
}
\addlyrics { Я- но, Я- но, дюл- бер Я- но, дюл- бер Я- на жет- ва же- ни 
на два пъ- тя, на два дру- ма }
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
		tempoWholesPerMinute = #(ly:make-moment 84 4)
		}
	}
}
%
\header{
  opus = "ТД-138,2,3"
  tagline = ##f
}


