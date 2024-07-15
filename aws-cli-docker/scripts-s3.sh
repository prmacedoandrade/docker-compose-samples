#List buckets
aws s3 ls

#List files
aws s3 ls s3://bucket-name
aws s3 ls s3://aws-training-4

#presign 
#Default 3600 s
aws s3 presign s3://aws-training-4/upload_file.txt

aws s3 presign s3://aws-training-4/upload_file.txt --expires-in 10

#CP
aws s3 cp /tmp/backup/upload_file.txt s3://aws-training-4/
aws s3 cp s3://aws-training-4/download_file.txt /tmp/backup