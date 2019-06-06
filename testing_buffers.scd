"registerFunctions.scd".loadRelative();
"synthDefs.scd".loadRelative();
s.boot;
// "bootServer.scd".loadRelative();

/*SynthDef(\bpfbuf, {
	arg atk=0, sus=0, rel=3, c1=1, c2=(-1),
	buf=0, rate=1, spos=0, freq=440, rq=1, bpfmix=0,
	pan=0, amp=1, out=0;
	var sig, env;
	env = EnvGen.kr(Env([0,1,1,0],[atk,sus,rel],[c1,0,c2]),doneAction:2);
	sig = PlayBuf.ar(1, buf, rate*BufRateScale.ir(buf),startPos:spos);
	sig = XFade2.ar(sig, BPF.ar(sig, freq, rq, 1/rq.sqrt), bpfmix*2-1);
	sig = sig * env;
	sig = Pan2.ar(sig, pan, amp);
	Out.ar(out, sig);
}).add;*/

Scale.directory;

(
rrand(4, 10).do{
	Synth(
		\bpfbuf,
		[
			\buf, b[\birds][(0..19).choose],
			\atk, exprand(2, 3),
			\sus, 1,
			\rel, exprand(2, 3),
			\bpfmix, 1,
			\freq, (Scale.dorian.degrees+69).choose.midicps * [1, 2].choose,
			\rq, exprand(0.001, 0.008),
			\rate, exprand(0.6, 1.2),
			\pan, rrand(-0.5, 0.5),
			\amp, exprand(4, 6),
		]
	);
}
)


s.quit;