(

e.add(\basetwelverhythms -> {
	1.do{
	~basetwelverhythms = Pbind(
		\instrument, \bpfsaw,
		\dur, Pexprand(0.1, 1, inf),
		\freq, Pexprand(2, 13, inf),
		\detune, 0,
		\rqmin, 0.005,
		\rqmax, 0.008,
		\cfmin, Pseq([20, 72, 120, 168, 48, 96, 144, 192, 215.99999999999997, 264.0, 312.0, 360.0, 240.0, 288.0, 336.0, 384.0, 408.0, 456.0, 504.0, 431.99999999999994, 480.0, 528.0, 552.0, 600.0, 648.0, 696.0, 576.0, 624.0, 672.0, 720.0], 4),
		\cfmax, Pseq([20, 72, 120, 168, 48, 96, 144, 192, 215.99999999999997, 264.0, 312.0, 360.0, 240.0, 288.0, 336.0, 384.0, 408.0, 456.0, 504.0, 431.99999999999994, 480.0, 528.0, 552.0, 600.0, 648.0, 696.0, 576.0, 624.0, 672.0, 720.0], 4),
		\amp, 6,
		\out, ~bus[\oscillatingReverb],
		\group, ~mainGrp,
		).play;
	}
});

e.add(\basetwelvechords -> {
	1.do{
	~basetwelvechords = Pbind(
		\instrument, \bpfsaw,
		\dur, Pwhite(2.5, 6.0, inf),
		\freq, Pxrand([
			[20, 72, 120, 168],
			[48, 96, 144, 192],
			[215.99999999999997, 264.0, 312.0, 360.0],
			[240.0, 288.0, 336.0, 384.0],
			[408.0, 456.0, 504.0],
			[431.99999999999994, 480.0],
			[528.0, 552.0, 600.0, 648.0, 696.0],
			[576.0, 624.0, 672.0, 720.0],
			], 10),
		\detune, Pexprand(0.05, 0.2, inf),
		\cfmin, 100,
		\cfmax, 1500,
		\rqmin, Pexprand(0.01, 0.15, inf),
		\atk, Pwhite(0.6, 1.5, inf),
		\rel, Pwhite(4.5, 7.0, inf),
		\ldb, 6,
		\amp, 3,
		\out, ~bus[\oscillatingReverb],
		\group, ~mainGrp,
		).play;
	}
});

)
