%{
td_135_2_06
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 252
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
\varA
\acciaccatura d8\startTextSpan e e[( c16\stopTextSpan]) | 
\varB
\acciaccatura d8\startTextSpan e e8.\noBeam | d16[( c]) c32[( b a8\stopTextSpan]) | 
\acciaccatura c8 d d8.\noBeam |
c8 b16.\noBeam a | b8 c8.\noBeam | b16[( a]) a8. | a8 a8.\noBeam
 \bar "|." 
s8 \fixB ees8 s16\fixC
  \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
\varA
\acciaccatura d'8\startTextSpan e  e16.[( c\stopTextSpan]) \bar "||"
\varB
\acciaccatura d8\startTextSpan e e16. e\noBeam | d8 c16.\noBeam a16.\stopTextSpan
 \bar "|." 
}
\addlyrics { За- бяг- на- ли два- ма бра- тя 
"в чуж-" \startTextSpan да ми зe- мя \stopTextSpan
До- \startTextSpan бру- джан- ска \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 165 8)
		}
	}
}
%
\header{
  opus = "ТД-135,2,6"
  tagline = ##f
}


