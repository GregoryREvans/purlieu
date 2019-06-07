(
~makeBuffers = {
	b = Dictionary.new;
	PathName(~path).entries.do{
		arg subfolder;
		b.add(
			subfolder.folderName.asSymbol ->
			Array.fill(
				subfolder.entries.size,
				{
					arg i;
					Buffer.read(s, subfolder.entries[i].fullPath);
				}
			)
		);
	};
};

~makeBusses = {
	~bus = Dictionary.new;
	~bus.add(\reverb -> Bus.audio(s,2));
	~bus.add(\growingReverb -> Bus.audio(s,2));
};

~cleanup = {
	s.newBusAllocators;
	ServerBoot.removeAll;
	ServerTree.removeAll;
	ServerQuit.removeAll;
};

~makeNodes = {
	s.bind({
		~mainGrp = Group.new;
		~reverbGrp = Group.after(~mainGrp);
		~growingReverbGrp = Group.after(~mainGrp);
		~reverbSynth = Synth.new(
			\reverb,
			[
				\amp, 1,
				\predelay, 0.1,
				\revtime, 2.1,
				\lpf, 4500,
				\mix, 0.35,
				\in, ~bus[\reverb],
				\out, ~out,
			],
			~reverbGrp
		);
		~growingReverbSynth = Synth.new(
			\growingReverb,
			[
				\amp, 1,
				\predelay, 0.1,
				\revtime, 6,
				\lpf, 4500,
				\mix, 0.9,
				\in, ~bus[\growingReverb],
				\out, ~out,
			],
			~growingReverbGrp
		);
	});
};

"events.scd".loadRelative;
)