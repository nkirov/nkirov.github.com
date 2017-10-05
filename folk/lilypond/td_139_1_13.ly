%{
sva_139_1_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 132
\time 2/4
\override Glissando #'style = #'zigzag
\varA
\acciaccatura g8\startTextSpan a4 b\stopTextSpan |
\varB
b\startTextSpan b | \acciaccatura c8 \noteFi d([\glissando c]) b[( a\stopTextSpan]) |
\varCD
a4\startTextSpan a16([ b a g\stopTextSpan]) |
g8\noBeam fis e\noBeam d | g2~ | g |
\varA
\acciaccatura g8\startTextSpan a4 b\stopTextSpan | 
\parS
b-\parenthesize\prall a | 
\varEF
\noteFi \acciaccatura b8\startTextSpan\glissando d4 b8([ a]) | a4 g8([ fis\stopTextSpan]) | 
\varG
\acciaccatura g8\startTextSpan a4 e8\noBeam e\stopTextSpan | 
e2~ | e\fermata
 \bar "|." 
 s4 \fixB fis \fixC
  \bar "|."
\endm  
\varA
\acciaccatura g8\startTextSpan a4 \acciaccatura a8 b4\stopTextSpan \bar "||"
\varB
b\startTextSpan a\prall | \noteFi \acciaccatura b8\glissando d4 b\stopTextSpan  \bar "||"
\varC
b8\startTextSpan([ a]) a4\prall\stopTextSpan \bar "||"  
\varD
a8\startTextSpan[( b]) g4\stopTextSpan \bar "||" 
\varE
b8\startTextSpan([ c]) b([ a]) | g4 a8([ g\stopTextSpan]) \bar "||"
\varF
\acciaccatura c8\startTextSpan d[( c]) b([ a]) | a8([ b]) g4\stopTextSpan \bar "||"
\varG
g8\startTextSpan([ fis]) e\noBeam e\stopTextSpan  
  \bar "|." 
}
\addlyrics { Жел- во ма- ри, вак- ла жел- во, 
ти- \startTextSpan ри- ни- га- ни, \stopTextSpan  
тръг- на- ла йе вак- ла жел- ва, 
трам- \startTextSpan ба- ба- ром \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,13"
  tagline = ##f
}


