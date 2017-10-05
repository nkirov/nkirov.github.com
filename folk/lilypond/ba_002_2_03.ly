%{
BA_2_2_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a4 c | d d8( c) | c8([ b] a[ g]) | d'4 d8( c) | c([ b] b[ a]) | a4 b | 
\varA
c\startTextSpan b\stopTextSpan | 
a r4 | d4 d8( c) | c([ b] b[ a]) | a4 b | c b | a2 | 
\varB
a4\startTextSpan a\stopTextSpan | 
a r4 
 \bar "|." 
\endm 
\varA
c\startTextSpan b8( a\stopTextSpan) \bar "||" 
\varB
a8\startTextSpan a4.\stopTextSpan 
\bar "|." 
}
\addlyrics { Ле- ля на Стан- ка ду- ма- ше: Стан- ки мо, ми- ла, ле- ля- на, 
Стан- ки мо, ми- ла, ле- ля- на }
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
  opus = "ВА-2,2,3"
  tagline = ##f
}


