tests
testPublishDirtyPackageShouldFail

	"We set the working copy dirty"
	wc modified: true.
	self should: [ Cargo new
		package: 'CGOTestPackage';
		publish ] raise: CGODirtyPackageWarning.