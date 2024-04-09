%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 3) (0 . 3))
                        ) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 2)) \etc
slurShapeC = \shape #'(
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeD = \shape #'((0 . 1) (0 . -0.5) (0 . -2) (0 . 0)) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2) (0 . 2) (0 . 0) (0 . -0.5))
                        ) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . 2) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeH = \shape #'((0 . 0) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 1))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -0.5) (0 . 0) (0 . 0) (0 . -0.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.5))                        
                        ) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (-3 . 2) (10 . -4))
                        ) \etc
slurShapeK = \shape #'(
                        ((0 . 2.5) (0 . 2.5) (0 . 0) (0 . 1))
                        ((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 3))
                        ) \etc
slurShapeM = \shape #'(
                        ((0 . -1) (0 . 0) (0 . 0) (0 . -1))
                        ((0 . -1) (0 . 0.5) (0 . 0) (0 . -1))
                        ) \etc
slurShapeN = \shape #'(
                        ((0 . -1) (0 . 2) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc

tieShapeA = \shape #'((1 . -0.5) (0 . 0) (0 . 0) (-1 . -0.5)) \etc

moveTrillSpanA = \tweak bound-details.left.padding 0.5 \etc
moveAccidentalA = 
  \tweak X-offset 0.75
  \tweak Y-offset 9
  \tweak extra-offset #'(0 . -12) 
  \etc
moveTextA = \tweak Y-offset 4 \etc
moveOttavaA = \once \override Score.OttavaBracket.extra-offset = #'(0 . -4)
moveCrescA = \tweak extra-offset #'(0 . -1) \etc
moveRestA = \tweak X-offset 0.5 \etc
moveTupletNumberA = \offset TupletNumber.X-offset 0.4 \etc
moveTupletNumberB = \tweak TupletNumber.Y-offset -6 \etc
moveTupletNumberC = \tweak TupletNumber.Y-offset -6.75 \etc

beamPositionsA = \once \override Beam.positions = #'(-1 . 1)

%%% Music %%%

global = {
  \time 12/8
  \key ef \major 
}

rightHandUpper = \relative {
  bf''2.( \grace { c,16 d } \afterGrace 11/12 d2.-\moveTrillSpanA 
    -\noStaffPriority \startTrillSpan { c16\stopTrillSpan d } |
  ef4. af g b, |
  c4.~ c4 d8 d4 ef8 \voiceOne g4 f8 |
  \oneVoice d2. ef4.) \voiceOne e-\slurShapeA ( |
  f4. ef4 d8 c4. d |
  ef2. bf4. c |
  d4. c4 bf8 a2. |
  g2.) \oneVoice af!4.-\slurShapeM ( c4 bf8 |
  
  \barNumberCheck 9
  g'4 af8 \tuplet 4/3 { a bf d c }  \voiceOne bf4. d, |
  ef4. af g b, |
  c4. d ef~ ef4 g16. f32 |
  d2. ef4.~ ef4) ef,8-\slurShapeC ( |
  \oneVoice df'2.~ df4. c4 b8 |
  c4 f8 ef4. df c4 b8 |
  c4.) ef2.-\slurShapeE ( d4 cs8 |
  d4 g8 f4. ef d4 cs8 |
  
  \barNumberCheck 17
  d4. af'2. af4.~ |
  af4. af2. af4. |
  g2. d4. g |
  ef4. d4 c8 ef2. |
  d4. f4 ef8 d4. a4 d8 |
  bf4. a4 g8) \voiceOne g'2.(~ |
  \oneVoice g4. d4 ef8 f4. g4 d8 |
  ef4. d4 c8) c'2.( |
  
  \barNumberCheck 25
  bf4. a,4 bf8 \tuplet 10/6 { cf[ d, af' a c bf cs d af'! g] } |
  f16 e ef8) r r4 r8 r4 r8 ef4-\slurShapeG ( d8 |
  df4. ef4 f8 c4. df |
  b4. c4 d8 ef4. d4 ef8 |
  g4 f8 g af b, c4. ef4 d8 |
  b4. c4 d8 \voiceOne ef4. f4 g8 |
  af4.~ af4 g8 fs4. g |
  gf4.~ gf4 f8 e4. f |
  
  \barNumberCheck 33
  ff4.~ ff4 ef8 d4. c4 d8 |
  \trillSpannerUnderSlur
  ef4. \oneVoice e4.\startTrillSpan \grace { ds16*1/2\stopTrillSpan e } 
    f4.-\moveTrillSpanA \startTrillSpan \afterGrace 7/8 
    fs4.\stopTrillSpan\startTrillSpan { es16\stopTrillSpan fs } |
  \tuplet 7/6 { g8 af a bf b d c }  \voiceOne bf4. d,) |
  \tuplet 7/6 { ef8-\slurShapeN \(_( e f fs g bf af) } g4. b, |
  c4. d ef~ ef4 g16. f32 |
  d2. ef4.~ ef4 ef,8\) |
  \oneVoice df'2.-\slurShapeI ( df4. c4 b8 |
  c4 f8 ef4. df c4 b8 |
  
  \barNumberCheck 41
  \voiceOne c2. ef4.\arpeggio d4 cs8 |
  d4 \oneVoice g8 f4. ef d4 cs8 |
  \voiceOne d4. af'2. af4.~ |
  % tie based on Author Rubinstein performance
  % https://www.youtube.com/watch?v=MyVFBkHepRw
  af4. af2. af4.~ |
  af4. gf4 f8 f4  e8 f4 g8 |
  g4 f8 ef4 c8 af2. |
  g4.) b4\rest ef,8 df'4.-\slurShapeJ ( c4 b8 |
  c4 f8 ef4. df c4 b8 |
  
  \barNumberCheck 49
  c2. ef4.\arpeggio d4 cs8 |
  d4 g8 f4. ef! d4 cs8 |
  d4. af'2. af4.~ |
  % tie, see measure 44 above
  af af2. af4.~ |
  % SrcB had the last g as a gf, probably an omission. 
  af4. gf4 f8 f4 e8 f4 g8 |
  g4 f8) c'4( c8 c4\arpeggio f,8 g4 d8 |
  \grace { af8*1/2 } <g ef'>1.) |
  ef'2.-\slurShapeK \( df4.~ df4 ef8 |
  
  \barNumberCheck 57
  cf2. \oneVoice \moveOttavaA \ottava 1 cf'2~ cf8. bf16 |
  bf4. bf'4 a8 \tuplet 4/3 4. { af bf, g' f  ef g, d' c } |
  \ottava 0 \voiceOne bf4. bf bf bf |
  bf4. bf bf s |
  \oneVoice \tupletOff \tuplet 5/3 4. {
    bf,8(-\noStaffPriority -\moveTextA ^\rallentando af bf c ef,)
    c'( bf c d d,)  d'( c d ef c,)  ef'( d ef f bf,,)
  } |
  <f' bf f'>4\)\arpeggio r8 <g df' ef g>4.-\slurShapeL ( <af c af'> <ef c'> |
  \voiceOne <af c>8^\inTempo <g bf>4) \oneVoice r4 r8  g( bf ef  g bf af' |
  g4.) r4 r8 <ef,, bf'>4.( <d bf'> |
  
  \barNumberCheck 65
  <f bf>2.) r4 r8 <g, ef' g>4. |
  <g bf ef g>1.~ |
  q4. r4 r8 r2. |
  \bar "|."
}

