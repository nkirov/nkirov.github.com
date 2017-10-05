%{
sva_181_1_04
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 112
%\time 2/4
\cadenzaOn
\varA
d8\startTextSpan([ e\stopTextSpan]) 
fis([ g]) a([ g]) fis!2.( e16[ fis e d] e[ fis e d]) 
d1(~ d8[ e]) fis!([ g]) g^\ltoe([ fis!^\rtoe]~ \afterGrace fis2.\( { e16[ fis]\)) } fis!1\fermata r4
\bar "" 
d8([ e]) fis!([ g]) a([ g]) fis!4( e2.~ e8[ d]) 
\acciaccatura fis!8 g8.[( fis!16] \times 2/3 { g8[ fis e]) }
fis!8\prall[( e16 d]) d4 d1.\fermata( c4) r
\bar "" 
d8([ e]) fis!([ g]) a([ g]) fis!4( e1\fermata~ e8[ d])  fis!8([ g] fis^\ltoe[ g^\rtoe] fis8[ e])
fis!8.([ e16] d4) d d1.\fermata
 \bar "|." 
 s4 \fixB d \fixC
  \bar "|." 
   s16 \clef treble
\varA
d8\startTextSpan([ ees\stopTextSpan])    
   \bar "|." 
}
\addlyrics { Ти на- ли зна- еш, ку- \startTextSpan ме ле, \stopTextSpan
че ще ку- му- ваш, ку- \startTextSpan ме ле, \stopTextSpan
да си при- гот- виш, ку- \startTextSpan ме ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,4"
  tagline = ##f
}


