# Terraform Import

## Import existing resource with Terraform import

To import an existing resource into terraform please run the below command for the resource that we want to import into terraform:

```
terraform import <terraform_resource> <resource_id_in_provider>
```

Below is an example usage of the command to import an existing ec2 istance into terraform:

```
terraform import aws_instance.myec2 i-00bfe01a0465d6684
```