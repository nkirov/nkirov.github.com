%{
TD_094_2_20
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
% \tempo 4 = 66
\time 5/16
\override Glissando #'style = #'zigzag
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"66"
%\cadenzaOn
\noteFi \acciaccatura e8\glissando g g8.\noBeam | \times 2/3 { g16[( a g] } f[ g8]) |
\noteF g16[(\glissando e]) e e8\noBeam | e16[( f]) g8. | 
\acciaccatura g8 a16[( g] f[ e8]) | e8~ e8.\fermata |
\bar "|:"
g8 a8.\noBeam | \acciaccatura a8 b16[( a] g[ a g]) | 
\noteF g16[(\glissando e]) e e8\noBeam | g8 g8.\noBeam |
\acciaccatura g8 a16[( g] f[ e8]) | e8~ e8.\noBeam\fermata
\bar ":|"
s16 \fixB ees16
\bar "|." 
}
\addlyrics { Ка- ква бе- ши, ле- \startTextSpan льо, \stopTextSpan таз го- ди- на,
таз го- ди- на, ле- \startTextSpan льо, \stopTextSpan дет се ми- на }
\addlyrics { " " " " " " " " " " " " " " " " " " " "
дет се ми- на, ле- \startTextSpan льо, \stopTextSpan и за- ми- на }
%
\layout {
%     \context { 
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 165 8)
		}
	}
}
%
\header{
  opus = "ТД-94,2,20"
  tagline = ##f
}


