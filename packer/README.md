# Packer module

## How to run

Prerequisites:

- packer v1.7.7
- yc 0.82.0 ([How to init yc](https://cloud.yandex.ru/docs/cli/quickstart))
- create a _secret.pkrvars.hcl_ file and fill in the variable `folder_id` there

```bash
export YC_TOKEN=`yc iam create-token`
export PKR_VAR_artifact_dir="/path/to/artifact/directory"

mkdir "${PKR_VAR_artifact_dir}"
packer build -var-file="yc-lab.pkrvars.hcl" -var-file="secret.pkrvars.hcl" . 
```
