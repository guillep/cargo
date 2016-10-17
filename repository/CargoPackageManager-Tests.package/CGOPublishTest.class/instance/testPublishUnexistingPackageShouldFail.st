tests
testPublishUnexistingPackageShouldFail

	self should: [Cargo new
		package: 'NotReallyHere';
		publish ] raise: NotFound