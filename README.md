# Github workflows for RTL design

This reposetory is based on github actions found at <https://purisa.me/blog/testing-hdl-on-github/>

## How to use it?

The actions run your preferred testbenches on every push. It runs on the latest Ubuntu version and uses ModelSim 20.1 for simulation. It also uses HDLmake for finding dependencies between files. HDLmake uses python for automations so in every folder there is a `Manifest.py` script  this tells the program about where files are located and what actions should be performed in case of [Manifest.py](sim/top_tb/Manifest.py) in the [sim](sim/) folder. In this script you can change sim top and modules, if you do so you need to add a new folder under [test](test/) and set it up ass with [add_sub_tb](test/add_sub_tb/).

## Running multiple testbenches

If you would like to run more test the just the top level module. You can do this by setting up multiple test folders under [test](test/) and [sim](sim/) folders, when this is completed, you only have to edit the GitHub actions file which can be found [here](.github/workflows/modelsim.yml). In the bottom of this file, you can add your own test like this

```(yml)
- name: name_on_your_test
        run: cd $GITHUB_WORKSPACE/change_to_sim_folder_with_test_script && hdlmake fetch && hdlmake && make
```

## Linter

The workflow is setup such that it uses a [shell script](linter.sh) to run Modelsim's linter tool on every VHDL file in the [src folder](src/). The script can be modified to run in other folder or on other types on files such as `.v` or `.sv` making it easy to write more than just VHDL an use an automated workflow.

## Drawbacks and things to consider
What are some of the things to consider when using this automated workflow?
1. You’re testbench should use assertions and not only print to the console, you can do the later but then it will at first glimpse look like it passes. Use assertions and GitHub will notify you that your workflow failed.
2. The workflow uses quit a lot of time to complete in the round of 5 minutes, using quite a lot of your included GitHub time if you use it in a private repository. If you use GitHub free tier you have [2000 minuts](https://docs.github.com/en/billing/managing-billing-for-github-actions/about-billing-for-github-actions) included. You can change line 3 in the [workflow file](.github/workflows/modelsim.yml) to 

``` n:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]
```  
so it only runs on push and pull request to master ignoring other branches, currently it runs on push to all branches. 

3. From my limited testing the workflow seams to failed with System Verilog, at least it failed for me with the `randomize` keyword.