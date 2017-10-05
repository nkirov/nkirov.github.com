%{
TD_138_1_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 16 = 300
  \time 5/16
\varA  
 b8\startTextSpan~ b8.\stopTextSpan | 
 c8 b8\prall([ a16]) | a8\noBeam b8. | b8~ b8. | c8 b8([ a16])
 \bar ":|:"
 \repeat volta 2 { a8~ a8. | b16([ a]) g8([ fis16]) | e8 fis8\prall([ e16]) }
 \alternative { { e8~ e8([ fis16]) | g8\noBeam a8. } 
 { e8~ e8. | e8\noBeam e8. } }
\bar "|:"
d8\noBeam e8. | fis8\noBeam e8. | d8\noBeam e8. | 
\varB
fis8\startTextSpan\noBeam e8.\stopTextSpan  
 \bar ":|" 
s16 \fixB b4 \fixC
\bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
\varA  
\acciaccatura a'8\startTextSpan b8~ b8.\stopTextSpan \bar "||"
 \varB
e,8\startTextSpan\noBeam e8.\fermata\stopTextSpan
\bar "|."
}
\addlyrics { Кер- ва- на сли- за от- го- ре, 
от- го- ре от пла- ни- на- та -ни- на- та, 
Ди- \startTextSpan мо, Ди- мке, Ди- мо, Ди- мке \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 300 16)
		}
	}
}
%
\header{
  opus = "ТД-138,1,17"
  tagline = ##f
}


