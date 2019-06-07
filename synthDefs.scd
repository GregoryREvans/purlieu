(
SynthDef(\bpfsaw, {
	arg atk=2, sus=0, rel=3, c1=1, c2=(-1),
	freq=500, detune=0.2, pan=0, cfhzmin=0.1, cfhzmax=0.3,
	cfmin=500, cfmax=2000, rqmin=0.1, rqmax=0.2,
	lsf=200, ldb=0, amp=1, out=0;
	var sig, env;
	env = EnvGen.kr(Env([0,1,1,0],[atk,sus,rel],[c1,0,c2]),doneAction:2);
	sig = Saw.ar(freq * {LFNoise1.kr(0.5,detune).midiratio}!2);
	sig = BPF.ar(
		sig,
		{LFNoise1.kr(
			LFNoise1.kr(4).exprange(cfhzmin,cfhzmax)
		).exprange(cfmin,cfmax)}!2,
		{LFNoise1.kr(0.1).exprange(rqmin,rqmax)}!2
	);
	sig = BLowShelf.ar(sig, lsf, 0.5, ldb);
	sig = Balance2.ar(sig[0], sig[1], pan);
	sig = sig * env * amp;
	Out.ar(out, sig);
}).add;

SynthDef(\bpfbuf, {
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
}).add;

SynthDef(\bufnoise, {
	arg amp=1, out=0, buf, start=0, end,
	freq=1, atk=0, sus=0, rel=3, c1=1, c2=(-1);
	var sig, ptr, env;
	env = EnvGen.kr(Env([0,1,1,0],[atk,sus,rel],[c1,0,c2]),doneAction:2);
	ptr = LFNoise1.ar({freq}!2).range(start, end);
	sig = BufRd.ar(1, buf, ptr);
	sig = sig * env;
	sig = Pan2.ar(sig, 0, amp);
	Out.ar(out, sig);
}).add;

SynthDef.new(\fm, {
		arg carHz=500, modHz=100, modAmp=200, out=0,
		atk=0.01, rel=1, amp=0.2, pan=0;
		var car, mod, env;
		env = EnvGen.kr(Env.perc(atk, rel), doneAction:2);
		mod = SinOsc.ar(modHz, mul:modAmp);
		car = SinOsc.ar(carHz + mod) * env * amp;
		car = Pan2.ar(car, pan);
		Out.ar(out, car);
	}
).add;

SynthDef(\reverb, {
	arg in, predelay=0.1, revtime=2.1,
	lpf=4500, mix=0.2, amp=1, out=0;
	var dry, wet, temp, sig;
	dry = In.ar(in,2);
	temp = In.ar(in,2);
	wet = 0;
	temp = DelayN.ar(temp, 0,2, predelay);
	16.do{
		temp = AllpassN.ar(temp, 0.05, {Rand(0.001,0.05)}!2, revtime);
		temp = LPF.ar(temp, lpf);
		wet = wet + temp;
	};
	sig = XFade2.ar(dry, wet, mix*2-1, amp);
	Out.ar(out, sig);
}).add;
)