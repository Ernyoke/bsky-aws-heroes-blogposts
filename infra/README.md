# infra

This is the infrastructure for the [AWS Heroes Blog Posts](https://bsky.app/profile/awsheroesblogposts.bsky.social) bot.

## Deployments Steps

```
cd infra
cp input.tfvars.example input.tfvars
# Fill in the missing values
terraform apply -var-file="input.tfvars"
```