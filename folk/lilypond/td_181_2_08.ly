%{
sva_181_2_08
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 160
\time 2/4
%%\cadenzaOn
\parS
d8^\ltoe( e^\rtoe~ e4~ | e2-\parenthesize\fermata) | 
d8([ e] d\prall[ c]) | d([ e]) e([ d]) | d([ c]) d([ e]) | c4 d8([ e]) |
f([ e]) d4 | d8([ e]) e([ d]) | c4 d8([ e]) | f8([ e]) d([ c]) | 
d2~ | d-\parenthesize\fermata | d
 \bar "|." 
}
\addlyrics { Ма- \startTextSpan ле, ми- ла ма- ле, \stopTextSpan 
лю- би ми са же- ни, лю- би ми са же- ни  }
%
\layout {
%%   \context { 
%%	    \Staff \remove "Time_signature_engraver" } 
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
		\Score tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-181,2,8"
  tagline = ##f
}


