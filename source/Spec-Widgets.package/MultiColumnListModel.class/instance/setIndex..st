morphic
setIndex: anIndex

	self allowToSelect ifFalse: [ ^ self ].
	self okToChange ifFalse: [ ^ self ].
	selectionHolder index contents: anIndex.
	selectionHolder selection contents: (self listItems at: anIndex ifAbsent: [ nil ]).