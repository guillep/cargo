tests
testPublishLocalShouldPublishDependencies

	| version dependencies |
	Cargo new
		package: 'CGOTestPackage';
		publishLocal.
		
	version := Cargo localCache fetch: 'cgotestpackage' version: '0.1.0-dev'.
	dependencies := version dependencies.
	
	self assert: dependencies size equals: 3.
	
	self assert: dependencies first targetedPackage equals: #dependency1.
	self assert: (dependencies first constraints includes: (CGODependencyConstraint fromString: '=2.0')).
	
	self assert: dependencies second targetedPackage equals: #dependency2.
	self assert: (dependencies second constraints includes: (CGODependencyConstraint fromString: '=1.0')).

	self assert: dependencies third targetedPackage equals: #dependency3.
	self assert: (dependencies third constraints includes: (CGODependencyConstraint fromString: '=1.3')).