rightHandLower = \relative {
  s1. * 3 |
  s2. s4. \voiceFour bf'( |
  bf4 af2)  af4 af8  af8[ g r16 d]( |
  f16 e ef4) g2. gf4.( |
  \tuplet 4/3 { fs8) g! a bf }  d,4.~ d4 c16^( d \moveTupletNumberA
    \tuplet 8/6 { ef-. d-. f-. ef-. d-. ef-. c-. d-.) } |
  b4.( bf) s2. |
  
  \barNumberCheck 9
  s2. r4 af'!8  af[ g r16 f]( |
  f8 ef) r  s4.  r4 f8( f[ ef) r16 d]( |
  d8 c) r  s4.  r4 e16 f  g f c'4~ |
  c4 c8(  c[ bf) g16\rest af](  af8 g) r r4 s8 |
  s1. * 4 |
  
  \barNumberCheck 17
  s1. * 8 |
  
  \barNumberCheck 25
  s1. * 5 |
  s2. r4 c8 \acciaccatura { b8*1/2 c d } c4 bf8~ |
  bf8 af ef'2~ ef8( cs d) r ef( d)~ |
  d8 df \acciaccatura { c8*1/2 df ef } df2~ df8( b c) r df( c)~ |
  
  \barNumberCheck 33
  c8 cf \acciaccatura { bf8*1/2 cf df } cf2~ cf4 bf8 a4 af8 |
  af8 bf r s4. s2. |
  % SrcB has an af as the 4th note of the tuplet. This is probably an omission.
  s2. r4 af!8-. \moveTupletNumberB \tuplet 7/6 { 
    af16-.( g-. bf-. a-. af-. g-. f-. 
  } |
  f16-. ef-.) r4 r r8 r4 f!8 \moveTupletNumberC \tuplet 7/6 {
    f16-.( e-. g-. fs-. f-. e-. ef-.
  } |
  d16-. c-.) \moveRestA r4 s4. r4 e16-.( f-. g-. f-.) c'4~ |
  c4( c16-. bf-. a-. bf-. g-. af-. ef-. f-. g8-.) s4 s4. |
  s1. * 2 |
  
  \barNumberCheck 41
  r4 gf8( \grace { f16 gf af } gf4~ gf16 f) f2.~\arpeggio |
  f4 s8 s4. s2. |
  d'1. |
  df1. |
  % tie on c, SrcA
  df2. c~ |
  c4.~ c4 \voiceTwo ef,8~ \voiceFour ef16-.[ f-. c-.]  d-.[ ef-. bf-.]
    c-.[ d-. af-.]  bf-.[ c-. f,-.] |
  % Editorial decision to keep the g in the upper staff.
  g16 r r4 s4. s2. |
  s4.\voiceTwo r16 af'-.( g-. gf-. f-. ff-.) ef2.~ |
  
  \barNumberCheck 49
  ef4 gf8( \grace { f8*1/2 gf af } gf4~ gf16 f) f2.~\arpeggio |
  f4 r8 r16 bf-.( a-. af-. g-. gf-.) f2. |
  d'1. |
  \after 4. \stopTrillSpan df1.-\tieShapeA ^~\startTrillSpan |
  \after 4. \stopTrillSpan df2.\startTrillSpan \after 4. \stopTrillSpan 
    c-\moveAccidentalA _\trillFlat\startTrillSpan | 
  c4.-\moveAccidentalA _\trillNatural\startTrillSpan 
    \grace { b16*1/2\stopTrillSpan c } ef4 c8 af4.~\arpeggio af4 af8 |
  s1. |
  gf1.~ |
  
  \barNumberCheck 57
  gf2. s |
  s1. |
  g'8 af ef \tupletOn \tuplet 5/3 4. { 
    f( ef f g d)  ef( d ef f c)  d( c d ef bf) 
  } |
  \tupletOff \tuplet 5/3 4. { 
    d( c d ef bf)  c( bf c d af) bf( af bf c g) af( g af bf f)
  } |
  s1. * 2 |
  ef4. s s2. |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

