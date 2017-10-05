%{
td_134_2_03
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 252
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAdotAA #"52"
\time 7/16
\override Glissando #'style = #'zigzag
\set Score.measureLength = #(ly:make-moment 8 16)
\noteFi \hideNotes c16\glissando \unHideNotes e8. e8\noBeam e | 
\set Score.measureLength = #(ly:make-moment 7 16)
e16.[( d]) d16[( c d8]) | d16.[( c]) c8 c\noBeam |
c16.[( b]) b8[( a]) | a8. g8\noBeam a | a8. a8\noBeam g | 
\override Glissando #'style = #'zigzag
\set Score.measureLength = #(ly:make-moment 8 16)
\noteFi \hideNotes b16\glissando \unHideNotes d8. d8\noBeam b | 
\set Score.measureLength = #(ly:make-moment 7 16)
c16.[( b]) a4 | a16.[( b]) c8 c\noBeam | c16.[( b]) b8^\ltoe[( a^\rtoe]) |
a8. g8\noBeam a | a8. a8\noBeam g | \noteFi d'8.\glissando a4 | a8. a4
 \bar "|." 
s8. \fixB fis4
 \bar "|." 
}
\addlyrics { " " По- хва- ли- ла са~й Ла- ди- на май- ка, 
Ла- \startTextSpan де ле, мом- не ле, \stopTextSpan " "
ни \startTextSpan вре- да, \stopTextSpan 
вре- \startTextSpan да, не "в но-" ви гра- да, \stopTextSpan
Ла- \startTextSpan де ле, мом- не ле, ко- ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 182 8)
		}
	}
}
%
\header{
  opus = "ТД-134,2,3"
  tagline = ##f
}


