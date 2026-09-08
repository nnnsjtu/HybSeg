#!/bin/bash

Traniner="HybSeg_Trainer"

GPU=0

task_exp=$Traniner

CUDA_VISIBLE_DEVICES=$GPU nnUNet_n_proc_DA=32 nnUNet_train 3d_fullres $Traniner 96 0 -exp_name $task_exp

