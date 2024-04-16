## Post-installation (Linux)

### Set environment variables

At the end of the installation with a user interface, you are prompted to set up some environment variables, such as

- `MR`: the path to Matlab runtime folder
- `XAPPLREDIR`: for display 
- `LD_LIBRARY_PATH`: linked libraries

### Launch CMT from command line and set alias (optional)

Lanuch CartiMorph Toolbox with `bash [path/to/run_CartiMorphToolbox.sh] [path/to/matlab/runtime]`

Setting alias for bash shell: adding a line to `.bashrc`

```bash
# change [] to actual paths
alias CMT="bash [path/to/run_CartiMorphToolbox.sh] [path/to/matlab/runtime]"
```

Setting alias for fish shell: 

```bash
# change to fish shell
fish
# change [] to actual paths
alias --save CMT="bash [path/to/run_CartiMorphToolbox.sh] [path/to/matlab/runtime]"
```



### Solving conflicts due to old libraries shipped with Matlab (optional)

```bash
sudo apt-get install matlab-support
```

You will be asked to choose whether renaming old libraries provided by Matlab, choose YES.

[<<< Back to the main document](https://github.com/YongchengYAO/CartiMorph-Toolbox)
