as yet unclassified
testPublishWritesInDefaultPackageRepository
	
	Cargo new
		package: 'CGOTestPackage';
		publish.
		
	self assert: (Cargo defaultPackageRepository packageNames includes: 'cgotestpackage')