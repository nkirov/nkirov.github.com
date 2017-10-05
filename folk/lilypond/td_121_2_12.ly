%{
TD_121_2_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
\varA  
\acciaccatura d8\startTextSpan e4 e\stopTextSpan | 
e8\prall( d) d\prall( c) | 
\varB
c\startTextSpan( d) d( e\stopTextSpan) |
 e8\prall( d) d( e) |  e8\prall( d) d\prall( c) | c( d) d4 
 \break
\bar "|:" 
\varC
d4\startTextSpan\mordent c\stopTextSpan | 
\varD
\acciaccatura d8\startTextSpan c( b) a4\stopTextSpan | 
\varE
c4\startTextSpan d8( e\stopTextSpan) | 
c( d) c4 |
\varF
\acciaccatura d8\startTextSpan c( b) a4\stopTextSpan | 
\varG
a\startTextSpan a\stopTextSpan
 \bar ":|" 
s4 \fixB g,4 \fixC
 \bar "|."
\break
\varA  
a'4\startTextSpan e'\stopTextSpan \bar "||" 
\varB
c8\startTextSpan( d) e4\stopTextSpan \bar "||" 
\varC
c8\startTextSpan([ d)]  c4\stopTextSpan| 
\varD
b8\startTextSpan( g) a4\stopTextSpan | 
\varE
c8\startTextSpan([ d)] d4\stopTextSpan \bar "||"  
\varF
b8\startTextSpan([ g)] a4\stopTextSpan \bar "||"  
\varG
a2\startTextSpan | a4 r\stopTextSpan
\bar "|."
}
\addlyrics { Ге- на а- би тъ- че, Ге- на а- би тъ- че, 
а- би- я- мур- лу- ци и чер- ни ше- я- ци }
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
  opus = "ТД-121,2,12"
  tagline = ##f
}


