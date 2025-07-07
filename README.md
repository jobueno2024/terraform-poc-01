# terraform-poc-01

## ディレクトリ構成
terraform/
├── modules/              # 再利用可能なモジュール
│   ├── cloudrun/
├── environments/
│   ├── prod/             # 本番環境のTerraformコード
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   ├── terraform.tfvars