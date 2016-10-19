accessing
repositories
	^ self workingCopy repositoryGroup remotes collect: [ :each | each url ]