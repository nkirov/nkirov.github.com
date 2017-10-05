%{
TD_134_1_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 76
%\time 5/16
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
\stemUp \ii a4( \ii b) \stemNeutral
c16^\markup{I певица}[( d c b] c2 \times 2/3 { d8[ c b] } \times 2/3 { a[ b c]) }
c8( \grace { b16[\( c b a] } b4.\)\glissando c8.[ b16] c[ b a8])
\afterGrace a2.(\( { b16[ a]\) } g4) r r8 \ii g8
\bar ""
\acciaccatura a8 \afterGrace b1(\( { c16[ b a]\) } b8[ a]) b[( a16\prall g])
a8[( b]) c16[( b a b]) a2. a1 
\stemUp \ii g'4\glissando \hideNotes a,64 \unHideNotes \stemNeutral 
\bar "||"
\iii a8 
c16^\markup{II певица}[( d c b] c2 d16[ c b8] \times 2/3 { c[ b a] } a8.[ b16 c8])
\acciaccatura { b16[ c b a] } b4.( c16.[ b32] a4) a2.( g8) r16 \bar "" \ii g \bar ""
\acciaccatura a8 b2( \times 2/3 { c8[ b a]) } 
\bar ""
b16[( a g8]) \acciaccatura g a8.[( b16]) c[( b a8]) 
\parS
\acciaccatura b8 a2.-\parenthesize^\ltoe a 
\stemUp \ii e'4\glissando \hideNotes a,64 \unHideNotes 
 \bar "|." 
s4 \fixB e
 \bar "|."  
}
\addlyrics { и Стан- \startTextSpan ке ле, \stopTextSpan и що си за- мрък- на- ла и " "
 и Стан- ке ле и що си за- мрък- на- ла и }
%
\layout {
     \context { 
	    \Staff \remove "Time_signature_engraver" } 
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
		tempoWholesPerMinute = #(ly:make-moment 76 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,24"
  tagline = ##f
}


