specs
defaultSpec
	<spec>
	
	^ SpecLayout text
			send: #classOrMetaClass: withArguments: {#(model behavior)};
			send: #on:text:accept:readSelection:menu: withArguments: #(model getText accept:notifying: readSelection codePaneMenu:shifted:);
			
			send: #enabled: withArguments: {#(model enabled)};
			send: #borderWidth: withArguments: #(#(model borderWidth));
			send: #borderColor: withArguments: #(#(model borderColor));
			send:#setBalloonText: withArguments:	{ #(model help)};
			send: #vSpaceFill;
			send: #hSpaceFill;
			yourself