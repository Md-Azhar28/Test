#!/bin/bash

##############################
# Author: Azhar
# Date: 26/06/2026
#
# Version: v1
#
# This script will report the AWS resource usage
# ###########################
#
set -x
#
# AWS S#
# AWS EC2
# AWS Lamda
# AWS IAM Users


# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

#list EC2 instance
echo "list of ec2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list AWS Lambda
echo "list of Lambda"
aws lambda list-functions

# list IAM Users
echo "list of users"
aws iam list-users

#Azhar
