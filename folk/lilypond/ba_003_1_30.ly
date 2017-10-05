%{
BA_3_1_30
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g4 a8( b) | c4 b | 
\parS
c d-\parenthesize-\mordent  | 
c b\prall | g c8( b) | c( b) a8\noBeam b | c4 b\mordent | a r4 | 
\gliss
g4 \noteFi c8\glissando( b) | \noteFi c\glissando( b) a8\noBeam b | 
\varA
c4\startTextSpan \noteFi b8\glissando( a\stopTextSpan) | 
a4 r4 
 \bar ":|" 
\endm
\varA
g4\startTextSpan c8\noBeam b\stopTextSpan 
\bar "|."
}
\addlyrics { Ма- ри сва- те мо- кро- по- ло, 
ни- \startTextSpan дей до, ма- ри, 
ни- дей \stopTextSpan 
до, \startTextSpan ни бой са, ма- ри, ни "ща (ти)" до,  \stopTextSpan ни ща ти }
\addlyrics { как- ва си ми сна- ха да- ла }
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
  opus = "ВА-3,1,30"
  tagline = ##f
}


