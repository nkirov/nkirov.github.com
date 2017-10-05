%{
td_180_2_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 168
%\cadenzaOn
\time 7/16
\repeat volta 2 
{ g8 g\noBeam a16.[( b!]) | c8 bes\noBeam a16.[( g]) } 
\alternative { { \acciaccatura g8 a g\noBeam(~ g[ d16]) } 
{ \acciaccatura g8 a g\noBeam~ g r16} }
g8 g\noBeam a16.[( b!]) | c8 bes\noBeam a16.[( g]) |
\acciaccatura g8 a g\noBeam f16.\noBeam e 
\bar "|:"
c8\noBeam d16[( e]) f8[( e16]) | \acciaccatura f8 g g\noBeam f8. | 
\varA
e8\startTextSpan d\noBeam~ d r16\stopTextSpan
 \bar ":|" 
s8. \fixB b4 \fixC
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble
\varA
e16\startTextSpan[( d]) d\noBeam d r16\stopTextSpan 
 \bar "|."  
}
\addlyrics { На- кла- ла~й Нан- ка се- дян- ка, дян- ка, 
на- кла- ла~й Нан- ка се- дян- ка, 
ле- \startTextSpan ле, \stopTextSpan
се- дян- ка, о- ще пре- дян- ка }
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
  opus = "ТД-180,2,13"
  tagline = ##f
}


