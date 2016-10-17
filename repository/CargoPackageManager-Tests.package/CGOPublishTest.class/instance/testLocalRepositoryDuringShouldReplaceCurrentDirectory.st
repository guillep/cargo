tests
testLocalRepositoryDuringShouldReplaceCurrentDirectory

	| repository |
	repository := CGODirectoryPackageRepository newInDirectory: FileSystem memory root.
	Cargo useLocalRepository: repository during: [
		self assert: (repository == Cargo localCache) ]	