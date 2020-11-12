A.> The variable values are picked up using the default values inside variables.tf 
if they have not been overriden using any of the below ways.
(The file defining the variables has to be named variables.tf)

B.> Variables value file usage:

1.> Use the default terraform.tfvars file to provide the variable values : 
Create a file called terraform.tfvars, provide variable values inside it and run the below command :
    terraform plan

2.> Use a custom file to provide the variable values : 
Create a file with any name, for ex. custom.tfvars containing the variables values and run command :
    terraform plan -var-file="custom.tfvars"


C.> Override the variable default value from the command line :

    terraform plan -var="instance_type=t2.medium"

D.> Provide a value for variable using environment variables :

    Add an environment variable like :
      export TF_VAR_instancetype=t2.nano
    Run the below command :
      tf plan