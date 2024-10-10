#!/bin/bash

# Criar diretórios do projeto
mkdir -p todo-app/backend todo-app/frontend

# Configurar backend
cd todo-app/backend
npm init -y
npm install express cors
cp ../../backend-code.js index.js

# Configurar frontend
cd ../frontend
npx create-react-app .
npm install axios
cp ../../frontend-code.js src/App.js

# Iniciar aplicação
echo "Iniciando o backend..."
cd ../backend
node index.js &

echo "Iniciando o frontend..."
cd ../frontend
npm start
