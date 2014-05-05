%{
TD_134_1_25
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
 \time 2/4
 c4 d8([ e]) | c16([ d8.] \times 2/3 { e8[ d c]) } | c8([ b] a4) | a4.( b8) | c4 c8([ b]) |
 b8( a4.) | a8([ b)] c([ d]) |  d16([ c8.] \times 2/3 { d8[ c b]) } | \times 2/3 { c4( b a) } |
 \varA
 a2\startTextSpan~( | a4 \times 2/3 { b8[ a g\stopTextSpan]) } | 
 \varB
 a4\startTextSpan^\ltoe a\stopTextSpan^\rtoe | 
 a r
 \bar "|."
 s4 \fixB e4 \fixC
 \bar "|." 
 \endm
\varA
 \time 3/4 a2\startTextSpan( \times 2/3 { b8[ a g\stopTextSpan]) } \bar "||"
 \varB
 \time 2/4 a8\startTextSpan([ b]) a4\stopTextSpan^\rtoe 
 \bar "|." 
}
\addlyrics { Гер- ги на служ- ба о- ти- ва и си на Ган- ка на- ръ- ча }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,25"
  tagline = ##f
}


