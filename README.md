# Azure Bicep Beginner Project

This project demonstrates how to deploy a basic Azure infrastructure using **Azure Bicep**. The setup includes a **Virtual Network (VNet)** and a **Virtual Machine (VM)** connected through a **Network Interface**. This project is intended as a beginner’s guide to understanding and using Azure Bicep for Infrastructure-as-Code (IaC).

## Project Overview

### Objectives
- Use Azure Bicep to create and deploy Azure resources.
- Understand the relationships between a VNet, NIC, and VM.
- Document and visualize each step for future reference.

---

## Steps and Screenshots

### 1. Login to Azure CLI
After logging in successfully, a "Login succeeded" message confirms that the Azure CLI setup is complete.

![Login Success Screenshot](https://github.com/user-attachments/assets/3d7503bb-a5d3-4252-a1fc-63e65b3c7a82)

---

### 2. Set Up Project Directory and Bicep File
This screenshot shows the creation of the project folder `AzureBicep-BeginnerProject` and the `main.bicep` file, where we’ll define the Azure resources.

![Project Setup Screenshot](https://github.com/user-attachments/assets/1b5e0187-43a5-49f2-a3a0-56855b2a81d1)

---

### 3. Define the Virtual Network (VNet) in Bicep
This screenshot captures the initial `main.bicep` file with the code for creating a virtual network (VNet). The VNet is configured with an IP address range to provide networking capabilities in Azure.

![VNet Code Screenshot](https://github.com/user-attachments/assets/5ea7ccaa-1643-4a16-94c8-01cd8580a988)

---

### 4. Add Virtual Machine (VM) Configuration
This screenshot shows the `main.bicep` file with both the VNet and VM resources defined. The VM is connected to the VNet through a network interface, creating a complete setup.

![VM Code Screenshot](https://github.com/user-attachments/assets/446df080-ea83-496d-8214-d3963afec5cd)

---

### 5. Deploying the Bicep Template to Azure
The final screenshot shows the CLI output indicating a successful deployment. The message `"provisioningState: Succeeded"` confirms that the VNet and VM were successfully created in Azure.

![Deployment Success Screenshot](https://github.com/user-attachments/assets/6229e912-52ab-4576-a682-64cf8bfb6076)

---

## Key Takeaways

1. **Azure Bicep Simplifies IaC**: Bicep provides a readable and concise syntax for defining Azure resources, which makes infrastructure code easier to understand and maintain.
2. **Resource Dependencies**: Understanding the dependencies between resources, such as linking a VM to a VNet via a NIC, is essential for building functional cloud infrastructure.
3. **Error Handling and Debugging**: Encountering errors during deployment is normal. Reading error messages and making adjustments helps build valuable troubleshooting skills.
4. **Documentation and Portfolio Building**: By documenting each step with screenshots and descriptions, this project serves as a useful reference and portfolio piece.

---
