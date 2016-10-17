tests
testPublishLocalShouldPublishTheSameAsPublishRemote

	Cargo new
		package: 'CGOTestPackage';
		publish.
		
	self assert: (Cargo localCache fetch: 'cgotestpackage' version: '0.1.0-dev') equals: (Cargo defaultPackageRepository fetch: 'cgotestpackage' version: '0.1.0-dev').