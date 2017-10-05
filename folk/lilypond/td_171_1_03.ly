%{
td_171_1_03
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c' {
\tempo 8 = 168
%\override Score.RehearsalMark #'self-alignment-X = #LEFT
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
d16[( e]) f8. | g16[( a]) a8\prall^\markup { \flat }[( g16]) | g[( a]) g8\prall[( f16]) |
e[( f]) g8. | g8 g16\noBeam f[( e]) |
d8 d8.\noBeam | \acciaccatura f8 g(~ g16[ f e]) | 
\varA
\acciaccatura e8\startTextSpan f(~ f16[ e d\stopTextSpan]) |
d8 d\prall[( c16]) | c[( b]) c16.[( d]) |
d8~ d8.\noBeam | d8~( d16.[ c])
 \bar "|." 
 \endmmm
\varA
\acciaccatura e8\startTextSpan f( e16.[ d\stopTextSpan])
  \bar "|." 
}
\addlyrics { По- бля- ла йе вак- ла йов- ца, 
мла- \startTextSpan да ми Ка- ли- но  \stopTextSpan льо, \startTextSpan
бя-  ла Ма- ли- но льо \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 168 8)
		}
	}
}
%
\header{
  opus = "ТД-171,1,3"
  tagline = ##f
}


