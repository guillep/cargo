tests
testPublishLocalDefaultVersionShouldBe010dev

	Cargo new
		package: 'CGOTestPackage';
		publishLocal.
		
	self assert: ((Cargo localCache versionStringsOf: 'cgotestpackage') includes: 'cgotestpackage@0.1.0-dev').