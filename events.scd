(
~makeEvents = {
	e = Dictionary.new;

	e.add(\openingbirds -> {
		~openingBirds = Pbind(
			\instrument, \bufnoise,
			\dur, Pxrand([Pwhite(5, 8), Pwhite(4, 7), Pwhite(3, 6), Pwhite(2, 5), Pwhite(1, 4), Pwhite(0.5, 3.5), Pwhite(0.25, 3.25), Pwhite(0.125, 3.125)], 10),
			\atk, Pseq([0.005, 0.005, 0.05, 0.07, 0.2, 0.09, 0.15, 0.7, 1.5, 1 ]),
			\sus, Pwhite(0.05, 1),
			\rel, Pwhite(0.05, 1),
			\buf, Pseq([b[\birds][0].bufnum, b[\birds][1].bufnum, b[\birds][2].bufnum, b[\birds][3].bufnum, b[\birds][4].bufnum, b[\birds][5].bufnum, b[\birds][6].bufnum, b[\birds][7].bufnum, b[\birds][8].bufnum, b[\birds][9].bufnum, b[\birds][10].bufnum,]),
			\rate, Pwhite(-7.0,-4.0).midiratio,
			\spos, Pseq([]),
			\amp, Pexprand(0.17,0.25),
			\freq, Pseq([200, 1, 50, 20, 30, 25]),
			\start, Pseq([]),
			\end, Pseq([]),
			\group, ~mainGrp,
			\out, ~bus[\reverb],
		).play;
	});

	e.add(\event1 -> {
		~birdsSustain = Pbind(
			\instrument, \bpfbuf,
			\dur, Pwhite(0.2,0.7),
			\atk, Pexprand(2,4),
			\rel, Pexprand(3,5),
			\buf, b[\birds][13].bufnum,
			\rate, Pwhite(-7.0,-4.0).midiratio,
			\spos, Pwhite(0, b[\birds][13].numFrames/2),
			\amp, Pexprand(0.17,0.25),
			\freq, {rrand(85.0,105.0).midicps}!3,
			\rq, 0.005,
			\bpfmix, 0.97,
			\group, ~mainGrp,
			\out, ~bus[\reverb],
		).play;

		~drone = Pbind(
			\instrument, \bpfsaw,
			\dur, 1,
			\freq, 26.midicps,
			\detune, Pwhite(0.03,0.2),
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
				\dur, Pexprand(0.2,2),
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
				\dur, Pwhite(0.1,0.5),
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

			4.wait;

			~birdsSustain.stop;
			~drone.stop;
		}).play(AppClock);
	});

	e.add(\event3 -> {
		~birdsCloud.stop;
		~bubbles.stop;

		~birdsTone = Pbind(
			\instrument, \bpfbuf,
			\dur, Pexprand(0.5,3),
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
			\dur, Prand([0.5,1,2,3],inf),
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
		~birdsTone.stop;
		~simpleMarimba.stop;

		~chords = Pbind(
			\instrument, \bpfsaw,
			\dur, Pwhite(4.5,7.0),
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
			\dur, Prand([1,0.5],inf),
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

	e.add(\event5 -> {
		~marimba.stop;
		~chords.stop;
	});

	e.add(\oneshot1 -> {
		12.do{
			Synth(
				\bpfsaw,
				[
					\atk, exprand(0.5,1.5),
					\sus, 15,
					\rel, exprand(2.0,8.0),
					\c1, exprand(4,10.0),
					\c2, exprand(2.0,5).neg,
					\freq, exprand(8,60),
					// \freq, [20, 40, 60, 80].choose,
					\detune, rrand(0.1,4),
					\cfmin, 30,
					\cfmax, 400,
					\rqmin, 0.02,
					\rqmax, 0.08,
					\amp, exprand(0.6,0.9),
					\pan, rrand(-0.5,0.5),
					\out, ~bus[\reverb],
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
