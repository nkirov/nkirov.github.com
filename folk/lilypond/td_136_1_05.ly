%{
td_136_1_05
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c'' {
\tempo 8 = 180
%\override Score.RehearsalMark #'self-alignment-X = #LEFT
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
\varA
g8\startTextSpan d8.\stopTextSpan\noBeam | 
g8 a8.\noBeam | a16[( g] f8.) | \acciaccatura g8 a~ a16.\noBeam g |
\acciaccatura g8 a16[( g]) g8\prall[( f16]) | f[( e]) d8[( c16]) | d[( e]) f16.[( e]) |
\acciaccatura e8 f g8.\noBeam | d8(~ d[ c16]) | \acciaccatura e8 f f16.\noBeam( e) |
\acciaccatura e8 f16[( e]) d8. | d8 d8.\noBeam
 \bar "|." 
s8. \fixB fis,8 \fixC
 \bar "|." 
\endmmm
\varA
f'8\startTextSpan d8.\stopTextSpan\noBeam
 \bar "|."  
}
\addlyrics { Со- кол го- ни, 
Дой- \startTextSpan не ле, ко- ла- де ле, \stopTextSpan пъ- стра птич- ка,
мом- \startTextSpan не ле, ко- ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 180 8)
		}
	}
}
%
\header{
  opus = "ТД-136,1,5"
  tagline = ##f
}


