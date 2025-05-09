%{
BA_1_2_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g'8( f) e4 | e4. e8 | d4 c8( b) | 
\varA
c4\startTextSpan d\stopTextSpan | 
 c4 b8( c) | c8( d) e4 | 
 \break
 e8( d) e4 | e4. e8 | d4 c8( b) | b8( c) d4 | e8->( d) d4 | d4 d |
\bar "|." 
\endm
\varA
b8\startTextSpan[( c]) d4\stopTextSpan 
\bar "|."  
}
\addlyrics { На бас са хва- на- ли, на бас са хва- на- ли два вак- ли 
ов- ча- ра, два вер- ни дру- га- ря }
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
  opus = "ВА-1,2,28"
  tagline = ##f
}


