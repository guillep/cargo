tests
testPublishLocalShouldNotPublishInDefaultPackageRepository

	Cargo new
		package: 'CGOTestPackage';
		publishLocal.
		
	self assert: (Cargo defaultPackageRepository versionStringsOf: 'cgotestpackage') isEmpty.