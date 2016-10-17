publishing
publishEachIn: aBlock
	
	packages do: [ :each | | ongoingPackage |
		ongoingPackage := each packageName packageManifest asOngoingPackageVersion.
		(aBlock value: ongoingPackage)
			savePackageVersion: ongoingPackage asPackageVersion ]