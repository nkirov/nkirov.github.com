%{
ba_001_1_08
td_113_2_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\override Glissando #'style = #'zigzag
\varA
d8\startTextSpan d8.\stopTextSpan\noBeam | 
d16[( c]) b16.[( a]) | d8 a8.\noBeam | 
\varB
a8\startTextSpan g8.\stopTextSpan\noBeam |
g8 c16\noBeam c8 | 
\varC
b16\startTextSpan[( a]) \noteF b8[(\glissando g16\stopTextSpan]) | 
\varD
b8\startTextSpan a8.\stopTextSpan\noBeam | 
a8 g8.\noBeam | g8 c16\noBeam c8 | 
\varE
b16\startTextSpan[( a]) b8.\stopTextSpan | 
d8 a8.\noBeam a8 g8.\noBeam
 \bar "|." 
\endmmm
 \varA
g8\startTextSpan d'8.\stopTextSpan\noBeam \bar "||"
\varB
a16\startTextSpan[( g]) g8.\stopTextSpan\noBeam \bar "||"
\varC
b8\startTextSpan\noBeam b8.\stopTextSpan\noBeam \bar "||"
\varD
g8\startTextSpan a8.\stopTextSpan\noBeam \bar "||"
\varE
b16\startTextSpan[( a]) \noteF b8[(\glissando g16\stopTextSpan])
 \bar "|." 
}
\addlyrics { Тръг- нал ми йе све- ти Пе- тър 
със \startTextSpan бя- ла мед- на кан- дил- нич- ка, \stopTextSpan
със \startTextSpan по- зла- те- на па- те- рич- ка \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ВА-1,1,8 (ТД-113,2,10)"
  tagline = ##f
}


