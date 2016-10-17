*CargoPackageManager
loadInstructions
	| resolution |
	resolution := CGOSolver new
		addRepository: Cargo defaultPackageRepository;
		solveDependency: self rootDependency.
	^ resolution loadInstructions