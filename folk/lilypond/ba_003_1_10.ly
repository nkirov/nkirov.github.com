%{
BA_3_1_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g8\noBeam g a8\noBeam b | c4 b | a4 d | d2 | a8\noBeam g a8\noBeam b | c4 b | a4 d | a r4
 \bar ":|"
 a4 d | c b | a e'4 | d2 | a8( g) a8( b) | c4 b | a d | a2
 \bar "|."
}
\addlyrics { Ма- ри мо- ми- чан- це мъ- ни- но, що ми за- ми- ну- ваш дю- кя- на 
ай \startTextSpan тъй, ай тъй, чи пак тъй, \stopTextSpan
ай \startTextSpan тъй, ай тъй, чи пак тъй \stopTextSpan }
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
  opus = "ВА-3,1,10"
  tagline = ##f
}


