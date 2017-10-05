%{
sva_139_1_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 66
%%\time 2/4
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
d8([ cis]) \acciaccatura cis! d2(~ d8[ e32 d cis! d] \times 2/3 { e16[ d cis^"↓" } b8]) b2. 
\acciaccatura cis!8 d8([ cis!]) d8\mordent([ \times 2/3 { e16 d^\ltoe cis] } b[ cis a8])
b4 b4.( cis32[ b a b] c[ b a8.]) 
\bar "" 
a2. r4 
\varA
b8\startTextSpan([ a\stopTextSpan]) 
b4.( cis32[ b a b] cis[ b a8.])
a4. r8 b b\noBeam( \grace { cis16[\( b] } a4\)) b b4.\glissando( d16^"↓"[ cis]) b1
 \bar "|." 
s4. \fixB b8 \fixC
  \bar "|." 
 s16 \clef treble
\varA
b8\startTextSpan([ \times 2/3 { c16 b a\stopTextSpan]) }
  \bar "|." 
}
\addlyrics { Сто- ян са ю- нак за- же- ни, той теж- ка сват- ба по- вдиг- на }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 70 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,3"
  tagline = ##f
}


