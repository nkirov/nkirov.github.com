%{
td_179_2_33
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 116
\cadenzaOn
\phrasingSlurDown
\par
\ii \parenthesize b8
\parS
d4.\mordent g8-\parenthesize^"↓" \acciaccatura { f16[ ees^"↑"] } 
f1\fermata( g8.^\rtoe[ f16]) f8[( g] 
\grace { f32[\( g f e] } \afterGrace f2^\rtoe\)\( { \stdB ees!8\)  \stdE } 
\grace { f32[\( ees d ees] } d4\)) d1.\fermata( 
\varA
s16\startTextSpan c4\stopTextSpan) r
\bar ""
\varB
f8\startTextSpan[( s^\ltoe ees!\stopTextSpan]) \bar ""
\acciaccatura { f16[ ees!] } \afterGrace f2.^\rtoe\( { g16[ f ees!\)] } \bar ""
\acciaccatura ees!8 f16[( ees d8]) d[( s^\ltoe ees!]) 
ees![( f]~ \afterGrace f4)\( { g16[ f ees!]\) } ees!8[( d]) d1\fermata d2. 
 \bar "|." 
s4 \fixB d \fixC
 \bar "|." 
 s16 \clef treble
\varA
ees!16\startTextSpan[( d c\stopTextSpan]) \bar "||"
\varB
d8\startTextSpan[( ees!\stopTextSpan]) 
 \bar "|."  
}
\addlyrics { и Ма- \startTextSpan ри Яр- да- но, \stopTextSpan 
жет- ва са йе за- же- на- ло }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-179,2,33"
  tagline = ##f
}


