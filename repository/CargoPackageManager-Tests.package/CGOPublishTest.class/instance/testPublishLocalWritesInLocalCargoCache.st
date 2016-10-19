tests
testPublishLocalWritesInLocalCargoCache
	
	Cargo new
		package: 'CGOTestPackage';
		publishLocal.
		
	self assert: (Cargo localCache packageNames includes: 'cgotestpackage')