%{
td_096_2_13
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 192
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAdotAA #"58"
\time 7/16
e8. e8\noBeam e | d8. \afterGrace c8\noBeam(\( { \stdB d\) \stdE } c16[ b]) |
\parS
g8. a8\noBeam b | c8. d8\noBeam(~ d16-\parenthesize\prall[ c]) |
e8. e8\noBeam e | e32[( d c8]) d16[( c] b[ a]) | 
\break
a8. a8\noBeam a |
a8. a8\noBeam~ a |
c8. d8\noBeam  e | \acciaccatura e d16[( c8]) \acciaccatura c8 d16[( c] b[ a]) |
a16[( g8]) a b\noBeam | c8. d8\noBeam\prall( c]) |
\acciaccatura d8 e8. e8\noBeam e | e32[( d c8]) d16[( c] b[ a]) | 
a8. a8\noBeam a | a8. a8\noBeam~ a
 \bar "|." 
s8. \fixB bes,4 
 \bar "|." 
}
\addlyrics { По- хва- ля- ла се~й Стан- ки- на ма- ма, 
Стан- \startTextSpan ке мо- ми- че, \stopTextSpan
бя- \startTextSpan ло граж- дан- че: \stopTextSpan
Ний- де ми ня- ма ху- ба- ва Стан- ка,
Стан- \startTextSpan ке мо- ми- че, бя- ло граж- дан- че \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 203 8)
		}
	}
}
%
\header{
  opus = "ТД-96,2,13"
  tagline = ##f
}


