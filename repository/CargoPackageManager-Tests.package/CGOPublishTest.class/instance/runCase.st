tests
runCase

	"Just for the test we set temporarily a special local repository and a special default package repository"
	defaultPackageRepository := CGODirectoryPackageRepository newInDirectory: FileSystem memory root.
	localRepository := CGODirectoryPackageRepository newInDirectory: FileSystem memory root.
	Cargo useLocalRepository: localRepository during: [
		Cargo useDefaultPackageRepository: defaultPackageRepository during: [
			^ super runCase ]].