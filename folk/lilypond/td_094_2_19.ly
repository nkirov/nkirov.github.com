%{
TD_094_2_19
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
% \time 2/4
\cadenzaOn
\phrasingSlurDown
b8.([ c16] d8) d\noBeam \acciaccatura { d16[ c b] } c4.( b8) \acciaccatura b8 a4
\acciaccatura a8 b4 b8 a\noBeam \acciaccatura a8 g2 
\acciaccatura { a16[ b] } c4( \afterGrace b)\( { a16[ b]\) }
\bar ""
c8 \bar "" a16[( g] a[ g8.]) a16[( g f8]~ f[ e16 f]) e2\fermata
\bar "|:"
\acciaccatura { e16[ f] } g4(~ g16[ a b a]) b8 a16[( g] a[ g8.]) a16
\bar ""
\varA
a32\startTextSpan[( g16.\stopTextSpan]) \bar ""
\varB
s8\startTextSpan a8\stopTextSpan 
g\noBeam \acciaccatura { g16[ f] } e2 \breathe
\acciaccatura { e16[ f] } g4(~ g16[ a b a]) b8 a16[( g] a[ g8.]) 
\times 2/3 { g16[( a g] } \grace { f16[\( g] } f8\)) e2\fermata
 \bar "|." 
s4 \fixB aes, \fixC
 \bar ":|" 
 s16 \clef treble
\varA
s8\startTextSpan a'\stopTextSpan\noBeam\prall \bar "||"
\varB
s8\startTextSpan g8\stopTextSpan 
 \bar "|."
}
\addlyrics { Па- вли на Нац- ка, Нац- \startTextSpan ке бе, \stopTextSpan 
ти- хом го- во- ри: 
Що си ка- хър- на, Нац- \startTextSpan ке бе, \stopTextSpan що си пла- ка- ла }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-94,2,19"
  tagline = ##f
}


