# Terraform

## Agenda 
* Introduction to IaC 
* What is Terraform 
* Infra challenges 
* Terraform features 
* Demo 





## Infrastructer as code
* Infrastructure as code (IaC) tools allow you to manage infrastructure with configuration files rather than through a graphical user interface. 
* IaC allows you to build, change, and manage your infrastructure in a safe, consistent, and repeatable way


### What problem IaC solve? 
* The pain of managing infrastructure. 
* Speed of deployment.
* Consistency 
* Accountability (If the failure happens in infra side infra code files hold the responsibility)
* Automation.
* Lower cost.

#### Types of IaC tools 
![IaC tools](https://github.com/kaustubhsonar/Demo.Terraform/blob/2dca1f1f2749bcc5cbd32bc5e1f65ef5410d835c/images/Screenshot%202022-03-22%20at%2012.32.20%20PM.png)




## Terraform introduction
* Terraform is an <b>`open-source` </b>infrastructure as code software tool that provides a <b>`consistent CLI workflow`</b> to manage hundreds of cloud services. Terraform <b>`codifies cloud APIs`</b> into <b>`declarative configuration files`.</b>
* Terraform is an open source tool originally developed by hashicorp that enables you to <b>`automate and manage your infrastructure`</b>.



## Infra challenge Day 1 and day 2+
* Nothing to something 
* Incremental deployment



## Terraform basics 
- HCL (Hashicorp configuration language)
    <p>Terraform uses HCL to provision resource. It has syntax of blocks and key value pair like follows
    </p>
    
    ```
       <block> <parameters>{
            key1 = value1 
            key2 = valeu2
        }
    ```


- Resource Block
    <p>Each resource block describes one or more infrastructure objects, such as virtual networks, compute instances, or higher-level components such as DNS records.
    </p>

    ```
    resource "azurerm_resource_group" "example" {
        name     = "example"
        location = "West Europe"
    }
    ```


- Providers   
  - Terraform relies on plugins called "providers" to interact with cloud providers, SaaS providers, and other APIs.
  - Every resource type is implemented by a provider; without providers, Terraform can't manage any kind of infrastructure.
  - Each provider has its own documentation, describing its resource types and their arguments.
  - providers are checked and installed when we fire `terrafom init` comamnd.
  
  ```
  # Azure Provider source and version being used
    terraform {
        required_version = ">=1.0.0"

        required_providers {
            azurerm = {
            source  = "hashicorp/azurerm"
            version = "=2.97.0"
            }
        }
    }
  ```


- Variables 
  <p> Like every other language variables are used in HCL as well for requesting and publishing named values.</p>
  
  - Input variable
    <p>Input variables are like function arguments.</p>
    
    ```
    variable "image_id" {
        type = string
    }

    variable "availability_zone_names" {
        type    = list(string)
        default = ["us-west-1a"]
    }

    variable "docker_ports" {
        type = list(object({
            internal = number
            external = number
            protocol = string
        }))
        default = [
        {
            internal = 8300
            external = 8300
            protocol = "tcp"
        }
      ]
    }

    ```


  - Output variable
    - output variables are like function return values.
    - A root module can use outputs to print certain values in the CLI output after running terraform apply.

    ```
    output "instance_ip_addr" {
      value = aws_instance.server.private_ip
    }
    ``` 



## Terraform state 
 - Terraform must store state about your managed infrastructure and configuration
 - This state is stored by default in a local file named `"terraform.tfstate"`, but it can also be stored remotely
 - local vs remote state.



## Terraform modules
 - Modules are the way to `resue the code`.
 - Modules are containers for multiple resources that are used together.  
 - Types of modules 
    - The root module
      <p>Every terraform configuration has a root module</p> 
    - Child module
      <p> A module that has been called by another module is often referred to as a child module. </p>

 - Published modules 
    <p> The modules which are published on public or private registry are called as published modules </p>
 
    ![Modules](https://github.com/kaustubhsonar/Demo.Terraform/blob/b37254aff7a96be9c9c55e6cccf08c03d0dc8a22/images/modules.PNG)



## Commands 
 - terraform init 
 - terraform plan
 - terraform apply 
 - terraform destroy
 - terraform refresh

## Demo 

### Problem Statements 
* Create following resources in the azure cloud 
  1. Resource group 
  2. Storage account in a resource group created in the first step
  3. Private container under the storage account  
* Create all the resources in the first problem for both the environments `dev` and `live`. Create following additional resource in the `dev` environment.
  1. Storage account named `specialstoragedev`.


