(
~startScore = Routine({
	"definitions/serverConfig.scd".loadRelative;

	"initializeVariables.scd".loadRelative;

	"definitions/defineFunctions.scd".loadRelative;

	"definitions/registerFunctions.scd".loadRelative;

	"definitions/bootServer.scd".loadRelative;

	}).play(AppClock);
)
// for testing or emergency only
s.quit;
s.plotTree;