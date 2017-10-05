%{
td_094_1_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 112
%\time 2/4
\cadenzaOn
\varA
a16\startTextSpan b8\stopTextSpan\noBeam 
b4 b16[( d]) c8 b4^\rtoe \acciaccatura b8 c b16[(\prall[ a]) \breathe
a16 a8\noBeam \acciaccatura { c16[ d c b] } c4^\rtoe
\bar ""
c16[( d]) c[( b]) a b^\rtoe\noBeam b2
 \bar "|." 
s4 \fixB f \fixC
 \bar "|." 
 s16 \clef treble
 \varA
a8\startTextSpan b8.\stopTextSpan\noBeam 
 \bar "|."  
}
\addlyrics { По- ве- дье И- ван жъ- тва- ри, 
И- \startTextSpan ва- не, дра- го- ма- ня- но \stopTextSpan }
%
\layout {
   \context { 
	    \Staff \remove "Time_signature_engraver" } 
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
		\Score tempoWholesPerMinute = #(ly:make-moment 112 8)
		}
	}
}
%
\header{
  opus = "ТД-94,1,24"
  tagline = ##f
}


