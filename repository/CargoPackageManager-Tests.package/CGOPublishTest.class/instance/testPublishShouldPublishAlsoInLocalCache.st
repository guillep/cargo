as yet unclassified
testPublishShouldPublishAlsoInLocalCache

	Cargo new
		package: 'CGOTestPackage';
		publish.
		
	self assert: ((Cargo localCache versionStringsOf: 'cgotestpackage') includes: 'cgotestpackage@0.1.0-dev').