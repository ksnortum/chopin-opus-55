%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

%
% Scheme functions
%

edAccel =
  #(make-music 'DecrescendoEvent 'span-direction START 'span-type 'text
               'span-text "ed accel")

%
% Redefine
%

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

tupletOff = {
  \omit TupletNumber
  \omit TupletBracket
}
tupletOn = {
  \undo \omit TupletNumber
  \undo \omit TupletBracket
}

underSlur = \tweak avoid-slur #'inside \etc
noStaffPriority = -\tweak outside-staff-priority ##f \etc
trillSpannerUnderSlur = \override TrillSpanner.outside-staff-priority = ##f
trillUnderSlur = \once \override Script.avoid-slur = #'inside

%
% Markup
%

ritenuto = \markup \large \italic ritenuto
stretto = \markup \large \italic stretto
inTempo = \markup \large \italic "in tempo"
moltoLegto = 
  \markup \large \italic \whiteout \pad-markup #0.5 "molto legato e stretto"
piuMosso = \markup \large \italic "più mosso"
rallentando = \markup \large \italic rallentando
trillNatural = \markup \tiny \natural
trillFlat = \markup \tiny \flat
