%{
pep_093_1_32
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 4 = 120
\time 4/8
%%\cadenzaOn
c8 b\noBeam c b\noBeam | c b\noBeam b16[( a8 g16)] |
c8 b\noBeam c b\noBeam | a8 a16\noBeam b g8\noBeam r |
c8 b\noBeam c b\noBeam | c b\noBeam a8.([ b16]) |
c8 b\noBeam c b\noBeam | b a16\noBeam a a4
 \bar "|." 
s4 \fixB cis, 
  \bar "|." 
}
\addlyrics { Пе- пе- ру- да ле- тя- ла, 
ле- \startTextSpan йом, ле- йом, дай Бо- же, дъж, \stopTextSpan
 пе- пе- ру- да ле- тя- ла, 
ле- \startTextSpan йом, ле- йом, дай Бо- же, дъж \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-93,1,32"
  tagline = ##f
}


