(
~startScore = Routine({
	"serverConfig.scd".loadRelative;

	"initializeVariables.scd".loadRelative;

	"defineFunctions.scd".loadRelative;

	"registerFunctions.scd".loadRelative;

	"bootServer.scd".loadRelative;

	}).play(AppClock);
)
s.quit;
s.plotTree;