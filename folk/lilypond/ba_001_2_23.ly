%{
BA_1_2_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 3/8
  d8->\noBeam d8\noBeam d | e-> c4 | c16->( [ b ) ] a8\noBeam g | 
  c8->\noBeam c8\noBeam b | c16->( b) a4 | a4.^> | d8->\noBeam d( c) | 
  d8->\noBeam d8\noBeam d | \acciaccatura e8 c8 c4 | c16->( [ b) ] a8\noBeam g | 
  c8->\noBeam c8\noBeam c |c16->( b) a4 | a4.^> | a8^>\noBeam a r8
 \bar "|." 
}
\addlyrics { Гьор- ги са по- ка- лу- ге- ри, Гьор- ги са по- ка- лу- гье- ри,
 Гьор- \startTextSpan ги ле, ка- лу- ге- ря- но, \stopTextSpan
 Гьор- \startTextSpan ги ле, ка- лу- ге- ря- но \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ВА-1,2,23"
  tagline = ##f
}


