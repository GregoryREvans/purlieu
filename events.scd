(
~makeEvents = {
	e = Dictionary.new;

	e.add(\birdnoise -> {
		1.do{
			~birdNoise = Pbind(
				\instrument, \bufnoise,
				\dur, Pwhite(1, 3, 25),
				\amp, Pwhite(0.125, 0.5, 25),
				\buf, Pseq([b[\birds][0].bufnum, b[\birds][1].bufnum, b[\birds][2].bufnum, b[\birds][3].bufnum, ], 25),
				\start, 0,
				\end, Pseq([b[\birds][0].numFrames - 2, b[\birds][1].numFrames - 2, b[\birds][2].numFrames - 2, b[\birds][3].numFrames - 2, ], 25),
				\freq, Pwhite(1, 8, 25),
				\atk, Pwhite(1, 3, 25),
				\sus, Pwhite(1, 3, 25),
				\rel, Pwhite(1, 3, 25),
				\c1, 1,
				\c2, (-1),
				\out, ~bus[\growingReverb],
				\group, ~mainGrp,
			).play;
		}
	});

	e.add(\openinggrains -> {
		1.do{
			~openingGrains = Pbind(
				\instrument, \fm,
				\dur, Pseq([7.5, 6.4, 4.2, 3.1, 5.3, 0.3, 2.5, 1.4], 1),
				\carHz, Pexprand(20, 10000),
				\modHz, Pexprand(20, 10000),
				\modAmp, Pwhite(0, 10000),
				\amp, Pexprand(0.1, 0.25),
				\atk, Pexprand(0.001, 0.1),
				\rel, Pexprand(0.001, 0.1),
				\pan, Pwhite(-1.0, 1.0),
				\out, ~bus[\growingReverb],
				\group, ~mainGrp,
			).play;
		}
	});

	e.add(\basetendrones -> {
		1.do{
			~baseTenDrones = Pbind(
				\type, \note,
				\instrument, \sine,
				\dur, Pwhite(0.05, 0.5, (100..500).choose),
				\freq, Pxrand([20, 40, 60, 80, 100, 120, 140, 160, 180, 200, 220, 240, 260, 280, 300, 320, 340], (100..110).choose),
				\atk, Pwhite(2.0, 3.0, (100..500).choose),
				\rel, Pwhite(5.0, 10.0, (100..500).choose),
				\amp, Pexprand(0.01, 0.2, (100..500).choose),
				\pan, Pwhite(-0.8, 0.8, (100..500).choose),
				\out, ~bus[\reverb],
				\group, ~mainGrp,
			).play;
		}
	});

	e.add(\event1 -> {
		~drone = Pbind(
			\instrument, \bpfsaw,
			\dur, 1,
			\freq, 26.midicps,
			\detune, Pwhite(0.03,0.2, 10),
			\rqmin, 0.08,
			\rqmax, 0.12,
			\cfmin, 50,
			\cfmax, 400,
			\atk, 2,
			\sus, 0.1,
			\rel, 2,
			\amp, 0.5,
			\group, ~mainGrp,
			\out, ~bus[\reverb],
		).play;
	});

	e.add(\event2 -> {
		Routine({
			~birdsCloud = Pbind(
				\instrument, \bpfbuf,
				\dur, Pexprand(0.2,2, 10),
				\atk, Pexprand(0.5,2),
				\rel, Pexprand(2,6),
				\buf, b[\birds][0],
				\rate, Pwhite(-7.5,-5.5).midiratio,
				\spos, Pwhite(5000,80000),
				\amp, Pexprand(2,5),
				\bpfmix, 0,
				\group, ~mainGrp,
				\out, ~bus[\reverb],
			).play;

			~bubbles = Pbind(
				\instrument, \bpfsaw,
				\dur, Pwhite(0.1,0.5, 10),
				\freq, Pexprand(1,25),
				\detune, Pwhite(0.03, 0.2, inf),
				\rqmin, 0.1,
				\rqmax, 0.5,
				\cfmin, 50,
				\cfmax, 2000,
				\atk, 2,
				\sus, 0,
				\rel, Pexprand(3,8),
				\pan, Pwhite(-0.9,0.9),
				\amp, Pexprand(0.05,0.1),
				\group, ~mainGrp,
				\out, ~bus[\reverb],
			).play;
		}).play(AppClock);
	});

	e.add(\event3 -> {
		~birdsTone = Pbind(
			\instrument, \bpfbuf,
			\dur, Pexprand(0.5,3, 10),
			\atk, 2,
			\rel, 2,
			\buf, b[\birds][11],
			\rate, Pwhite(-0.08,0.08).midiratio,
			\spos, Pwhite(5000,20000),
			\amp, Pexprand(2,3.5),
			\bpfmix, 0,
			\group, ~mainGrp,
			\out, ~bus[\reverb],
		).play;

		~simpleMarimba = Pbind(
			\instrument, \bpfsaw,
			\dur, Prand([0.5,1,2,3], 10),
			\freq, Prand([1/2,3/4,1,3/2,2], inf),
			\detune, Pwhite(0,0.002),
			\rqmin, 0.005,
			\rqmax, 0.008,
			\cfmin, Prand([61,71,78,85,95].midicps,inf),
			\cfmax, Pkey(\cfmin) * Pwhite(1.008,1.025,inf),
			\atk, 3,
			\sus, 1,
			\rel, 5,
			\amp, 1,
			\group, ~mainGrp,
			\out, ~bus[\reverb],
		).play;
	});

	e.add(\event4 -> {
		~chords = Pbind(
			\instrument, \bpfsaw,
			\dur, Pwhite(4.5,7.0, 10),
			\midinote, Pxrand([
				[23,35,54,63,64],
				[45,52,54,59,61,64],
				[28,40,47,56,59,63],
				[42,52,57,61,63]
			], inf),
			\detune, Pexprand(0.05,0.2),
			\cfmin, 100,
			\cfmax, 1500,
			\rqmin, Pexprand(0.01,0.15),
			\atk, Pwhite(2.0,2.5),
			\rel, Pwhite(6.5,10.0),
			\ldb, 6,
			\amp, 0.2,
			\group, ~mainGrp,
			\out, ~bus[\reverb],
		).play;

		~marimba = Pbind(
			\instrument, \bpfsaw,
			\dur, Prand([1,0.5], 10),
			\freq, Prand([1/2,2/3,1,4/3,2,5/2,3,4,6,8],inf),
			\detune, Pwhite(0,0.1),
			\rqmin, 0.005,
			\rqmax, 0.008,
			\cfmin, Prand((Scale.major.degrees+64).midicps,inf) * Prand([0.5,1,2,4],inf),
			\cfmax, Pkey(\cfmin) * Pwhite(1.008,1.025),
			\atk, 3,
			\sus, 1,
			\rel, 5,
			\amp, 1,
			\group, ~mainGrp,
			\out, ~bus[\reverb],
		).play;
	});

	e.add(\rumble -> {
		12.do{
			Synth(
				\bpfsaw,
				[
					\atk, exprand(0.5,1.5),
					\sus, 15,
					\rel, exprand(4.0,8.0),
					\c1, exprand(4,10.0),
					\c2, exprand(2.0,5).neg,
					\freq, [20, 40, 60, 80, 100, 120].choose,
					\detune, rrand(0.1, 2),
					\cfmin, 30,
					\cfmax, 400,
					\rqmin, 0.02,
					\rqmax, 0.08,
					\amp, exprand(0.6,0.9),
					\pan, rrand(-0.5,0.5),
					\out, ~bus[\growingReverb],
				],
				~mainGrp
			);
		};
	});

	e.add(\oneshot2 -> {
		15.do{
			Synth(
				\bpfbuf,
				[
					\atk, rrand(0.2,3.0),
					\sus, rrand(0.2,3.0),
					\rel, exprand(1.0,8.0),
					\c1, exprand(1,8),
					\c2, exprand(-8,-1),
					\buf, b[\birds][13].bufnum,
					\rate, exprand(0.4,2.0),
					\bpfmix, 0,
					\amp, exprand(0.2,0.5),
					\pan, rrand(-0.9,0.9),
					\spos, rrand(0,100000),
					\out, ~bus[\reverb]
				],
				~mainGrp
			);
		};
	});

	e.add(\oneshot3 -> {
		15.do{
			Synth(
				\bpfbuf,
				[
					\atk, rrand(0.1,2.0),
					\sus, rrand(2.5,8.0),
					\rel, exprand(1.0,7.0),
					\c1, exprand(1,8),
					\c2, exprand(-8,-1),
					\buf, b[\birds][13].bufnum,
					\rate, exprand(0.3,1.2),
					\freq, (Scale.major.degrees.choose + 64 + [-12,0,12,24].choose).midicps,
					\rq, exprand(0.002,0.02),
					\bpfmix, 1,
					\amp, exprand(0.2,1.5),
					\pan, rrand(-0.9,0.9),
					\spos, rrand(0,100000),
					\out, ~bus[\reverb],
				],
				~mainGrp
			);
		};
	});
};
)
