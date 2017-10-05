%{
BA_3_1_31
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
d4 a | e'8\noBeam e e8\noBeam d | d4 a | d d8( c) | c8( b) a4 | g8\noBeam c c8\noBeam b | c8( b) a4 | d4 d8( c) | c8( b) a4 | g8 a16([ b]) c8\noBeam c | c8( b) a4 | a a 
 \bar "|." 
}
\addlyrics { Ко- го как си, До- \startTextSpan не, \stopTextSpan
по- глед- на ла, се- ки- му си, До- \startTextSpan не, \stopTextSpan
бо- ляс да- ла, се- ки- му си, До- \startTextSpan не, \stopTextSpan
бо- ляс да- ла }
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
  opus = "ВА-3,1,31"
  tagline = ##f
}


