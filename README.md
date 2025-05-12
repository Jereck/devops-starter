# DevOps Engineer Portfolio Project 🚀

This project simulates the responsibilities of a real-world DevOps Engineer by showcasing skills across **Docker**, **Terraform**, **CI/CD**, **AWS**, and **Monitoring**.

---

## 🔧 Tech Stack
- **App**: Python Flask (API) + Static HTML frontend
- **Containers**: Docker, Docker Compose
- **CI/CD**: GitHub Actions
- **Infrastructure**: AWS (EC2, S3, RDS, ALB, IAM) via Terraform
- **Monitoring**: Prometheus, Grafana, CloudWatch

---

## 📁 Project Structure
```
.
├── app                    # Dockerized frontend & backend
│   ├── backend            # Flask API
│   ├── frontend           # Static HTML (served via NGINX)
│   └── docker-compose.yml
├── terraform              # Infrastructure as Code
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── modules/
├── .github/workflows      # CI/CD automation
│   └── ci-cd.yml
├── docs                   # Architecture, Monitoring setup
├── .gitignore             # Ignore unnecessary files
└── README.md              # You're here
```

---

## ✅ How to Run Locally
```bash
cd app
docker-compose up --build
```

- Visit `http://localhost` → Frontend
- Visit `http://localhost:5001` → Backend API

---

## 🚀 GitHub Actions (CI/CD)
- Auto-builds Docker images on push to `main`
- Prepares for future ECR push & EC2 deploy

---

## 🏗️ Terraform Setup
```bash
cd terraform
terraform init
terraform plan
```
- Provisions AWS infrastructure (currently basic EC2)

---

## 📊 Monitoring (docs/monitoring-setup.md)
- Prometheus Node Exporter
- Grafana Dashboards
- AWS CloudWatch Logs

---

## 🛡️ Security Highlights
- IAM least privilege setup
- Secrets stored in AWS Secrets Manager (planned)
- HTTPS via ALB + ACM (planned)

---

## 📌 To-Do (Next Steps)
- [ ] Terraform modules for VPC, ALB, RDS
- [ ] Push Docker images to ECR
- [ ] SSH deploy to EC2 instance
- [ ] Setup CloudWatch Alerts + Grafana Dashboards
- [ ] Add ACM + HTTPS

---

## 🧠 About This Project
This project mimics the workflow of a real DevOps engineer: writing infrastructure as code, automating deployments, monitoring systems, and securing cloud environments. Great for resumes, interviews, and hands-on learning.

---

## 📝 License
MIT