%{
td_181_2_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 100
\cadenzaOn
\varA
c16\startTextSpan[( d c b] c[ d c b\stopTextSpan]) 
a8\noBeam a~ a1\fermata a8([ s^\ltoe b!]) a1 \afterGrace a4(\( { \stdB bes8\) \stdE } a32[ g f16])
f8\noBeam g8([ a]~ a1\fermata) r4
\bar ""
a8([ s^\rtoe g]) g4^\ltoe g1 g16[( a8]) a16\noBeam a4.( g8) g\prall([ f]) f4 r
\bar ""
g8([ a]) a2
\bar ""
a16.([ g32 f8]) g16([ a]) g4 f16([ e]) d8\noBeam d1( c4) r4
\bar ""
g'8([ s^\ltoe a]) a2. a8.([ g16] f4^\ltoe) 
\bar ""
\override Glissando #'style = #'zigzag
g8\noBeam g~ g4 \noteFi f8([\glissando e]) d\noBeam d~ d1\fermata
 \bar "|." 
 s4 \fixB b \fixC
 \bar "|."
 s16 \clef treble
\varA
c'8.\startTextSpan[( b16] c[ d c b\stopTextSpan]) 
  \bar "|." 
}
\addlyrics { Кън- чо Пет- ран- ке ду- ма- ши: Пет- ран- ке, лю- бе, Пет- ран- ке,
яз ще на фрон- та да и- да, те- бя та ту- ка йо- ста- вям }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
%
\header{
  opus = "ТД-181,2,5"
  tagline = ##f
}


