# Tutorial: How to update an existing Cargo project?

Before starting this tutorial, please ensure you already have [Cargo installed](https://github.com/demarey/cargo#install-cargo).

In this tutorial, we will still use the *Pharo counter example* already presented [here](https://github.com/demarey/cargo/blob/master/tutorial/start-a-new-project.md#counter)
Starting from a fresh Pharo image, the first thing you will probably do is to load an existing project into your image.

## Load both a project and its dependents
We saw in the [How to start a new project with Cargo?](https://github.com/demarey/cargo/blob/master/tutorial/start-a-new-project.md#load-both-a-project-and-its-dependents-from-scm) the way to load a project directly from the SCM.

We will again load *Counter-UI* from GitHub. Its dependent *Counter-Core* will also be loaded from GitHub since we added its source repository.
``` smalltalk
Cargo new 
	useSourceRepository: (CGOGitRepository repositoryUrl:'git@github.com:demarey/pharo-counter-ui.git');
	useSourceRepository: (CGOGitRepository repositoryUrl:'git@github.com:demarey/pharo-counter.git');
	project: #'Counter-UI';
	install
```

## Add a package assembly to a Cargo project
To add a new package assembly, you first need to get the Cargo project that will host this assembly.
``` smalltalk
project := (CGOPackageRegistry default packageNamed: 'Counter-UI') project asOngoingProject.
```

Then, you can create an Assembly and set its properties by calling setters:
``` smalltalk
(project newPackageAssembly: #'Counter-UI-Tests')
	description: 'Counter UI + counter packages';
	parts: #('Counter-UI-Core' 'Counter-Tests
	yourself.
```
It will automatically add the package assembly named *#'Counter-UI-Tests'* to the project. Loading *#'Counter-UI-Tests'* will trigger the load of both *#'Counter-UI-Core'* and *#'Counter-Tests'* but also their dependencies.
Then, the project can be saved:
``` smalltalk
project saveToSCM: 'Add #Counter-UI-Tests assembly.'
```

## Edit the metadata of an existing package
To edit the metadata of an existing package, get this package by asking it to the Cargo registry (the package has to be loaded). Then convert this package so it becomes editable by sending the #asOngoingPackageVersion message.
``` smalltalk
cargoPackage := (CGOPackageRegistry default packageNamed: 'Counter-Core') asOngoingPackageVersion.
```

Then, you can create an Assembly and set its properties by calling setters:
``` smalltalk
cargoPackage 
	description: 'Counter UI + counter packages';
	version: '2.0'.
```
Do not forget to save the project to do not loose your metadata changes!

Note: To save Cargo metadata, the only way (for now) is to use the #saveToSCM method on a Cargo project. Tools like Monticello and iceberg cannot save files that are not Smalltalk code.