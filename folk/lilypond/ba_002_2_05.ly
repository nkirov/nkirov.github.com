%{
BA_2_2_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
d4 a | d4.( e8) | d8( c) c8( b) | a4.( g8) | a4 a8( g) | c4 c8( b) | a4.( g8) | d'8( c) c8( b) | a2 | a4 a  
 \bar "||"
 a4 d | c8([ d] c[ b]) | d8( c) c4 | \acciaccatura {c16[d]} c4( a8[ g]) | a4 a | c4 c8( b) | a4.( g8) | d'8( c) c8([ b]) | a2 | a4 a
 \bar "|."
}
\addlyrics { Хо- ди- "ла~й" Ди- на, Ди- но  мо,
Ди- \startTextSpan но мо, го- спо- ди- но мо,  \stopTextSpan
             хо- ди- "ла~й" ла- пад да бе- ре, 
Ди- \startTextSpan но мо, го- спо- ди- но мо \stopTextSpan }
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
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ВА-2,2,5"
  tagline = ##f
}


