%{
td_181_1_45
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 208
\time 3/8
g16[( a]) a4 | a8 a4 | g16[( a]) g8\prall f\noBeam | e16[( f]) g4 | 
g16[( f]) f8 g\noBeam | f16[( e]) d8.[( e16]) |
f4. | f | a8 a\noBeam a | a a\noBeam a | g16[( a]) g8\prall( f\noBeam) | f8 g4 |
g8 f\noBeam g | f16[( e]) d4 | d4. | d8 r4
 \bar "|." 
}
\addlyrics { По- дрън- ча- ло яс- но ми звън- че, 
гра- \startTextSpan да ми Ру- со- ля- на, \stopTextSpan
риш-  \startTextSpan не ле, бош- не ле, ко- ла- де ле, \stopTextSpan
ше- \startTextSpan сто ми, шест ан- ге- ла \stopTextSpan }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
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
		\Score tempoWholesPerMinute = #(ly:make-moment 208 8)
		}
	}
}
%
\header{
  opus = "ТД-181,1,45"
  tagline = ##f
}


