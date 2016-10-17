accessing
useLocalRepository: aPackageRepository during: aBlockClosure 
	
	| old |
	old := self localCache.
	self localCache: aPackageRepository.
	^ aBlockClosure ensure: [ self localCache: old ]