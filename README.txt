# 🩺 Diabetes Prediction API with FastAPI & Docker

This project provides a **RESTful API** for predicting the likelihood of diabetes based on patient health metrics. It is built using **FastAPI**, utilizes a **machine learning model (pickled with scikit-learn)**, and is fully containerized using **Docker** for easy deployment.

---

## 🚀 Features

- ✅ **FastAPI-based REST API**
- 🧠 **Pre-trained ML model (scikit-learn)**
- 📦 **Dockerized application for portability**
- ⚡ **High performance** with asynchronous support (via Uvicorn)
- 📤 **JSON-based request/response**

---

## 🛠️ Tech Stack

- **Framework**: FastAPI
- **ML Library**: scikit-learn
- **Model Type**: Logistic Regression / Classification (assumed)
- **Serving**: Uvicorn
- **Packaging**: Docker

---

## 🧪 Input Schema

```json
{
  "pregnancies": 2,
  "Glucose": 130,
  "BloodPressure": 80,
  "SkinThickness": 25,
  "Insulin": 100,
  "BMI": 28.5,
  "DiabetesPedigreeFunction": 0.45,
  "Age": 35
}
```

---

## 🧾 Output Format

```json
{
  "label": 1,
  "result": "The person is diabetic"
}
```

---

## 🐳 Docker Setup

### 🔧 Build Docker Image

```bash
docker build -t diabetes-api .
```

### ▶️ Run the Container

```bash
docker run -d -p 8000:8000 diabetes-api
```

> Visit [http://localhost:8000/docs](http://localhost:8000/docs) for the interactive Swagger UI.

---

## 🧬 Local Development

### ✅ Step 1: Install Dependencies

```bash
pip install -r requirements.txt
```

### ✅ Step 2: Run the API

```bash
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
```

---

## 📁 Project Structure

```
.
├── main.py                  # FastAPI app
├── requirements.txt         # Python dependencies
├── Dockerfile               # Docker setup
└── trained_model/
    └── diabetes_model.pkl   # Pre-trained ML model
```

---

## ✅ API Endpoint

- `POST /diabetes_prediction`  
  Accepts a JSON payload and returns the diabetes prediction.

---
🚀 Docker Commands Executed for Project Setup
Build Docker Image

docker build -t diabetes_api .
Run Docker Container

docker run -p 8888:5000 diabetes_api
Expose Port in Dockerfile

docker tag diabetes_api rohithkumar124/diabetes_api:latest

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
