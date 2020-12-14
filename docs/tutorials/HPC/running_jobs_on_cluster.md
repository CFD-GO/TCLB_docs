---
title: Running jobs on HPC cluster
author: Grzegorz Gruszczynski
header-includes:
   - \usepackage{bbm}
   - \usepackage{amsmath, amsthm, amsfonts, amssymb}
date: "December 14, 2020"
output: html_document
---



Scripts for compilation and running of TCLB solver on HPC clusters are avaiable on:
<https://github.com/CFD-GO/TCLB_cluster>

## Introduction

The scripts are made to be general, but HPC clusters are very diverse. 
Clusters with SLURM and PBS queue system are supported.
The goal is to give a feeling of local execution, like:

```.sh
wrapper/run solver case.xml
```

The batch files for SLURM/PBS are prepared and scheduled by the scripts.
Currently, the setup of modules is prepared for following clusters:

- gadi (National Computational Infrastructure, Australia)
- hyperion (Warsaw University of Technology, Poland)
- magnus (Pawsey Supercomputing Centre, Australia)
- prometheus (Cyfronet, Poland)
- rysy (ICM, University of Warsaw, Poland)
- goliath

## Installation

### Getting the source

```bash
git clone https://github.com/CFD-GO/TCLB.git
cd TCLB
git clone https://github.com/CFD-GO/TCLB_cluster.git p
```

### Configuration

All the needed configuration and installation of R packages is done by:

```.sh
p/config
```

Hit enter to agree on defaults.

### Compilation

As computation on the main node is discouraged on many clusters, you can run `make` in parallel on a computational node.

```.sh
p/make d2q9
```

## Running cases

To run cases you can call the `run` script:

```bash.sh
p/run [model] [case.xml] [number of cores/gpus] 
```

You can use the script from a different directory then TCLB main dir, so for instance:

```.sh
cd /scratch/blarbla/blarbla/some_important_research/
~/TCLB/p/run d2q9 mycase.xml 
```

### Changeing options

You can change the default number of mpi_processes/gpus (1), etc by supplying additional options for sbatch like:

```.sh
~/TCLB/p/run d2q9 mycase.xml 4 
```

Other flags are:

```.sh
--print # dry run - to see the batch file
--wait # to see the output on-the-fly in terminal
```

## Notifications

The scripts support getting PushBullet notifications based on: <https://github.com/llaniewski/my.prompt>

## Cluster specific settings

In the `cluster` directory there are settings for specific clusters (like
prometheus and magnus). The first line of each file is a bash comment with
the pattern for hostname to match.

### Contributing

If you want to add support for another cluster, please add another file in
the `cluster` directory.
