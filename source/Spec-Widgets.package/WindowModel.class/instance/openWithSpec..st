private
openWithSpec: aSpec

	window := self buildWithSpec: aSpec.
	window openInWorld.
	window title: self title