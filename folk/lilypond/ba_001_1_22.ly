%{
ba_001_1_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
b8 d16[( c b]) | 
\varA
a8\startTextSpan a[( g16\stopTextSpan]) | 
b8 d16[( c b]) | 
\varA
a8\startTextSpan a[( g16\stopTextSpan]) | 
b8 d8.\noBeam | 
\varB
e8\startTextSpan e8.\stopTextSpan\noBeam | 
\varC
d8\startTextSpan d16.\noBeam d\stopTextSpan | 
d8 c16.\noBeam b | a8 a8.\noBeam | a8 a8.\noBeam 
 \bar ":|" 
 \endmmm
\varA
a8\startTextSpan a8.\stopTextSpan\noBeam \bar "||"
\varB
e'8\startTextSpan e8[( d16\stopTextSpan])  \bar "||"
\varC
c8\startTextSpan d16.\noBeam d\stopTextSpan
 \bar "|."
}
\addlyrics { Из- тек- ло йе ед- но дър- во, 
я \startTextSpan по- гле- дай 
сви- ти Ра- \stopTextSpan хан- 
\startTextSpan ге- ла, ко- ла- ди ле \stopTextSpan }
\addlyrics { сто- ло- ва- то, кло- но- ва- то }
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
  opus = "ВА-1,1,22"
  tagline = ##f
}


