%{
td_135_2_04
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%%\tempo 8 = 252
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
\override Glissando #'style = #'zigzag
\varA
d16\startTextSpan d\noBeam d8.\stopTextSpan | 
\varB
c8\startTextSpan b8.\stopTextSpan\noBeam | 
\noteFi d16[(\glissando a]) a8. | 
d8 d[(\glissando c16]) | b16 a\noBeam c8. | c16[( b]) b8.\mordent |
b16[( a]) a8. | a8 a8.\noBeam
 \bar "|." 
s8 \fixB g8 \fixC s16
  \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
\varA
d'8\startTextSpan  d16[( c8\stopTextSpan]) \bar "||"
\varB
c16\startTextSpan[( b]) c16[( b8\stopTextSpan])
  \bar "|."  
}
\addlyrics { Ра- но ми ра- ни све- ти Гьор- ги, 
ра- \startTextSpan но ми, ра- но, \stopTextSpan 
по \startTextSpan Гер- гьов- ден \stopTextSpan }
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
  opus = "ТД-135,2,4"
  tagline = ##f
}


