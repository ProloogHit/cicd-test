#!/bin/bash
echo "📦 Building Docker image..."
docker build -t flask-app .

echo "⏹️ Stopping old container (if any)..."
docker stop my-flask 2>/dev/null && docker rm my-flask 2>/dev/null

echo "🚀 Starting new container..."
docker run -d --name my-flask -p 5000:5000 flask-app

echo "✅ App is running at http://localhost:5000"