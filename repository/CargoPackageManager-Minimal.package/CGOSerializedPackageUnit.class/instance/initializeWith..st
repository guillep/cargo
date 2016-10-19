initialization
initializeWith: aPackageUnit
	super initializeWith: aPackageUnit.
	repositories := self toArrayOrNilIfEmpty: (aPackageUnit repositories collect: [ :each | each url ]).
	self initializeDependenciesWith: aPackageUnit.
	authors := self toArrayOrNilIfEmpty: aPackageUnit authors.
	contributors := self toArrayOrNilIfEmpty: aPackageUnit contributors.
	platformRequirements := self toArrayOrNilIfEmpty: aPackageUnit platformRequirements.
	provisions := self toArrayOrNilIfEmpty: aPackageUnit provisions.
	file := aPackageUnit file