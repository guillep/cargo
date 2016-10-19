tests
testPublishLocalDirtyPackageShouldFail

	"We set the working copy dirty"
	wc modified: true.
	self should: [ Cargo new
		package: 'CGOTestPackage';
		publishLocal ] raise: CGODirtyPackageWarning.