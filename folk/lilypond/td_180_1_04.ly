%{
td_180_1_04
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 72
\cadenzaOn
\parS
d8.\noBeam 
\varA
s16\startTextSpan ees16\stopTextSpan-\parenthesize^"↑" 
\acciaccatura { f16[ e] } f2.( g8.[ f16]) 
\acciaccatura f8 \afterGrace g(\( { f32[ g f e]\) } f8~ \afterGrace f\( { \stdB ees\) \stdE }
f32[ees! d ees]) d1\fermata( c8) r \bar ""
\varB
f16\startTextSpan[( ees!\stopTextSpan^"↑"]) \bar ""
\acciaccatura { f16[ ees] } f8~ \afterGrace f4\( { \stdB ees!8\) \stdE }
\bar ""
\acciaccatura ees!8 \afterGrace f[(\( { \stdB ees\) \stdE } d)] d16^\rtoe[( ees!^\rtoe]) 
ees!^\ltoe[( f^\rtoe]~ \afterGrace f4)\( { \stdB ees!8\) \stdE } 
ees!16^\ltoe[( d^\rtoe]) d8~ d2. d 
 \bar "|." 
s4 \fixB e \fixC
 \bar "|." 
 s32 \clef treble
\varA
s16\startTextSpan g16\stopTextSpan \bar "||" 
\varB
d16\startTextSpan[( ees!\stopTextSpan]) 
 \bar "|."  
}
\addlyrics { Ма- \startTextSpan ри, пла- ни- но, \stopTextSpan 
пла- ни- но, плад- ня го- ля- ма }
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
  opus = "ТД-180,1,4"
  tagline = ##f
}


