"
I define the API available on external project dependencies declaration.
My subclasses contains external project dependencies on:
- Cargo projects,
- Metacello baselines,
- Metecello configurations.
"
Class {
	#name : #PBProjectDependencyDeclaration,
	#superclass : #CGOAbstractDependency,
	#category : #'CargoPackageManager-Minimal-Dependencies'
}

{ #category : #accessing }
PBProjectDependencyDeclaration >> constraints [
	
	^ self subclassResponsibility
]

{ #category : #testing }
PBProjectDependencyDeclaration >> isMetacelloProjectDependency [
	^ false
]

{ #category : #solving }
PBProjectDependencyDeclaration >> isResolvedBy: aResolution [
	
	^ aResolution resolvesDependency: self
]

{ #category : #testing }
PBProjectDependencyDeclaration >> isSameProjectAs: anotherProject [ 
	
	^ self name = anotherProject name
]
