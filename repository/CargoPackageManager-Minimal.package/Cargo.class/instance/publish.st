publishing
publish
	
	self publishLocal.
	self publishEachIn: [ :each | each publishRepository ]