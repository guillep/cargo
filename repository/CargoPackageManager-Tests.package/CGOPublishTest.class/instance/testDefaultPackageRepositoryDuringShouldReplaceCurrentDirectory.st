tests
testDefaultPackageRepositoryDuringShouldReplaceCurrentDirectory

	| repository |
	repository := CGODirectoryPackageRepository newInDirectory: FileSystem memory root.
	Cargo useDefaultPackageRepository: repository during: [
		self assert: (repository == Cargo defaultPackageRepository) ]	