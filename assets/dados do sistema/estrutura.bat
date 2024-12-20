@echo off
setlocal

:: Nome do projeto
set PROJECT_NAME=projeto-gestao-documentos

:: Criar pastas principais
mkdir %PROJECT_NAME%
cd %PROJECT_NAME%
mkdir assets backend\controllers backend\database backend\middleware backend\models backend\routes frontend\css frontend\js frontend\views

:: Criar arquivos principais
echo // Arquivo principal do Electron > main.js
echo // Comunicação entre frontend e backend > preload.js
echo { "name": "%PROJECT_NAME%", "version": "1.0.0", "main": "main.js" } > package.json
echo # %PROJECT_NAME% > README.md
echo node_modules/ > .gitignore

:: Criar arquivos do backend
echo // Configuração do servidor backend > backend\app.js
echo // Controlador para documentos > backend\controllers\documentController.js
echo // Configuração do banco SQLite > backend\database\dbConfig.js
echo -- Script para criar tabelas no SQLite > backend\database\migrations.sql
echo // Middleware de autenticação > backend\middleware\authMiddleware.js
echo // Modelo para documentos > backend\models\documentModel.js
echo // Rotas para documentos > backend\routes\documentRoutes.js

:: Criar arquivos do frontend
echo /* CSS principal da aplicação */ > frontend\css\style.css
echo // Lógica do frontend > frontend\js\app.js
echo <!DOCTYPE html> > frontend\views\index.html
echo <!DOCTYPE html> > frontend\views\document.html
echo <!DOCTYPE html> > frontend\main.html

echo Estrutura do projeto criada com sucesso!

endlocal
pause
