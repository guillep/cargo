configuring
useDefaultPackageRepository: aPackageRepository during: aBlockClosure 

	| old |
	old := self defaultPackageRepository.
	self defaultPackageRepository: aPackageRepository.
	^ aBlockClosure ensure: [ self defaultPackageRepository: old ]