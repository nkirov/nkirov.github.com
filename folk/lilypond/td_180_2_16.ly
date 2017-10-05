%{
td_180_2_16
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 108
%\cadenzaOn
\time 2/4
d4 fis8[( g]) | a2~ | a^\rtoe | a8[( b]) a g\noBeam | fis4 g | a8[( g] fis[ e]) |
e2~ | e~ | e4 r | 
d4 fis8[( g]) | a8[( g16 fis] g4~ | g4. fis8) | fis[( e]) e d\noBeam |
fis8[( e]) e\prall[( d]) | d2~ | d | d4 r
 \bar "|." 
s4 \fixB b
 \bar "|."  
}
\addlyrics { Про- вик- на се, 
ма- \startTextSpan ри, \stopTextSpan
гю- зел Ру- ска сно- щи ве- чер, ма- ри, на се- дян- ки }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 108 4)
		}
	}
}
%
\header{
  opus = "ТД-180,2,16"
  tagline = ##f 
}


