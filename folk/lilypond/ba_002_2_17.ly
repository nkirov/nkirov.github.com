%{
BA_2_2_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 7/16
a8\noBeam a e'8([ d16]) | d8\noBeam~ d8\noBeam~ d8. | \acciaccatura f8 g8 g16([ f]) e8([ d16]) | e16([ d] c8~ c8[ b16]) | a8\noBeam a e'8([ d16]) | d8\noBeam~ d~ d8. | \acciaccatura f8 g8 g16([ f]) e8([ d16]) | \acciaccatura d8 c4~( c8[ b16]) 
 \bar "|:"
b8\noBeam b \acciaccatura c8 d8. |
\varA
c8\startTextSpan~( c16[ b]) \acciaccatura a8 b8 a16\stopTextSpan | 
b8\noBeam b \acciaccatura c8 d8. | c8~( c16[ b]) a16 g8 | b8\noBeam b \acciaccatura c8 d8([ b16]) | c4( b16[ a b]) | d8 c16([ b]) a8. | a8\noBeam~ a8~ a8.
 \bar ":|"
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble 
\varA
c8\startTextSpan~( c16[ b]) \acciaccatura a8 b8 g16\stopTextSpan 
\bar "|."
}
\addlyrics { Ма- ри Дим- ке, мал- ка мо- ме, ма- ри Дим- ке, мал- ка мо- ме, ко- га ра- сти, Дим- ке, 
да по- ра- сти, ма- \startTextSpan ри, \stopTextSpan ко- га ста- на тол- каз мо- ма }
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
  opus = "ВА-2,2,17"
  tagline = ##f
}


