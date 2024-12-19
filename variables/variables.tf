variable "ami_id" {
  type      = string
  default =  "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type      = string
  default =  "t3.micro"
}

variable "tags" {
  type      = map
  default =  {
        Name = "backend"
        Project = "expense"
        Component = "backend"
        Environment = "DEV"
        Terraform = "true"
  }
}  

variable "sg_name" {
    default = "allow ssh"
} 

variable "sg_description" {
    default = "allow port number 22 for ssh access"
} 

variable "from_port"{
    default = 22
    type = number
}

variable "to_port"{
    default = 22
    type = number
}

variable "protocol"{
    default = "tcp"
    
}

variable "ingress_cidr"{
    type= list(string)
    default = ["0.0.0.0/0"]
}