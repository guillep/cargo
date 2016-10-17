as yet unclassified
setUp

	| wc mcrepository |
	super setUp.

	"We create an artificial working copy to let the test continue"
	mcrepository := MCDirectoryRepository new directory: (FileLocator temp / 'cargo-test') ensureCreateDirectory.
	wc := MCWorkingCopy forPackage: (MCPackage named: 'CGOTestPackage').
	mcrepository storeVersion: (wc 
		newVersionWithName: wc uniqueVersionName
		message: 'test'
		in: mcrepository).