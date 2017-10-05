%{
TD_181_1_21
%}
\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 138
  \time 2/4
  d4 f16( g8.) | f8( g4^\rtoe f16 e) | f4 f8( e) | d2^\rtoe d8( e) c4 | f e16( d e8) 
  d4.^\rtoe( e8) | f4 e16( d e8) | d2( d2) | d4^\ltoe d^\rtoe  
 \bar "|." 
 s4 \fixB e4 \fixC
 \bar "|."
\break
  d4^"II вариант" f16( g8. ) | \time 3/4 f8( g4. f8 e) | \time 2/4 f4 f8( e ) | \time 3/4 d2.
\time 2/4 d8( e ) c4  f e16( d e8 ) |
 \time 3/4 d2( e4 ) | \time 2/4 f4 e16( d e8 ) | d2~ d2 | \time 3/4 d4 d2  
 \bar "|."
}
\addlyrics { За- броч- нял Сто- ян, Сто- я- не, на те- зи пус- ти дю- кя- ни 
" " За- броч- нял Сто- ян, Сто- я- не, на те- зи пус- ти дю- кя- ни }
 %
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
	}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}

%
\header{
%%    title = "Заборчнял Стоян"
  composer = "ТД-181,1,21"
  tagline = ##f
	}


