tests
testPublishSourceRepositoryShouldBeCommitRepository

	| version |
	Cargo new
		package: 'CGOTestPackage';
		publish.
		
	version := Cargo defaultPackageRepository fetch: 'cgotestpackage' version: '0.1.0-dev'.
	self assert: (version repositories includes: wc repositoryGroup repositories last)