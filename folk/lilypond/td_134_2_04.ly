%{
td_134_2_04
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 252
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"52"
\time 5/16
\override Glissando #'style = #'zigzag
\set Score.measureLength = #(ly:make-moment 6 16)
\noteFi \hideNotes b16\glissando \unHideNotes d8 e16.[( d]) | 
\set Score.measureLength = #(ly:make-moment 5 16)
\noteFi d8\glissando a8.\noBeam |
\varA
d16\startTextSpan[( c]) c8.\stopTextSpan | 
c16[( b]) b8. |
b16[( a]) a8. | d16[( c]) c8. |
\varB
\set Score.measureLength = #(ly:make-moment 6 16)
\noteFi \hideNotes b16\startTextSpan\glissando \unHideNotes d8 e16.[( d\stopTextSpan]) | 
\set Score.measureLength = #(ly:make-moment 5 16)
\noteFi d8\glissando a8.\noBeam | d16[( c]) c8. | c16[( b]) b8. |
b16[( a]) a8. | a8\noBeam a8.
 \bar "|." 
s8. \fixB fis8 \fixC
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
\varA
c'8\startTextSpan\noBeam c8.\stopTextSpan \bar "||"
\varB
  c16\startTextSpan[( d])  e16.[( d\stopTextSpan]) 
 \bar "|."  
}
\addlyrics { " " Из- ве- де си де- ли Мар- ко, 
ко- \startTextSpan ла- де ле, \stopTextSpan " " не- го- ва си 
ра- нян ко- ня, 
ко- \startTextSpan ле- до льо \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 130 8)
		}
	}
}
%
\header{
  opus = "ТД-134,2,4"
  tagline = ##f
}


