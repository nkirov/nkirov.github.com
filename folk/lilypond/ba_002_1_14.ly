%{
BA_2_1_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
e8\noBeam d d8\noBeam d | d8([ c b]) a8 | e'8 d4. | d8( c) b8\noBeam a | e'8\noBeam d d8\noBeam d | d8([ c b]) a8 | b8 a4. | a4 r4 | a4 g8\noBeam fis8 | e4. d8 | a'8 a4. | a8( g) fis8\noBeam e8 | a4 a8\noBeam g8 | fis4. e8 | fis4 fis4 | e4 r4 
 \bar "|." 
 s4 \fixB b4 \fixC 
 \bar "|." 
}
\addlyrics { Дя- до Дя- ко ду- ма Ко- люв' ци, 
ма- \startTextSpan ри, \stopTextSpan
дя- до Дя- ко ду- ма Ко- люв' ци: Бул- ке мо, бул- ка Ко- люв'- це, 
ма- \startTextSpan ри, \stopTextSpan бул- ке мо, бул- ка Ко- люв'- це }
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
  opus = "ВА-2,1,14"
  tagline = ##f
}


