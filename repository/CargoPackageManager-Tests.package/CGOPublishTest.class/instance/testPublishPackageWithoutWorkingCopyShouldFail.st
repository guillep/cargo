as yet unclassified
testPublishPackageWithoutWorkingCopyShouldFail

	self should: [Cargo new
		package: 'CGOTestPackageWithoutWorkingCopy';
		publishLocal] raise: CGOWorkingCopyNotFound