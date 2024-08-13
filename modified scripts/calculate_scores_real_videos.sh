
rm all_scores.txt
yourfilenames=`ls $1`

for eachfile in $yourfilenames
do
   python run_pipeline.py --videofile $1/$eachfile --reference wav2lip --data_dir tmp_dir
   score_output=$(python calculate_scores_real_videos.py --videofile $1/$eachfile --reference wav2lip --data_dir tmp_dir)
   echo "$eachfile $score_output" >> all_scores.txt
done

