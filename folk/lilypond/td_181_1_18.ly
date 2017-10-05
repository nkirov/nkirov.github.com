%{
td_181_1_18
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 132
\cadenzaOn
f8[( g]) g[( a]~ a4~ a1) a4^\ltoe a1(~ a4. g8 a[ g] a4^\ltoe) g( f) g^\ltoe 
g1.( a8.[ g16] a8[ g] f4) 
\bar ""
g1( f16[ g f e] f2. \bar "" ees8[ d] c4) \bar "" r r \bar "" 
a'4.( g8) g1(~ g4. f8) g[( a]) \bar ""
a1(~ a4. g8 \times 2/3 { a8[ g a]) }
\bar ""
g4.( f16[ e] f32[ e d8]) \bar "" d4^\ltoe d2. d1\fermata( c4) r \bar ""
d8[( s^\rtoe e]) \bar "" f[( g]~ g2.~ g8[ f]) \bar "" g[( s^\ltoe a])
\bar ""
a1\fermata(~ a8[ g] a[ g16 a]) g4^\rtoe( f8[ e] f[ e]) d4^\ltoe d2. d1
 \bar "|." 
s4 \fixB b
 \bar "|."  
}
\addlyrics { Ка- ра- джа Ра- де ду- ма- ше: Мо, Ра- де мо, лю- бе
Ра- де, що сно- щи мно- го си- дях- те }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,18"
  tagline = ##f
}


