%{
td_138_2_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 104
\cadenzaOn
b8([ c]) \acciaccatura c8 d1 d8([ ees] d[ c16 b]) c1( d16[ c b c] d[ c b8]) r4
c4 d ees!8 d\noBeam 
\bar ""
c8 b\noBeam~ b1~ b2 r4 c \acciaccatura c8 d2. d8[( ees!]) c2.( d16[ c b c]) r4
d8. c16\noBeam b8 aes\noBeam g g\noBeam~ g1 r4 r
\bar ""
c8.([ d16]) 
\varA
s2\startTextSpan d2\stopTextSpan 
c16[( d c b]) aes!4 r g8 aes!\noBeam^"↑" b aes!\noBeam^"↑" 
\varB
s8\startTextSpan g8\stopTextSpan 
g\noBeam~ g1
 \bar "|." 
s4 \fixB c, \fixC
 \bar "|." 
s16 \clef treble
\varA
s16\startTextSpan d'4\stopTextSpan \bar "||"
\varB
s16\startTextSpan aes!8\stopTextSpan 
 \bar "|."  
}
\addlyrics { Във Со- фи- я,  във тъм- ни тъм- ни- ци 
млад не- вол- ник теж- ко ра- нен
ле- жи "с де-" вет лю- ти ра- ни кур- шу- ме- ни }
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
  opus = "ТД-138,2,16"
  tagline = ##f
}


