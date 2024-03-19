%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/nocturne-op55-no1-parts.ily"
\include "includes/nocturne-op55-no2-parts.ily"

% Title page

\titlePage

% Table of contents

\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }
  \markuplist \table-of-contents
}

% PDFs

\tocItem \markup "No. 1 Andante in F minor"
\nocturneOneNotes
\pageBreak

\tocItem \markup \concat { 
  "No. 2 Lento sostenuto in E" \raise #0.75 \teeny \flat " major" 
}
\nocturneTwoNotes


% Midi

\nocturneOneMidi
\nocturneTwoMidi
