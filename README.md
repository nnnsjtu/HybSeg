# HybSeg

HybSeg is a research code repository for multi-task medical image segmentation built on an nnU-Net-style training pipeline. The source includes a task-conditioned segmentation network, a multi-task trainer, dataset conversion, preprocessing, inference, and evaluation utilities.


## Repository structure

```text
HybSeg/
├── code/
│   ├── dataset_conversion/      # Dataset conversion utilities
│   ├── experiment_planning/     # Planning and preprocessing entry points
│   ├── preprocessing/           # Preprocessing implementations
│   ├── network_architecture/   # Segmentation networks
│   ├── training/               # Trainers, data loading, augmentation, and losses
│   ├── inference/              # Prediction and segmentation export
│   ├── evaluation/             # Evaluation utilities
│   ├── postprocessing/         # Postprocessing utilities
│   ├── run/                    # Training entry points
│   └── paths.py                # Data and output path configuration
├── run_ssl_pure.sh             # Example training launch script
└── README.md
```

## Main implementation

- Network: [`code/network_architecture/Prompt_generic_UNet.py`](code/network_architecture/Prompt_generic_UNet.py)
- Trainer: [`code/training/network_training/UniSeg_Trainer.py`](code/training/network_training/HybSeg_Trainer.py)

## Environment and setup

```bash
pip install nnunet
```

## Data configuration

```bash
export nnUNet_raw_data_base="/path/to/raw_data_base"
export nnUNet_preprocessed="/path/to/preprocessed_data"
export RESULTS_FOLDER="/path/to/training_results"
```


## Training

```bash
bash run_ssl_pure.sh
```


## Acknowledgements

The source includes code derived from nnU-Net and retains upstream copyright and license notices in the relevant files.
