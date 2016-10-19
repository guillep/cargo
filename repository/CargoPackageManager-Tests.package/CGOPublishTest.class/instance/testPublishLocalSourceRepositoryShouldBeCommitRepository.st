tests
testPublishLocalSourceRepositoryShouldBeCommitRepository

	| version |
	Cargo new
		package: 'CGOTestPackage';
		publishLocal.
		
	version := Cargo localCache fetch: 'cgotestpackage' version: '0.1.0-dev'.
	self assert: (version repositories includes: wc repositoryGroup repositories last)