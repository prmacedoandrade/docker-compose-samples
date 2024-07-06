#Script RUN
aws ec2 run-instances --image-id ami-06c68f701d8090592 --instance-type t3.micro --key-name ssh-challenge --security-group-ids sg-074d8929bf6828fe0 --subnet subnet-00e8bc6f02aafffe0 --region us-east-1 --count 1 --tag-specifications 'ResourceType=instance,Tags=[{Key=group,Value=aws-cli}]'

#Describe instances
aws ec2 describe-instances --region us-east-1
aws ec2 describe-instances --region us-east-1 --output table
aws ec2 describe-instances --filters "Name=tag:group,Values=aws-cli" --region us-east-1
aws ec2 describe-instances --filters "Name=tag:group,Values=aws-cli" --query "Reservations[*].Instances[*].[InstanceId,ImageId,Tags[?Key=='group'].Value[]]" --region us-east-1
aws ec2 describe-instances --filters "Name=tag:group,Values=aws-cli" --query "Reservations[*].Instances[*].[InstanceId,ImageId,Tags[?Key=='group'].Value[]]" --region us-east-1 --output table
aws ec2 describe-instances --filters "Name=instance-state-name,Values=running" "Name=tag:group,Values=aws-cli"  --query "Reservations[*].Instances[*].[InstanceId,ImageId,Tags[?Key=='group'].Value[]]" --region us-east-1
