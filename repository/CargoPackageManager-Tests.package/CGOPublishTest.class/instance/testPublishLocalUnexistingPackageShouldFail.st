tests
testPublishLocalUnexistingPackageShouldFail

	self should: [Cargo new
		package: 'NotReallyHere';
		publishLocal ] raise: NotFound