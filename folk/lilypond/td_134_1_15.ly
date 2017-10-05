%{
td_134_1_15
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 200
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"76"
\time 5/16
\override Glissando #'style = #'zigzag
d16[( c]) \times 3/4 { c16[( b a b]) } | 
\varA
c8\startTextSpan c16[( d8\stopTextSpan]) | 
a8\noBeam~ a8. |
\set Score.measureLength = #(ly:make-moment 6 16)
\noteFi \hideNotes a16\glissando \unHideNotes  d8\noBeam~ d c16 | 
\set Score.measureLength = #(ly:make-moment 5 16)
\varB
d8\startTextSpan d16[( c8\stopTextSpan]) | 
c16[( b]) a16[( g8]) | 
a16[( b]) \times 3/4 { c16[( b a b]) } | c16[( b]) a8. |
a8\noBeam~ a8. | a8~ a\noBeam g32[( fis]) | g8 a8.\noBeam | a8 a8.\noBeam
 \bar "|." 
s8 \fixB g8 \fixC s16
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
 \varA
c8\startTextSpan d8.\stopTextSpan\noBeam \bar "||" 
\varB
e16\startTextSpan[( d]) d16[( c8\stopTextSpan])
\bar "|." 
}
\addlyrics { Пи- ле фър- чи, 
ко- \startTextSpan " " ла- де, \stopTextSpan
ко- \startTextSpan ла- де ле, \stopTextSpan по не- бо- то, 
ко- \startTextSpan ла- де,  \stopTextSpan 
ко- \startTextSpan ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 190 8)
		}
	}
}
%
\header{
  opus = "ТД-134,1,15"
  tagline = ##f
}


