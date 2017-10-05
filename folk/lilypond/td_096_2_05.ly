%{
TD_096_2_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
% \tempo 8 = 168
% \time 7/16
a4 b | b( c16[ b a b]) | a4 a8\noBeam b | c4 b | a8\rtoe( b^\ltoe) a( g) |
g4 r4 | g4 a8\noBeam b | c4 b\mordent | a4\rtoe a^\ltoe a2 
\bar "||"
g4 a8( b) | b2 | a4 a8\noBeam b | c4 b | a4 \times 2/3 { b8([ a g)] } | g4 r4 |
g8 a4 a8 | b4 c8( b) a4 a^\ltoe | a2
 \bar "|." 
 s4 \fixB d,4 \fixC
  \bar "|." 
}
\addlyrics { Дон- \startTextSpan ки ле, \stopTextSpan 
дош- ло е мом- че за- гор- че, 
дош- ло е мом- че за- гор- че, 
Дон- \startTextSpan ки ле, \stopTextSpan
го- ве- да да при- ку- пу- ва, 
го- ве- да да при- ку- пу- ва }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-96,2,5"
  tagline = ##f
}


