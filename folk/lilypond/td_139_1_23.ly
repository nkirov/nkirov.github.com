%{
TD_139_1_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 112
  \time 2/4
\varA
  \acciaccatura g8\startTextSpan a4 e4 | \acciaccatura g8 a4( b) | b8([ a]) a8\prall([ g]) | 
  \acciaccatura g8 a4.( g8) | \acciaccatura { a16[ g f] } e4 e\stopTextSpan \breathe | 
  \acciaccatura g8 a4 a8\prall([ g]) | \acciaccatura g8 a4( b16[ a g f]) | 
  \acciaccatura f8 g4 \acciaccatura a8 g4 | \time 3/4 e2. | \time 2/4 e4 e\fermata
 \bar "|." 
 s4 \fixB gis4 \fixC 
 \bar "|." 
\endm
 \varA
  \acciaccatura g8\startTextSpan a4 e8([ d)] | \acciaccatura g8 a2 | 
  g4 \acciaccatura a8 b8([ a]) | 
  a4\mordent( b16[ a g8]) | g8\prall([ f)] e4\stopTextSpan
\bar "|." 
}
\addlyrics { Тръг- нал е Гьор- ги, Гьор- ге ле, 
Гьор- \startTextSpan ге- ле, йе- дин \stopTextSpan 
на \startTextSpan ма- ма \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,23"
  tagline = ##f
}


