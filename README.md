# Yandex Cloud demo lab

## How to run

Prerequisites:

- terraform v1.0.8
- yc 0.82.0 ([How to init yc](https://cloud.yandex.ru/docs/cli/quickstart))
- Fill in the variables `cloud_id` and `folder_id` in a _terraform/${put-your-name}.auto.tfvars_

```bash
cd terraform
export YC_TOKEN=`yc iam create-token`
terraform init 
terraform plan
terraform apply
```
