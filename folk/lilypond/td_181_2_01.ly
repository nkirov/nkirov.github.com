%{
td_181_2_01
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 132
\cadenzaOn
f8([ g]) g[( a]~ a1\fermata) a8\noBeam a~ a2. a8([ g16 f] \times 2/3 { g8[ a g] } f4^\ltoe) g8([ a]~ a1.\fermata) r4
%\bar ""
a8[( g]) \acciaccatura f8 g2.(~ g8[ f]) g[( a]) a2.( g4) a8[( g16\prall f] g4. f16[ e]) f4.( e16[ d] c4) r
\bar ""
a'8[( g]) \acciaccatura f8 g2.( f4) g8[( a]) a2.( g4) a8[( g16\prall f] g4. f16[ e]) f4.( e16[ d] c4) r
%\bar ""
d8([ e]) f([ g]~ g2 f4) g8([ f]) f\prall[( e^"↓"]) d1 d1\fermata( c4) r
\bar ""
a'8([ g]) g2.\mordent( f4) g8([ a]) a2.( g4) a8([ g16\prall f] g4. f16[ e]) f4.( e16[ d] c4) r
%\bar ""
d8([ e]) f([ g]~ g2 f4) g8([ f]) f\prall[( e^"↓"]) d1~ d4 d1\fermata
 \bar "|." 
s4 \fixB cis
  \bar "|." 
}
\addlyrics { Два са ор- ла ви- ят, ви- ят, ма- мо, би- ят, ви- ят, ма- мо, би- ят,
го- ря "в си-" ньо ни- бе, го- ря "в си-" ньо ни- бе, кри- ла- та им со- чат }
%
\layout {
   \context { 
	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
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
  opus = "ТД-181,2,1"
  tagline = ##f
}


