(
s.waitForBoot({
	Routine({

	s.sync;

	"synthDefs.scd".loadRelative;

	s.sync;

	"remainingFunctions.scd".loadRelative;

	1.wait;
	s.record();
	"eventScore.scd".loadRelative;

}).play(AppClock);
};
);
)
