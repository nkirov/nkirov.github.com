%{
sva_139_2_36
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 96
%\time 2/4
\cadenzaOn
g4.^\rtoe( a8) 
\varA
a4\prall\startTextSpan a8([ g]) g4.( f8) e8.([ f16 e8 d\stopTextSpan]) 
e4 fis g2.( a16[ g f8] e16[ f \times 2/3 { g f e] } d2.) r4   
\bar "" \break
g4.^\rtoe( a8) b16[( a8.])  a16.([ b32 a16 g])
 a4( \times 2/3 { a8[ g f]) } 
\varB
e4.\startTextSpan( f8\stopTextSpan^"↑") 
g[( f!]) e4 e1~ e4
 \bar "|." 
s16 \fixB cis4 \fixC
  \bar "|." 
s16 \clef treble
 \varA
b'8\prall\startTextSpan([ a]) a16.([ b32 a16 g]) g4( a16[ g f8]) e4.( d8\stopTextSpan) \bar "||"
\varB
e4.\startTextSpan( fis!8\stopTextSpan) 
 \bar "|."   
}
\addlyrics { Про- ща- вай, ма- ле, про- ща- вай, де- то сме я- ли и пи- ли }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 96 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,36"
  tagline = ##f
}


