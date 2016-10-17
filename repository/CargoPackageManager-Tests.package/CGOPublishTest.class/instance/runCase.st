tests
runCase

	defaultPackageRepository := CGODirectoryPackageRepository newInDirectory: FileSystem memory root.
	localRepository := CGODirectoryPackageRepository newInDirectory: FileSystem memory root.
	Cargo useLocalRepository: localRepository during: [
		Cargo useDefaultPackageRepository: defaultPackageRepository during: [
			^ super runCase ]].