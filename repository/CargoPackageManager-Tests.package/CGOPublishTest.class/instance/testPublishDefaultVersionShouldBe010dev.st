as yet unclassified
testPublishDefaultVersionShouldBe010dev

	Cargo new
		package: 'CGOTestPackage';
		publish.
		
	self assert: ((Cargo defaultPackageRepository versionStringsOf: 'cgotestpackage') includes: 'cgotestpackage@0.1.0-dev').