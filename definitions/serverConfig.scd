(
s = Server.local;
s.options.outDevice_(
	// "Built-in Output"
	"Onyx Blackjack"
);
// s.latency = 8; //issue of latency needs to be solved for Segment D...maybe change durations?
s.options.numOutputBusChannels_(2);
s.options.inDevice_("Built-in Microph");
s.options.numInputBusChannels_(2);
s.options.sampleRate_(44100);
s.options.memSize_(2.pow(20));
s.newBusAllocators;
ServerBoot.removeAll;
ServerTree.removeAll;
ServerQuit.removeAll;
)
