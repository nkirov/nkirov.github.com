%{
sva_181_2_11
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 92
%\time 2/4
\cadenzaOn
\override Glissando #'style = #'zigzag
c4 d8^\ltoe[( e^\rtoe~] e4\glissando c) d4.( c8) d16[( e]) e[( d] 
c4^\ltoe) d8\noBeam 
d32[( c b c]) c1~ c4 r
\bar "" \break
b8([ c)] c([ d]~ \afterGrace d2)( { e16[ d c]) }
\afterGrace d4(\( { \stdB e8\) \stdE } d16[ c]) d4 d1\fermata
 \bar "|." 
s4 \fixB fis!
  \bar "|." 
}
\addlyrics { Ти на- ли зна- иш, 
ку- \startTextSpan ме ле, \stopTextSpan че ще ку- му- ваш }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 92 4)
		}
	}
}
%
\header{
  opus = "ТД-181,2,11"
  tagline = ##f
}


