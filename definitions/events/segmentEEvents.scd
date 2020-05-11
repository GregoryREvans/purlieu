(

	e.add(\supsounds2 -> {
		(1).do{
			arg i;
			~supSounds2 = Synth(
				\bpfbuf,
				[
				\atk, 0.5,
				\sus, 209,
				\rel, 0.5,
				\c1, 1,
				\c2, (-1),
				\buf, b[\fin][i],
				\rate, 1,
				\spos, 0,
				\freq, [208.0, 416.0, 624.0, ].choose,
				\rq, 1,
				\bpfmix, [0, 0.25].choose,
				\pan, -1,
				\amp, 1,
				\out, ~bus[\growingReverb],
				],
				~mainGrp,
				);
		};
	});

	e.add(\supsounds3 -> {
		(1).do{
			arg i;
			~supSounds3 = Synth(
				\bpfbuf,
				[
				\atk, 0.5,
				\sus, 209,
				\rel, 0.5,
				\c1, 1,
				\c2, (-1),
				\buf, b[\fin][i],
				\rate, 1,
				\spos, 0,
				\freq, [208.0, 416.0, 624.0, ].choose,
				\rq, 1,
				\bpfmix, [0, 0.25].choose,
				\pan, 1,
				\amp, 1,
				\out, ~bus[\growingReverb],
				],
				~mainGrp,
				);
		};
	});

)
