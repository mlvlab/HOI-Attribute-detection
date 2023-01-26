#!/usr/bin/env bash

set -x

EXP_DIR=logs_run_001
PY_ARGS=${@:1}

python -u main.py \
        --pretrained params/detr-r50-pre-vaw.pth \
        --output_dir checkpoints/vaw/ \
        --att_det \
        --num_obj_classes 80 \
        --batch_size 8 \
        --dataset_file vaw \
        --data_path data/vaw
    ${PY_ARGS}
