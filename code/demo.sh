# EDSR baseline model (x2)
#python3 main.py --model EDSR --scale 2 --save EDSR_baseline_x2 --reset
#python main.py --model EDSR --scale 2 --pre_train ../experiment/model/EDSR_baseline_x2.pt --reset --test_only --n_val 100 --save_results

# EDSR baseline model (x3) - requires pre-trained EDSR baseline x2 model
#python main.py --model EDSR --scale 3 --save EDSR_baseline_x3 --reset --pre_train ../experiment/model/EDSR_baseline_x2.pt
#python main.py --model EDSR --scale 3 --pre_train ../experiment/model/EDSR_baseline_x3.pt --reset --test_only --n_val 100

# EDSR baseline model (x4) - requires pre-trained EDSR baseline x2 model
#python main.py --model EDSR --scale 4 --save EDSR_baseline_x4 --reset --pre_train ../experiment/model/EDSR_baseline_x2.pt
#python main.py --model EDSR --scale 4 --pre_train ../experiment/model/EDSR_baseline_x4.pt --reset --test_only --n_val 100

# EDSR in the paper (x2)
#python main.py --model EDSR --scale 2 --save EDSR_x2 --n_resblocks 32 --n_feats 256 --res_scale 0.1 --reset

# EDSR in the paper (x3) - requires pre-trained EDSR baseline x2 model
#python main.py --model EDSR --scale 3 --save EDSR_x3 --n_resblocks 32 --n_feats 256 --res_scale 0.1 --reset --pre_train ../experiment/EDSR_x2/model/model_best.pt

# EDSR in the paper (x4) - requires pre-trained EDSR baseline x2 model
#python main.py --model EDSR --scale 4 --save EDSR_x4 --n_resblocks 32 --n_feats 256 --res_scale 0.1 --reset --pre_train ../experiment/EDSR_x2/model/model_best.pt

# MDSR baseline model
#python main.py --template MDSR --model MDSR --scale 2+3+4 --save MDSR_baseline --reset --save_models
#python3 main.py --template MDSR --model MDSR --scale 2+3+4 --reset --test_only --n_val 100 --pre_train ../experiment/model/MDSR_baseline.pt

# MDSR in the paper
#python main.py --template MDSR --model MDSR --scale 2+3+4 --save MDSR --n_resblocks 80 --reset

# Test your own images
python3 main.py --model MDSR --scale 2+3+4 --data_test MyImage --test_only --save_results --pre_train ../experiment/model/MDSR_baseline.pt

# !!!Currently disabled!!!
# Advanced - JPEG artifact removal
#python main.py --template MDSR_jpeg --model MDSR --scale 2+3+4 --save MDSR_jpeg --quality 75+ --reset
