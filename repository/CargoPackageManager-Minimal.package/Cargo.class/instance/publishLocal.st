publishing
publishLocal
	
	self publishEachIn: [ :each | Cargo localCache ]