%{
td_181_1_11
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 72
\cadenzaOn
d16 c\noBeam ees8( f2. g16[ f g8]~ g4. f8) f16.[( g32 f8]~ f4~ 
\times 2/5 { f16[ ees d ees d]) } d1( ees!32[ d c16]) r8^\rtoe
\bar ""
d8[( ees!]) \bar "" ees\noBeam( f~ f2 \bar "" ees!32[ f ees d] ees[ f ees d])
d2( ees!16[ d c8]) d[( s^\ltoe ees!]) ees!^\rtoe[( f^\ltoe]~ f4. d8)
\bar ""
ees d\noBeam~ d2. d
 \bar "|." 
s4 \fixB cis
  \bar "|." 
}
\addlyrics { Ма- \startTextSpan ри, Дра- га- но, \stopTextSpan 
тей- но Дра- га- на къл- не- ше }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,11"
  tagline = ##f
}


