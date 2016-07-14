+++
date = "2016-07-13T20:36:18+10:00"
title = "The Songlib chord chart format"
+++

The Songlib chord chart format is designed to be easy to read while still in
plain text format.  In summary:

# Quick start summary

 - Chord lines start with a full stop
 - Lyric lines start with a space *(so they line up with the chords)*
 - And verse headings are wrapped in [square brackets]
 - Verses are separated by blank lines *(with no white space)*


Here is an example of a complete song which has two verses,
a chorus, and a bridge:

## An example song

    [Verse 1]
    .C#m              B/D#    E
     You call me out upon the waters
    .          B                     A
     The great unknown where feet may fail
    .C#m                     B/D#   E
     And there I find You in the   mystery
    .       B                    A
     In oceans deep my faith will stand

    [Chorus]
    .A      E             B
     I will call upon Your Name
    .A           E             B
     And keep my eyes above the waves
    .            A                 E              B
     When oceans rise My soul will rest in Your embrace
    .         A         B       C#m       B    E
     For I am Yours and You are mine

    [Verse 2]
     Your grace abounds in deepest waters
     Your sovereign hand will be my guide
     Where feet may fail and fear surrounds me
     You've never failed and You won't start now

    [Bridge]
    .C#m                     A
     Spirit lead me where my trust is without borders
    .       E
     Let me walk upon the waters
    .    B
     Wherever You would call me
    .C#m                    A
     Take me deeper than my feet could ever wander
    .       E
     And my faith will be made stronger
    .       B
     In the presence of my Saviour

Editing made easy
Simple, quick, easy to learn, & automated

You will love entering chord charts using plain text.
Formatting is easy. All you need to know is:

# Syntax

A song is comprised of a number of verses.  Each verse is separated with a blank line.
Verses can have headings, chords, & lyrics.

## Verses

Verses are comprised of one or more line, and each verses is separated by a blank line.  


## Verse headings

And Headings are wrapped in [square brackets].  For example:

<pre><span style="background: #afa;">[</span>Verse 1<span style="background: #afa;">]</span></pre>

**There is currently no convention or requirement as to what heading text to use.**

*However*, future versions of Songlib
might introduce some optional conventions to access in formatting, and shortcut keys.  Eg, [Chorus] could be emphasised
or [Verse 2] accessed by pressing 2 on your keyboard.

## Chord lines

Chord lines start with a full stop.  For example:

<pre><span style="background: #afa;">.</span>C#m              B/D#    E</pre>


Use spaces (not tabs) to space out chords so that they appear above the lyrics they related to.


## Lyric lines

Lyric lines start with a space.  For example:

<pre><span style="background: #afa;">&nbsp;</span>Take me deeper than my feet could ever wander</pre>


## Paste from web

We all hate pointless typing, so don't do it. If you have found a chord chart elsewhere on the internet, just copy and paste it into Songlib using the Paste from web option. Songlib will look for chords, and automatically format them for you.

# Conversion to slides

Each verse is automatically converted into a *slides* when using the presenter.  
Chords are striped out, leaving only the lyrics.  Therefore, example above would have
four slides.  The first slide would look like:

    You call me out upon the waters
    The great unknown where feet may fail
    And there I find You in the mystery
    In oceans deep my faith will stand

**How your verse is converted into a slide**

1. Chord lines are removed, leaving only the lyrics.
2. Multiple spaces are replaced by a single space.
3. Pipes `|` are converted into line-breaks.

# Transposing


# Tips & tricks

## Use spaces instead of tabs

If you use tabs to space out your chords, your chords may not line up to the
lyrics the same as they do in the editor.
(This may be fixed in upcoming versions)

## Use verse headings

Although your chord chart might look great without headings, the presenter uses
the heading text when showing slide thumbnails.  So, make you projector
operators life easy, by adding in [verse headings].

## Try transposing each song

When entering a chord chart, simple mistakes can be overlooked.  A great way to
pick up on these mistakes, is to try transposing a song, and seeing if it looks
right.  You'll more easily notice obvious mistakes (such as marking chords are
  lyrics) when you transpose.

## Keep remarks out of chord lines

Songlib's chord transpose feature is great, but it can't handle everything (yet).
Currently, Songlib will get confused if you add anything to a chord line that is
not a valid chord.  This means that any non-chord remarks written in a chord line
will get replaced with `???` characters.

You'll never use Word to edit songs again! And if that’s not easy enough already, Songlib can do it for you.
