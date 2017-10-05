%{
td_170_2_21
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 116
\cadenzaOn
\parS
c4 \acciaccatura e8 f2. e16[( d c8]~ c4-\parenthesize^\rtoe) f^\ltoe e^\ltoe 
d8[( s^\ltoe e]) c1\fermata r4
c8[( d]) d2. 
\stemUp \ii c'8 \stemNeutral
d,8.[( c]) d4 d1
\varA
s16\startTextSpan \stemUp c'4\stopTextSpan  
 \bar "|." 
 s16 \clef treble
\varA
s4\startTextSpan \stemUp bes4\stopTextSpan 
 \bar "|." 
}
\addlyrics { Ян- кян'- та май- ка, джа- \startTextSpan нъм, \stopTextSpan 
"в се-" ло и се- де- ше и }
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
  opus = "ТД-170,2,21"
  tagline = ##f
}


