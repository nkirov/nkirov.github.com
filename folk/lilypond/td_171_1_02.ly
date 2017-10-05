%{
td_171_1_02
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c' {
\tempo 8 = 152
%\override Score.RehearsalMark #'self-alignment-X = #LEFT
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
f16[( g]) d8. | d16[( ees]) f8[( ees16]) | d[( c]) d8. | f16[( g]) g8\prall[( f16]) |
f[( g]) d8. | d16[( ees]) f8\prall[( ees16]) | d[( c]) d8. | d8 d8.\noBeam
 \bar "|." \break
 f16[( g]) d8. | d16^"II група отпява"[( ees]) f8\prall[( ees16]) | d[( c]) d8. | f16[( g]) g8\prall[( f16]) |
f[( g]) d8. | d16[( ees]) f8\prall[( ees16]) | d[( c]) d8. | d8 d8.\noBeam
 \bar "|."
}
\addlyrics { Съ- бра- ли са три де- ли- я 
"в та-" \startTextSpan зи гра- да Дря- но- пол- ска, \stopTextSpan
сно- щи ве- чер на мех- на- та 
"в та-" \startTextSpan зи гра- да Дря- но- пол- ска  \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ТД-171,1,2"
  tagline = ##f
}


