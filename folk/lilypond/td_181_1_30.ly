%{
TD_181_1_30
%}
\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
  \time 2/4
f4 \acciaccatura f8 g4 | 
g8( f4 \grace { g16\([ f] } ees8\)) |
\varA
d4\startTextSpan d\stopTextSpan 
f f8( g) | g4\prall f8 g\noBeam 
\varB  
g4\startTextSpan f8( g\stopTextSpan) |
\varC
g\startTextSpan( f4 ees8\stopTextSpan) 
d( c) d4 d8 d4. d4 r4 
\bar "|." s4 \fixB cis4 \fixC \bar "|."
\endm
\varA
 d8\startTextSpan( c) d4\stopTextSpan  \bar "||"
\varB
 g8\startTextSpan( f)  f8( g\stopTextSpan)  \bar "||"
\varC
g\startTextSpan( f4 \grace { g16[\( f] } ees8\stopTextSpan\))  \bar "|." 
} 
\addlyrics { Лю- бят са Пър- ван и Ра- да, 
ма- \startTextSpan ри, \stopTextSpan та са лю- би- ли лъ- га- ли }
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
%%   title = "Любят сей Първан и Рада"
  composer = "ТД-181,1,30"
  tagline = ##f
	}

