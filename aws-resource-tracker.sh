#!/bin/bash
#
#############################
# Author: Oyekanmi Are
# Date : 14th of October
#
#
#  Verson:v1
#
#  This script will report the aws resource usage 
#  ########################
#
set -x

#
#  AWS S3
#  AWS EC2
#  AWS LAMBDA
#  AWS IAM Users 
#
# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > resourceTracker
#
#
# list EC2 instances 
echo "Print list of ec2 buckets"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list AWS lambda
echo "Print list of lambda functions" 
aws lambda list-functions >> resourceTracker


# list IAM Users
echo "Print list of IAM Users"
aws iam list-users > resourceTracker
