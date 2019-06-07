(
e[\openinggrains].play;
31.wait;
e[\rumble].play;
3.wait;
e[\birdnoise].play;
45.wait;
e[\basetendrones].play;
4.wait;
e[\birdnoise].play;
s.sync;
e[\birdnoise].set(\buf, Pseq([b[\birds][4].bufnum, b[\birds][5].bufnum, b[\birds][6].bufnum, b[\birds][7].bufnum, ], 25),);
s.sync;
e[\birdnoise].set(\end, Pseq([b[\birds][4].numFrames - 2, b[\birds][5].numFrames - 2, b[\birds][6].numFrames - 2, b[\birds][7].numFrames - 2, ], 25),);
s.sync;
e[\birdnoise].set(\freq, Pwhite(1, 20, 25));
s.sync;
e[\birdnoise].set(\out, ~bus[\reverb]);
/*57.wait;
e[\birdchord].play;*/
70.wait;
s.quit;
)