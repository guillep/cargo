running
tearDown

	"Clean the MC cache"
	(FileLocator temp / 'cargo-test') ensureDeleteAll.
	(MCPackage named: 'CGOTestPackage') unload.
	super tearDown.