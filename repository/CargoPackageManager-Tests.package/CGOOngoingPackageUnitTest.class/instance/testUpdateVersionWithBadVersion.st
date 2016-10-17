tests-updating
testUpdateVersionWithBadVersion
	ongoingPkg manifest compile: 'version ^ ''0.1.0-dev'''.
	self 
		should: [ ongoingPkg updateVersionWith: 'bla' ]
		raise: SemanticVersionFormatError