TERM=peen
export TERM
head -n 1 /absolute/path/to/pk2dna/data/[GENOME TEXT FILE].txt > /absolute/path/to/pk2dna/tweetbuffer
sed -i '1d' /absolute/path/to/pk2dna/data/[GENOME TEXT FILE].txt
python /absolute/path/to/pk2dna/postGenomeStatus.py
