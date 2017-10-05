% http://lsr.dsi.unimi.it/LSR/Item?id=204
%
%%% Function: rhythmMarkA
%%% ============================================================
%%%  Purpose: print a sophisticated mark e.g
%%%           for rhythm directives (instead of \tempo)
%%%    Usage: \rhythmMarkA music1 label
%%% ------------------------------------------------------------
%%%  Variable: music (ly:music)
%%% ------------------------------------------------------------
%%%  Variable: label (string)
%%% ------------------------------------------------------------
%%%  Example: \rhythmMarkA #"80" \rhyMarkIIEighths
%%%             
%%% ------------------------------------------------------------
%%% Constants:
%%%           rhythmMarkStaffReduce = #-3
%%%           rhythmMarkLabelFontSize = #-2
%%% ------------------------------------------------------------
%%%  Comment: see below for predefined values for music
%%% ============================================================

rhythmMarkStaffReduce = #-2
rhythmMarkLabelFontSize = #-2

rhythmMarkA = #(define-music-function (parser location music label) (ly:music? string?)
   #{
      \mark \markup {
        \line \vcenter {
         
          \score {                     % 1nd column in line
            \new Staff \with {
              fontSize = #rhythmMarkStaffReduce
              \override StaffSymbol #'staff-space = #(magstep rhythmMarkStaffReduce)
              \override StaffSymbol #'line-count = #0
              \override VerticalAxisGroup #'Y-extent = #'(0 . 0)  % td
              \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0) %RV
            }

            \relative { \stemUp $music }

            \layout {
              ragged-right= ##t
              indent = 0
              \context {
                \Staff
                \remove "Clef_engraver"
                \remove "Time_signature_engraver" }
            } % layout
          } % 1st Score end

          \hspace #-0.5              
                                       % 2th column in line
          \italic \fontsize #rhythmMarkStaffReduce "="

	   \combine                     % 33st column in line
            \fontsize #rhythmMarkLabelFontSize $label
            \transparent \fontsize #rhythmMarkLabelFontSize f
                % This fakes a uniform baseline (ie. create common anchor for vcenter)

        } % line end
      } % markup end
   #})   

%%% predefined ly:music-Variables for use in function rhythmMarkA
%%% ============================================================

rhyMarkAAdot = {
  \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 16) %
 { b'8 ~ b8. }
}

rhyMarkAAAdot = {
  \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 16) %
 { b'8 ~ b8 ~ b8. }
}

rhyMarkAdotAA = {
  \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 16) %
 { b'8. ~ b8 ~ b8 }
}

rhyMarkBAdot = {
  \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) % 
 { b'4 ~ b8. }
}

rhyMarkABdot = {
  \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) % 
 {  b'8. ~ b4 }
}

rhyMarkCdot = {
 \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4) %
 { b'4 }
}

rhyMarkDdot = {
 \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4) %
 { b'8 }
}
%%% Begin Example
%%% ============================================================
%\score {
%  {
%    \override Score.RehearsalMark #'self-alignment-X = #LEFT
%    \override Score.BarNumber #'break-visibility = #all-invisible
%%    \override Score.RehearsalMark #'padding = #-2
%    \once \override Score.RehearsalMark #'X-offset = #5  % td
%    \rhythmMarkA \rhyMarkAAdot #"80"
%    g'2 g'2 | g'2 g'2 
%  }
%  
%  \layout {
%    ragged-right= ##t
%    indent = 0
%  }
%}

