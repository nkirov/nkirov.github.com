%{
TD_121_1_13
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%% \tempo 8 = 48
  \time 7/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"48"   
  \repeat volta 2 { a8 a b c16 | d8 c\noBeam b\prall  a16 | a8~ a~ a8. | }
  \alternative { { b16([ c)] b\noBeam a g8. }
  { a16([ b)] b a\noBeam g8\prall([ fis16)] } }
 \repeat volta 2 { fis8 fis\noBeam fis16 a8 | g8 g16([ fis)] e([ fis!)] d16 |
 e8~ e~ e8. }
 \alternative { { a16([ b)] b a\noBeam g8\prall([ fis16)] }
 { e16([ d)] cis d\noBeam e8. } }
 \bar "|." 
s8. \fixB e4
  \bar "|." 
}
\addlyrics { Тъ- пан тум- ка у Хан- ко- ви, 
де, \startTextSpan дей ги- ди, де, \stopTextSpan 
дей \startTextSpan ги- ди де \stopTextSpan
за- же- ни се бя- ла Ра- да, 
де, \startTextSpan дей ги- ди, де, \stopTextSpan 
дей \startTextSpan ги- ди де \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 164 8)
		}
	}
}
%
\header{
  opus = "ТД-121,1,13"
  tagline = ##f
}


