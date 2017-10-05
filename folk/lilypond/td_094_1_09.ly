%{
td_094_1_09
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 56
\cadenzaOn
\phrasingSlurDown
\times 2/3 { f8\noBeam g16[( a^"↓"]) \acciaccatura b8 c } 
\varA
b\startTextSpan\noBeam( \grace { a16[\( b a] } g8\))\stopTextSpan 
g4 
\varB
s4\startTextSpan c\stopTextSpan( 
d32[ c b\prall a] b16\prall[ a])
b[( c]) b4\prall( c8)
\bar ""
c16[( b]) a[( b]) \bar "" a[( g] \grace { a16[\( g] } f8\)) f2 \breathe \bar ""
f16[ g32( a^"↓"]) \acciaccatura b8 c\noBeam c( \grace { b16[\( c b] } a8\))
\bar ""
\acciaccatura a8 \afterGrace b4\( { \stdB a8\) \stdE } 
\varC
\grace { g16\startTextSpan[\( a] } g4\stopTextSpan\) 
\varD
g8\startTextSpan g\stopTextSpan\noBeam 
g2
 \bar "|." 
s4 \fixB ees \fixC
 \bar "|." 
 s16 \clef treble
\varA
\afterGrace c'8\startTextSpan\noBeam(\(  { b16[ a]\) } b32\prall[ a g16\stopTextSpan]) \bar "||"
\varB
s4\startTextSpan c4\stopTextSpan\mordent \bar "||"
\varC
\grace { g16\startTextSpan[\( a] } g4.\stopTextSpan\) \bar "||"
\varD
g16\startTextSpan g8.\stopTextSpan\noBeam 
 \bar "|." 
}
\addlyrics { На- кла- ла~й Нен- ка си- дян- ка, 
Нен- \startTextSpan ки ко- зум, \stopTextSpan на- кла- ла~й, 
пиш- ман ста- на- ла }
%
\layout {
   \context { 
	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
\context {
      \Lyrics
      \consists "Text_spanner_engraver"
      \override TextSpanner #'direction = #DOWN
      \override TextSpanner #'style = #'line    
      \override TextSpanner #'outside-staff-priority = ##f
      \override TextSpanner #'padding = #0.2 % sets the distance of the line from the lyrics
      \override TextSpanner #'bound-details =
      #`((left . ((Y . 0)
                  (padding . 0)
                  (attach-dir . ,LEFT)))
         (left-broken . ((end-on-note . #t)))
         (right . ((Y . 0)
                   (padding . 0)
                   (attach-dir . ,RIGHT))))
    }
  
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 56 4)
		}
	}
}
%
\header{
  opus = "ТД-94,1,9"
  tagline = ##f
}


