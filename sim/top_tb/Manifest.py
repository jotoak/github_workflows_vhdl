action = "simulation"
sim_tool = "modelsim"
sim_top = "add_sub_tb"

sim_post_cmd = "vsim -do ../vsim.do -c add_sub_tb"

modules = {
  "local" : [ "../../test/add_sub_tb" ],
}