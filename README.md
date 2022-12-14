# Maine Chilling


### Description of example song 

The example song stored in this repo aims to capture the whimisical 
contentedness I felt at a sunset walk at Popham Beach this past fall. The piece 
starts off with an ocean wave sample played in reverse at two-thirds speed. The
effect is a sound that is surprisingly identifiable as waves but a discerning 
ear may pick up on the slight nuance, building this dissociative experience 
that can transport the listener from their present stresses and woes into a 
more pleasant state of focus and peace. As the rhythms layer in, complexity is 
introduced, and the nature of the difficulty with the live loop layering 
presents even more complexity in imperfect alignment of the rhythms. As these 
patterns may connote the clanging of wind chimes, this imperfection is quite 
fitting. Yet, around 
the 1:38 mark, the brief pause serves as a realization point where the rhythms 
are no less complex, but they finally work together in a practically unnatural 
way when the wind chime example is considered. The syncopated nature of 
the eighths and quarters against the triplets always fascinates me, and I hope 
it provides some wonderment for the listener as well. The following journey 
through a not uncommon chord progression makes the listener appreciate the 
complexity of their renewed state of peace by introducing light tension without 
having the tension attack this state by any means. This tension simply builds 
on the whimsicality and fantasy of the piece, bringing the listener away from 
their stresses and into some semblance of contentment. Once the progression 
returns to to the root chord, a full-circle moment is initiated. This is 
further emphasized as each rhythm component dies out, leaving the listener 
with increasingly simple remnants of their journey. Returning to nothingness, 
notably without even the sound of the ocean, underscores to the listener the 
transitory nature of such feelings in life. We can take these journeys often, 
and even for long times, but we cannot perpetually exist in them.  


### How live coding was used 

At the start of the song, all of the live loops are commented out, and the 
first chord (cmin7) is the only chord not commented out. So, the only part
that plays at the beginning is the ocean wave sample. Then, bit by bit, I 
uncommented out each loop in succession, building the complexity in the 
rhythms. Each time I uncomment out a loop, I would then hit the play button 
again to layer it in to the audio output. Due to some lagging in the software, 
not all of the loops are perfectly synchronized, so the brief pause around 1:38 
is the point where I stopped and reran the code that was open at that point so 
that the intricate rhythms would line up as desired. At this point, after 
layering all of the rhythms within the first chord, I progressively engage 
each of the following 5 chords (fm7, cm, abmaj11, gmaj7, cmin7) by commenting 
out the current chord, uncommenting out the next chord, and hitting play again. 
Once the final chord is activated, I slowly layered off each of the rhythm 
complexities by including 'stop' in the most recently added loop one at a time
and hitting play to activate the stop. In the end, the first rhythm loop is the 
last one running, and then the song stops. 