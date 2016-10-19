tests
testPublishPackageWithoutWorkingCopyShouldFail

	self should: [Cargo new
		package: 'CGOTestPackageWithoutWorkingCopy';
		publishLocal] raise: CGOWorkingCopyNotFound