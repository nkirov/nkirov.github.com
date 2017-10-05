%{
BA_2_2_26
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a8\noBeam g a8\noBeam b | c4( \times 2/3 { d8[ c b])} | a4 \acciaccatura c8 d4 | 
c4( \times 2/3 { d8[ c b])} | a4 c8( d) | 
\break
d8^">"( c) c^">"( b) | a4.( g8) | 
g8\noBeam g a8\noBeam b | 
\gliss
\noteFi d8^">"\glissando( c) \noteFi c^">"\glissando( b) | 
a2 | a4 a   
 \bar "|." 
}
\addlyrics { Па- съл е Ми- тьо ва- кли ши- ля- та, 
ка- \startTextSpan дън Е- ле- но, ма- ри, ка- дън Е- лен- ке \stopTextSpan }
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
  opus = "ВА-2,2,26"
  tagline = ##f
}