% I made several editorial decisions to keep the left hand parts in the lower
% staff and use ledger lines instead.  This seems more readable to me.
leftHand = \relative {
  \global
  \clef bass
  r2. bf,,8( bf' af'  c bf af' |
  g8 ef bf  g bf, ef,)  g( d' f  af g f' |
  ef8 c af  f ef af,)  a_( f' c'  \staffUp \voiceTwo f ef c') |
  \oneVoice \staffDown bf,,8^( f' af!  d g f  ef,, bf' g'  c, df' c) |
  \staffDown f,8-\slurShapeB _( af c  \staffUp \voiceTwo g' f c')  \staffDown
    \oneVoice g,,( d' f  b g f') |
  c,,8( g' c  ef g ef')  ef,,( bf' ef  bf' gf ef') |
  d,,8( d' g!  bf g' d,)  d,( d' fs  c' d, fs) |
  g,8( cs ef  d fs g)  f,!( d' af'  a bf <d af'!>) |
  
  \barNumberCheck 9
  ef,,8( bf' g'  c bf g')  f,,( d' af'  c bf af') |
  g,,8_( ef' g  \voiceTwo bf \staffUp ef bf')  \staffDown \oneVoice g,,( d' f
    af g f') |
  af,,8_( ef' af  \voiceTwo f \staffUp ef' c')  \staffDown \oneVoice 
    a,,_( f' d' \voiceTwo c ef! \staffUp ef'!) |
  \staffDown \oneVoice bf,,8( f' af  ef' d f)  ef,,_( bf' ef  \voiceTwo g bf
    \staffUp ef) |
  \staffDown \oneVoice g,,8( d'! ef  bf' df ef)  ef,,( ef' bf'  df ef g) |
  af,,8( ef' af  c ef af)  g,,( d'! ef  bf' df ef) |
  af,,8-\slurShapeD ( gf' af  c ef gf)  a,,( e' f  c' ef! f) |
  bf,,8( e f  bf d f)  a,,( e' f  c' ef! f) |
  
  \barNumberCheck 17
  bf,,8( f' af!  ef' d af')  cf,,( f af  ef' df af') |
  c,,!8( f af  df c af')  df,,8( f af  c b af') |
  d,,!8( f g  b f' g)  g,,( f' g  b f' g) |
  c,,,8( g' c  ef fs g  g' ef c  g c, a) |
  d,8( d' g  c d g)  d,,( d' fs  c' d fs) |
  g,,8-\slurShapeF _( d' g  bf cs d \voiceTwo \staffUp bf' g d \staffDown
    \oneVoice bf g d) |
  g,8( d' g  b f' g)  g,,( d' g  b f' g) |
  c,,,8( g' c  ef g ef')  a,,_( fs' d'  \voiceTwo c \staffUp gf' ef') |
  
  \barNumberCheck 25
  \staffDown \oneVoice bf,,,8( bf' ef  af! ef' af!  g f bf,  af f bf,) |
  ef,8( bf' g'  c bf g'  d f ef  bf g bf,) |
  f8( df' f  bf af af'  f df af  f df f,) |
  g8( d'! f  af g f')  c,,8( c' g'  c ef g) |
  af,,8( c f  bf af g'  f d af  f d f,) |
  g8( d' f  af g f')  c,8( g' c  ef g g,) |
  c,8( ef c'  af ef' ef,)  c( d d')  b,( d d') |
  bf,!8( bf' gf  df' bf bf')  bf,,( c c')  a,( c c') |
    
  \barNumberCheck 33
  af,!8( af' ff  cf' af af')  bf,,( f' af  d bf bf') |
  bf,,8( g' bf  df c <bf bf'>)  bf,( af' cf~  <cf ef> <bf d!> <af bf'>) |
  ef,8( bf' g'  c bf g')  f,,( d' af'  c bf af') |
  g,,8( ef' g  c bf g')  g,,( d'! f  af g f') |
  af,,8_( ef' af  \voiceTwo \staffUp f' ef c')  \staffDown a,,( f' d'
    \beamPositionsA c ef \staffUp ef') |
  \oneVoice \staffDown bf,,,8-\slurShapeH ( bf' f'  af! d bf,)  ef,_( bf' ef 
    \voiceTwo g bf \staffUp ef) |
  \oneVoice \staffDown g,,8( d'! ef  f ef df')  g,,( d'! ef  f ef df') |
  af,8( d! ef  f ef c')  g,( d' ef  f ef df') |
  
  \barNumberCheck 41
  af,8( d! ef  c' af ef')  a,,( e' f g! f ef'!) |
  bf,8( e f  g f d')  a,( e' f  g f ef'!) |
  bf,8( f' af  c bf ef  d g f  d af f) |
  cf8( f af  \voiceTwo \staffUp ef' df gf  f bf af  f df \staffDown af) |
  bf,8( bf' gf  df' bf \staffUp bf')  \staffDown bf,,( g' c  g c g') |
  af,,8( af' f  c' af \staffUp \voiceFour af')  \staffDown \oneVoice
    bf,,,( f' bf  f' bf, f) |
  ef8_( bf' ef  \voiceTwo g bf \staffUp ef)  \staffDown \oneVoice g,,( d'! ef
    f ef df') |
  a,8( d ef  f ef c')  g,( d'! ef  f ef df'!) |
  
  \barNumberCheck 49
  af,8( d! ef  c' af ef')  a,,( e' f g! f ef'!) |
  bf,8( e f  g f d')  a,( e' f g! f ef'!) |
  bf,8( f' af!  c bf ef  d g f  d af f) |
  cf8_( f af  \voiceTwo \staffUp ef' df gf  f bf af  f df \staffDown af) |
  bf,8( bf' gf  df' bf bf')  bf,,( g' c  g c g') |
  \oneVoice af,,8( af' f  f' c af')  bf,,,( bf' af'  d bf f') |
  ef,,8( bf' ef  g c bf  g' ef bf  g ef bf) |
  ef,8( bf' ef  gf cf bf  gf' ef bf gf ef bf) |
  
  \barNumberCheck 57
  ef,8( a cf  a' df cf  a' gf cf,  a cf, a) |
  ef8( bf' ef  g c! bf  g' ef bf  g ef bf) |
  ef,8( bf' d  af' c bf  af' d, bf  af d, bf) |
  ef,8( bf' d  af' c bf  af' d, bf  af d, bf) |
  ef,8( bf' d  af' c bf  af' d, bf  af d, bf) |
  ef,4 r8 <ef' bf' ef>4. <ef c' ef> <ef af ef'> |
  ef,,8( ef' bf'  g' bf f' ef bf g  ef bf ef, |
  bf4.) r4 r8 \clef treble <bf'' g'>4.-> <bf f'>-> |
  
  \barNumberCheck 65
  <bf af'>2.-> r4 r8 \clef bass <ef,, bf'>4. |
  <ef bf' ef>1.~ |
  q4. r4 r8 r2. |
}

dynamics = {
  s1.\f |
  s1. * 2 |
  s2. s4. s-\tweak to-barline ##f \> |
  s4.\! s s2. |
  s8 s4\< s8\! s4 s4. s\> |
  s4 s8\! s4. s2. |
  s4 s8\< s2. s4 s8\! |
  
  \barNumberCheck 9
  s1. * 8 |
  
  \barNumberCheck 17
  s1.\cresc |
  s2. s4. s4 s8\! |
  s1.\p |
  s1. * 2 |
  s4 s8\< s2. s4. <>\! |
  s1. |
  s4 s8-\tweak Y-offset 2 \< s4. s4 s8\! s4. |
  
  \barNumberCheck 25
  s1. |
  s4. s2.-\tweak extra-offset #'(0 . -2) \> s4. |
  s1.-\tweak Y-offset -3 \p |
  s1. * 2 |
  s2. s4 s8-\tweak to-barline ##f \> s4. |
  s8\! s s2\> s4 s8\! s4. |
  s8 s\> s2 s4. s8\! s4 |
  
  \barNumberCheck 33
  s4 s8\> s4. s8\! s s-\tweak to-barline ##f \< s4. |
  s8\! s4-\moveCrescA\cresc s4. s s4 s8\! |
  s1.-\tweak X-offset 0 -\tweak Y-offset -2\ff |
  s1. * 2 |
  s2. s4\sfp s8\< s4. |
  s8 s4\! s4. s2. |
  s1. |
  
  \barNumberCheck 41
  s4.\> s4 s8\! s2. |
  s1. |
  s1.\cresc |
  s4. s4 s8\dim s4. s4 s8\! |
  s2.\> s\< |
  s2.\> s\f |
  s1.-\tweak X-offset -0.5 -\tweak Y-offset -3 \sfp |
  s1. |
  
  \barNumberCheck 49
  s8 s4\> s4 s8\! s2. |
  s1. |
  s2.-\tweak Y-offset 2 \cresc s4. s4 s8\! |
  s2.-\tweak Y-offset -1 \dim s4. s4 s8\! |
  s2. s8 s4\< s4. |
  s4\> s8\! s4.\< s2.\f |
  s4.\sfp\> s4 s8\! s2. |
  s1. |
  
  \barNumberCheck 57
  s1. * 2 |
  s1.\dim |
  s1. |
  s2. s4. s4 s8\! |
  s1. * 2 |
  s2. s-\tweak to-barline ##f \< |
  
  \barNumberCheck 65
  s2.\! s4. s\f |
  s1.-\tweak to-barline ##f \< |
  s4.\! s s2. |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo "Lento sostenuto" 4. = 50
  s1. * 60 |
  \tempo 4. = 46
  s1. |
  \tempo 4. = 42
  s1. |
  \tempo 4. = 50
  s1. * 4 |
}

pedal = {
  s2. s4\sd s8\su s4\sd s8\su |
  s4.\sd s4 s8\su s4.\sd s4 s8\su |
  s4.\sd s4 s8\su s4.\sd s4 s8\su |
  s4.\sd s4. s4\su\sd s8\su s4. |
  s4.\sd s\su s\sd s\su |
  s4\sd s8\su s4.\sd s4\su\sd s8\su s4. |
  s4\sd s8\su s4\sd s8\su s4.\sd s8 s4\su |
  s2. s4\sd s8\su s4. |
  
  \barNumberCheck 9
  s4.\sd s4 s8\su s4.\sd s\su |
  s4.\sd s\su s\sd s\su |
  s4\sd s8\su s4\sd s8\su s4\sd s8\su s s8.\sd s16\su |
  s4.\sd s8 s4\su s2.\sd |
  s4\su s8\sd s4. s s\su |
  s4.\sd s8 s4\su s4 s8\sd s4 s8\su |
  s4.\sd s4 s8\su s4 s8\sd s4 s8\su |
  s4 s8\sd s4 s8\su s4 s8\sd s4 s8\su |
  
  \barNumberCheck 17
  s4.\sd s4 s8\su s4.\sd s4 s8\su |
  s4.\sd s4 s8\su s4.\sd s4 s8\su |
  s2.\sd s4. s4 s8\su |
  s4.\sd s4\su s8\sd s4. s4 s8\su |
  s4.\sd s8 s4\su s4.\sd s4 s8\su |
  s4.\sd s4\su s8\sd s4. s4 s8\su |
  s2.\sd s4. s4 s8\su |
  s4.\sd s4 s8\su s4.\sd s4 s8\su |
  
  \barNumberCheck 25
  s2.-\tweak Y-offset -1 \sd s8\su s4\sd s4 s16 s\su |
  s4.\sd s4 s8\su s4 s8\sd s4 s16 s\su |
  s4.\sd s8\su s4\sd s4. s4 s16 s\su |
  s4.\sd s\su s-\tweak Y-offset -1.5 \sd s4 s8\su |
  s4.\sd s8 s4\su s4.\sd s4 s8\su |
  s4.\sd s\su s\sd s4 s8\su |
  s4.\sd s4 s8\su s2. |
  s4.\sd s4 s8\su s2. |
  
  \barNumberCheck 33
  s4.\sd s4 s8\su s4\sd s8\su s4\sd s8\su |
  s4\sd s8\su s4\sd s8\su s4\sd s8\su s4\sd s8\su |
  s4\sd s8\su s4\sd s8\su s4.\sd s4\su\sd s8\su |
  s4.\sd s\su s\sd s\su |
  s4.\sd s4 s8\su s4\sd s8\su s4\sd s16 s\su |
  s4.\sd s4 s8\su s4.\sd s4 s8\su |
  s1. * 2 |
  
  \barNumberCheck 41
  s8\sd s\su s\sd s4 s16 s\su s2. |
  s1. |
  s4\sd s8\su s4. s\sd s4 s8\su |
  s4\sd s8\su s2. s4\sd s8\su |
  s4.\sd s4 s8\su s4.\sd s4 s8\su |
  s4.\sd s4 s8\su s2. |
  s4.\sd s4 s8\su s2. |
  s1. |
  
  \barNumberCheck 49
  s1. * 2 |
  s4.\sd s\su s\sd s4 s8\su |
  s4.\sd s8 s4\su s4.\sd s4 s8\su |
  s4.\sd s4 s8\su s4.\sd s4 s8\su |
  s4.\sd s4 s8\su s4.\sd s4 s8\su |
  s4.\sd s4 s8\su\sd s4. s4 s8\su |
  s4.\sd s8 s4\su s4.\sd s4 s8\su |
  
  \barNumberCheck 57
  s4.\sd s8 s4\su s4.\sd s4 s8\su |
  s4.\sd s8 s4\su s4.\sd s4 s8\su |
  s4.\sd s8\su s4\sd s2. |
  s2. s4. s4 s16 s\su |
  s4.\sd s4\su s8\sd s4\su s8\sd s4 s8\su |
  s4.\sd s\su s2.\sd |
  s8\su s4\sd s4. s4.\su\sd s4 s8\su |
  s2.\sd s8 s4\su s4.\sd |
  
  \barNumberCheck 65
  s2. s4 s8\su s4.\sd |
  s1. |
  \tag layout { s1. | } \tag midi { s4. s2.\su s4. | }
}

forceBreaks = {
  % page 1
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \pageBreak
  
  % page 2
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \pageBreak
  
  % page 3
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \pageBreak
  
  % page 4
  s1. * 3 \break
  s1. * 3 \break
  \grace { s8 } s1. * 4 \break
  s1. * 3 \break
}

nocturneTwoNotes =
\score {
  \header {
    title = "Nocturne Two"
    composer = "Frédéric Chopin"
    opus = "Opus 55, No. 2"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    connectArpeggios = ##t
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {
    \context {
      \Staff
      \consists Span_arpeggio_engraver
    }
  }
}

\include "articulate.ly"

nocturneTwoMidi =
\book {
  \bookOutputName "nocturne-op55-no2"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
