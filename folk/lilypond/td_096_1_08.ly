%{
TD_96_1_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
  a4 a8\noBeam bes8 | c8([ bes)] c4 | a4 bes8([ c)] | c8([ bes] c4) | 
  c8([ bes^"↑")] bes8^"↑"([ a)] a4.( g8) | \acciaccatura a8 bes4. c8 | 
  bes([ a)] a4 | 
  a2\fermata 
 \bar "|." 
 s4 \fixB f4 \fixC
 \bar "|." 
}
\addlyrics { За- мрък- на Ла- ла биз во- да,
Ла- \startTextSpan ли ле, Ла- ле Въ- ле- ва \stopTextSpan }
%
\layout {
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
  
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
%
\header{
  opus = "ТД-96,1,8"
  tagline = ##f
}


