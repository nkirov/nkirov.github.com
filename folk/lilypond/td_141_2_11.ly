%{
td_141_2_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 168
\cadenzaOn
\phrasingSlurDown
g2 b8([ c]) c([ d]~ d1~ d8[ c16 b] c4) b a8([ b]) a([ g]) g g\noBeam g1~ g4 r
\bar ""
b8([ c]) \bar "" d2~ d8[( c16 b]) \bar "" a1(~ a2 \grace { g16[\( a] } 
\afterGrace b1\)\( { a16[ g]\) } \bar "" a8\prall g4.~ g1) \bar "" r4 
\bar "" g2. b8([ c])
\bar ""
c8([ d]~ \afterGrace d1\( { c16[ b]\) } c4) b a8([ b]) a[( g]) g1 r4
\acciaccatura a8 \afterGrace b1\(( { a16[ g]\) } a8[ b]) a[(\prall g]) g1~ g
 \bar "|." 
s4 \fixB ees
  \bar "|." 
}
\addlyrics { Ча- кам те, ча- кам, Ян- \startTextSpan ко мо- ри, \stopTextSpan 
да дой- деш, да- ли си, 
Ян- \startTextSpan ко мо- ри, \stopTextSpan за- тво- рен }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 168 8)
		}
	}
}
%
\header{
  opus = "ТД-141,2,11"
  tagline = ##f
}


