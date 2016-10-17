tests
testLocalRepositoryDuringShouldBeResetAfterBlock

	| oldRepository |
	oldRepository := Cargo localCache.
	Cargo useLocalRepository: (CGODirectoryPackageRepository newInDirectory: FileSystem memory root) during: [ ].
	self assert: oldRepository == Cargo localCache.