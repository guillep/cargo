tests
testDefaultPackageRepositoryDuringShouldBeResetAfterBlock

	| oldRepository |
	oldRepository := Cargo defaultPackageRepository.
	Cargo useDefaultPackageRepository: (CGODirectoryPackageRepository newInDirectory: FileSystem memory root) during: [ ].
	self assert: oldRepository == Cargo defaultPackageRepository.