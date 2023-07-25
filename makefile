# mason make feature_brick --feature_name login --state_management riverpod -o lib/features
# create a feature brick with name login and state management riverpod
# the user should add the feature name via the command line call to the makefile like "--name login"
# then the command will be like this: make feature_brick --feature_name login --state_management riverpod -o lib/features

.PHONY: nothing

nothing:
	@echo "Nothing to do"

# example: make create_feature_brick name=login

create_feature_brick ${name}:
	@echo "Creating feature brick with name $(name) and state management flutter_riverpod"
	@mason make feature_brick --feature_name $(name) --state_management riverpod -o lib/features
