%{
td_181_1_16
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 104
\cadenzaOn
f4( g2.~ g8[ f]) 
\varA
f\startTextSpan[( ees\stopTextSpan]) 
d4 d8[( ees!]) f4( g1~ g8[ f] g[ f]) 
f[( g]) g[( f]~ f2. \times 2/3 { f8[ ees! d] } ees!16[ d c8])
\bar ""
c1 r4 \bar "" f4. g8 g[( f]) f[( g]) \bar ""
\varB
g\startTextSpan[( f16 ees!] f1 ees16[ d c8\stopTextSpan]) 
c8 d\noBeam d1\fermata
 \bar "|." 
s4 \fixB cis \fixC
  \bar "|." 
s16 \clef treble
\varA
f16\startTextSpan[( g f ees\stopTextSpan])  \bar "||"
\varB
g4\startTextSpan( f2~ \times 2/3 { f8[ ees! d] } ees16[ d c8\stopTextSpan]) 
  \bar "|."  
}
\addlyrics { Слън- це- то треп- ти, зай- де- ва, Ди- ми- тър чи- към за- фа- ща }
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
  opus = "ТД-181,1,16"
  tagline = ##f
}


