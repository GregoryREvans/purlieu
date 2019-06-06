(
e[\oneshot1].play;
4.wait;
e[\oneshot2].play;
4.wait;
e[\oneshot3].play;
//timing can be tough... s.sync doesn't work like I thought it did. Try using self-freeing Pbinds instead of playing buffers
15.wait;
s.quit;
)