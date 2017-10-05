%{
td_136_1_06
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c'' {
\tempo 8 = 210
%\override Score.RehearsalMark #'self-alignment-X = #LEFT
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 7/16

\varAB
g8.\startTextSpan a16[( f e d\stopTextSpan]) | 
d8. d8\noBeam~ d | c8. d8\noBeam( e) | f8. g8\noBeam~ g |
g16.[( f]) g8 f16[( e]) | d8. d8\noBeam~ d | \acciaccatura f g8. d8\noBeam d |
 d8. d8\noBeam~ d
 \bar "|." 
s8. \fixB fis,4 \fixC
 \bar "|." 
\endmm
\varA
d'16.\startTextSpan[( e]) g16[( f e d\stopTextSpan]) \bar "||"
\varB
e16\startTextSpan[( f8]) g16[( f e d\stopTextSpan]) \bar "||"
\varB
f8.\startTextSpan g16[( f e d\stopTextSpan]) 
 \bar "|."  
}
\addlyrics { Сно- щи ми сай ди- те ро- ди, 
нан- \startTextSpan ни ми, нан- ни, \stopTextSpan 
ма- \startTextSpan лък И- ван- чо \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 210 8)
		}
	}
}
%
\header{
  opus = "ТД-136,1,6"
  tagline = ##f
}


