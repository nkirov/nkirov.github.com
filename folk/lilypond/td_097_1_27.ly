%{
laz_097_1_27
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%% \tempo 4 = 264
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"52"
 \time 7/16
\override Glissando #'style = #'zigzag 
d8 d\noBeam d e16\noBeam | d8 c\noBeam b c16\noBeam | b8 a\noBeam\glissando e'8. |
d8 c\noBeam b8. 
\bar ":|:"
a8 a\noBeam a b16\noBeam | c8 b\noBeam a c16\noBeam | b8 a\noBeam\glissando e'8. |
d8 c\noBeam b8.
 \bar ":|" 
}
\addlyrics { Из- гря- ло е яс- но слън- це, Ла- \startTextSpan за- ре, Ла- за- ре, \stopTextSpan
у Вит- ки- ни рав- ни дво- ри, Ла- \startTextSpan за- ре, Ла- за- ре \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 200 16)
		}
	}
}
%
\header{
  opus = "ТД-97,1,27"
  tagline = ##f
}


