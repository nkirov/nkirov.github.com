%{
td_180_2_07
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 108
\cadenzaOn
r8 f g4( a1\fermata) 
\varA
a8\startTextSpan([ bes\stopTextSpan] 
\grace { a32[\( bes a g] } a2.\) g32[ a g f]) \bar ""
f8 g4^\rtoe( a1) 
\varA
a8\startTextSpan([ bes!\stopTextSpan] 
\grace { a32[\( bes a g] } a4.\) g8)
\bar ""
g[( f]) \bar "" f16[( e d8]) r4 \bar "" a'8([ s^\ltoe g]) g1 \bar "" 
g2.( 
\varB
f8\startTextSpan[ g\stopTextSpan] 
a2~ a8[ g]) \bar "" f[( e]) d2(~ d8[ e])
\bar ""
f4^\ltoe( e32[ f e d e]) d4 d1\fermata( 
\varC
e16\startTextSpan[ d c8\stopTextSpan]) 
r4 r8 f g2.(~ g8[ a]) \bar ""
bes!8\noBeam( \grace { a32[\( bes a g] } a4.\)~ a \bar "" g8\noBeam)
\bar ""
f8([ e]) d2.(~ d8[ e]) f4^\ltoe( e32[ f e d e]) 
\varD
d8.\startTextSpan([ e16\stopTextSpan]) 
s16 d1\fermata
 \bar "|." 
s4 \fixB b \fixC 
  \bar "|."
s16 \clef treble  
\varA
s16\startTextSpan bes'!4\stopTextSpan \bar "||"
\varB
a16\startTextSpan[ g f g\stopTextSpan] \bar "||"
\varC
s16\startTextSpan c,4\stopTextSpan \bar "||"
\varD
s16\startTextSpan d4\stopTextSpan 
  \bar "|." 
}
\addlyrics { Сто- я- но- ва- та май- чи- ца, тя на Сто- я- на ду- ма- ше: 
Сто- я- не, син- ко Сто- я- не }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 108 4)
		}
	}
}
%
\header{
  opus = "ТД-180,2,7"
  tagline = ##f
}


