%{
td_140_1_36
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
b8[( c]) c[( d]) d1(~ d8[ c]) d[( ees]) d8 c\noBeam b[( c]) d[( c]) 
c16[( d c b] \noteFi c8.[\glissando b16] \noteFi c8[\glissando b16 a]) 
a1(~ a2 g8) r8 r4
\bar ""
b8[( c]) d[( c]) d[( c16 b] \afterGrace c2)\( { b16[ c]\) } b4 aes8 g\noBeam
b4 aes!8[( g]) g2. g1(~ g4 f8) r r4
\bar ""
b8[( c]) \acciaccatura c d[( c]) c16[( d c b] \afterGrace c1)\( { b16[ c]\) }
b4 aes!8 g\noBeam b4 
\varA
s4\startTextSpan aes!\mordent\stopTextSpan g1 g
 \bar "|." 
s4 \fixB b, \fixC
 \bar "|." 
s16 \clef treble
\varA
aes'8\startTextSpan[( g\stopTextSpan])
 \bar "|."  
}
\addlyrics { По- хва- ли са, ма- \startTextSpan ри, \stopTextSpan 
ал- тън Ма- ра сно- ща ве- чер, ма- \startTextSpan ри, \stopTextSpan
на се- дян- ка пред мо- ми- те, ма- \startTextSpan ри, \stopTextSpan 
пред мом- ци- те }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-140,1,36"
  tagline = ##f
}


