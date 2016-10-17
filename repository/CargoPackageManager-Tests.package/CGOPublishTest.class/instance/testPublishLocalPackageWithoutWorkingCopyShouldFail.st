as yet unclassified
testPublishLocalPackageWithoutWorkingCopyShouldFail

	self should: [Cargo new
		package: 'CGOTestPackageWithoutWorkingCopy';
		publishLocal] raise: CGOWorkingCopyNotFound