# Github workflows for RTL designe

This reposetory is based on github actions found at <https://purisa.me/blog/testing-hdl-on-github/>

## How to use it?

The ations run your preferd testbenchecs on every push. It runs on the latest Ubuntu version and uses ModelSim 20.1 for simulation. It also uses HDLmake for finding dependecis between files. HDLmake uses python for atomations so in every folder ther is a `Manifest.py` script  this tells the program about where files are located and what actions should be prefomred in case of [Manifest.py](sim/top_tb/Manifest.py). In this script you can change sim top and modules, if you do so you need to add a new folder under [test](test/) and set it up ass with [add_sub_tb](test/add_sub_tb/).

## Running multiple testbenches

If you would like to run more test the just the topp level module. You can du this by setting up multiple test folders under [test](test/) and [sim](sim/) folders, when this is completed you only have to edit the github actions file wich can be found [here](.github/workflows/modelsim.yml). In the bottom of this file you can add your own test like this

```(yml)
- name: name_on_your_test
        run: cd $GITHUB_WORKSPACE/change_to_sim_folder_with_test_script && hdlmake fetch && hdlmake && make


```
