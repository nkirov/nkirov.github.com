%{
sva_180_2_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 126
%\time 2/4
\cadenzaOn
g16([ a8]~ a4. g8) fis4( e8) fis!([ g]) 
g4( a1\fermata \grace { g32[\( a g fis!] } g1\)\fermata~ g8[ fis!])
a4.( g8) fis!4.( ees8) 
d([ ees!]) fis![( g]~ g1\fermata) r4 r 
\bar "" \break
a4.\prall^\markup{ \flat }( g8) fis!4( ees!8) d([ e]) 
fis!8([ g] \times 2/3 { a[ g fis!] } e!1\fermata d4)
\acciaccatura fis!8 g4.( fis!8) e[( fis!] e[ d]) 
d\noBeam^\ltoe d^\rtoe(~ d1\fermata c8) r8 r4
\bar "" \break
\acciaccatura fis!8 g4.( fis!8) ees16([ d c8]) d8([ e!^"↓"])
fis!16([ g] \times 2/3 { a[ g fis] } e!1\fermata d4)
\acciaccatura fis!8 g4.( fis!8) e[( fis] e[ d]) d4 d1\fermata
 \bar "|." 
 s4 \fixB b
  \bar "|." 
}
\addlyrics { Треп- на- ли са де- вят си- та, де- вят си- та ко- при- ня- ни,
ко- при- ня- ни и стру- ня- ни }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-180,2,17"
  tagline = ##f
}


