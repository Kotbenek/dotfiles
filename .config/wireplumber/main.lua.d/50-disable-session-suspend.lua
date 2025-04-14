-- Based on https://www.lexo.ch/blog/2024/09/fix-audio-delays-and-missing-audio-notifications-in-ubuntu-and-linux-mint-disabling-pipewire-and-wireplumber-suspend/
table.insert (alsa_monitor.rules, {
	matches = {
		{
			{ "node.name", "matches", "alsa_input.*" },
		},
		{
			{ "node.name", "matches", "alsa_output.*" },
		},
	},
	apply_properties = {
		["session.suspend-timeout-seconds"] = 0,
	},
})
