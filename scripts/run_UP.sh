CUDA_VISIBLE_DEVICES=2 python train.py --input_json /home/public/dataset/aic/data_aic5.json \
--input_h5 /home/public/dataset/aic/data_aic5.h5 \
--input_anno /home/public/dataset/aic/anno_aic5.json \
--input_cnn_resnet152 /home/xxzhu/caption/dataset/resnet/resnet152-b121ed2d.pth \
--input_cnn_resnet200 /home/xxzhu/caption/dataset/resnet/resnet_200_cpu.pth \
--input_cnn_resnext_101_32x4d /home/xxzhu/caption/dataset/resnet/resnext_101_32x4d.pth \
--input_cnn_resnext_101_64x4d /home/xxzhu/caption/data/resnext_101_64x4d.pth \
--input_cnn_inceptionresnetv2 /home/xxzhu/caption/dataset/inception/inceptionresnetv2-d579a627.pth \
--input_cnn_inceptionv4 /home/xxzhu/caption/dataset/inception/inceptionv4-97ef9c30.pth \
--images_root /home/public/dataset/aic \
--coco_caption_path /home/xxzhu/caption/coco-caption \
--is_aic_data True \
--aic_caption_path /home/xxzhu/caption/AI_Challenger/Evaluation/caption_eval/coco_caption \
--path_cider /home/xxzhu/caption/cider \
--path_idxs /home/public/dataset/aic \
--val_images_use 5000 \
--save_checkpoint_every 2500 \
--batch_size 16 \
--caption_model ShowAttenTellPhraseBuModel \
--cnn_model resnext_101_64x4d \
--rnn_type LSTM_SOFT_ATT_STACK_PARALLEL_WITH_WEIGHT_BU \
--rnn_atten NONE \
--checkpoint_path ../caption_checkpoint/aic \
--checkpoint_best_path ../caption_checkpoint_best/aic \
--finetune_cnn_after 0 \
--val_split 'val' \
--start_from '../caption_checkpoint/aic' \
--start_from_best '' \
--eval_result_path ../caption_result/aic \
--beam_size 2 \
--num_layers 1 \
--num_parallels 1 \
--sample_rate 0 \
--loss_weight_type 0 \
--loss_weight_start 1 \
--loss_weight_stop 1 \
--learning_rate 4e-4 \
--cnn_learning_rate 1e-5 \
--learning_rate_decay_start -1 \
--learning_rate_decay_every 3 \
--learning_rate_decay_rate 0.8 \
--cnn_learning_rate_decay_start -1 \
--cnn_learning_rate_decay_every 3 \
--cnn_learning_rate_decay_rate 0.8 \
--cnn_weight_decay 0 \
--use_tensorboard True \
--tensorboard_ip "deepai.pro" \
--reinforce_start -1 \
--reinforce_type 1 \
--mix_start -1 \
--cureward_gamma 0.99 \
--reward_gamma 2 \
--reward_base 0.5 \
--drop_prob_lm 0.5 \
--use_reviewnet 0 \
--use_linear True \
--cnn_use_linear False \
--rnn_size 512 \
--fc_feat_size 2048 \
--att_feat_size 2048 \
--att_size 49 \
--input_encoding_size 512 \
--rnn_size 512 \
--image_size 224 \
--pool_size 7 \
--att_pool_size 1 \
--att_input_layer 1 \
--word_input_layer 2 \
--block_num 1 \
--context_len 4 \
--word_gram_num 0 \
--phrase_gram_num 4 \
--conv_gram_num 4 \
--phrase_type 0 \
--seq_per_img 5 \
--use_mirror True \
--img_padding_max 50 \
--logprob_pool_type 0 \
--gram_num 0 \
--rl_alpha_type 1 \
--rl_beta 0.8 \
--rl_alpha_recent_start 0.7 \
--rl_alpha_recent_num 7500 \
--rl_gamma 5 \
--rl_use_gamma False \
--rl_metric ROUGE_L \
--prob_weight_alpha 0.9 \
--is_every_eval True \
--use_linear_type 1 \
--is_eval_start False \
--load_best_score 1 \
--use_bu_att True \
--input_bu /home/xxzhu/ltguo/AIC/bottom_up_att/bottom-up-attention/output/aic_val_resnet101_fasterRcnn_lmdb \
--bu_size 36 \
--bu_feat_size 2048 \
--eval_metric ROUGE_L \
--id aic_weight_up_3
