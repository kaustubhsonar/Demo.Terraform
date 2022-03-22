# Demo Terraform

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
---
## Terraform introduction
* Terraform is an <b>`open-source` </b>infrastructure as code software tool that provides a <b>`consistent CLI workflow`</b> to manage hundreds of cloud services. Terraform <b>`codifies cloud APIs`</b> into <b>`declarative configuration files`.</b>
* Terraform in a open source tool originally developed by hashicorp that enables you to <b>`automate and manage your infrastructure`</b>.

---

## Infra chalenge Day 1 and day 2+
* Nothing to something 
* Incremental deployment

---
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
  - Output variable 
- Output variables 
- Resources 
---
## Terraform state 
-local vs version control vs remote state

---
## Terraform modules 
---
## Terraform provisioners 

---




