#!/bin/bash

# Script para crear la estructura completa del proyecto ML CRISP-DM

PROJECT_NAME="pulmonpredic_crispdm"

echo "Creando estructura del proyecto: $PROJECT_NAME"

# Función para crear directorio y mostrar mensaje
create_dir() {
    mkdir -p "$1"
    echo "✓ Directorio creado: $1"
}

# Función para crear archivo y mostrar mensaje
create_file() {
    touch "$1"
    echo "✓ Archivo creado: $1"
}

# Crear directorio principal
create_dir "$PROJECT_NAME"
cd "$PROJECT_NAME" || exit

# Crear estructura de datos
create_dir "data/raw"
create_dir "data/processed"
create_dir "data/external"

# Crear base de datos
create_dir "database"
create_file "database/schema.sql"
create_file "database/populate_db.sql"
create_file "database/queries.sql"

# Crear notebooks
create_dir "notebooks"
create_file "notebooks/01_business_understanding.ipynb"
create_file "notebooks/02_data_understanding.ipynb"
create_file "notebooks/03_data_preparation.ipynb"
create_file "notebooks/04_modeling.ipynb"
create_file "notebooks/05_evaluation.ipynb"
create_file "notebooks/06_deployment.ipynb"
create_file "notebooks/06_powerbi_visualization.ipynb"

# Crear código fuente
create_dir "src"
create_file "src/__init__.py"

# Crear modelos
create_dir "models"
create_file "models/__init__.py"

# Crear configuración
create_dir "config"
create_file "config/__init__.py"

# Crear documentación
create_dir "docs"

# Crear visualizaciones
create_dir "visualizations"

# Crear tests
create_dir "tests"
create_file "tests/__init__.py"

# Archivos principales
create_file "requirements.txt"
create_file "README.md"
create_file ".gitignore"

# Crear archivo requirements.txt básico
cat > requirements.txt << EOL
# Procesamiento de datos
pandas==1.5.3
numpy==1.24.3
scikit-learn==1.2.2

# Base de datos y API
sqlite3==3.39.0
Flask==2.3.2
SQLAlchemy==2.0.19

# Visualización
matplotlib==3.7.1
seaborn==0.12.2
plotly==5.14.1

# Machine Learning
xgboost==1.7.5
joblib==1.2.0

# Utilidades
pyyaml==6.0
python-dotenv==1.0.0
EOL

# Crear .gitignore básico
cat > .gitignore << EOL
# Datos
data/raw/
data/processed/
data/external/

# Modelos
models/*.pkl
models/*.joblib

# Base de datos
*.db
*.sqlite

# Entornos virtuales
venv/
env/
.venv/

# Python
__pycache__/
*.pyc
*.pyo
*.pyd

# Jupyter
.ipynb_checkpoints/

# IDE
.vscode/
.idea/

# Sistema
.DS_Store
Thumbs.db

# Logs
*.log

# Archivos de entorno
.env
EOL

# Crear README.md básico
cat > README.md << EOL
# ML CRISP-DM Pulmonary Prediction

Proyecto de machine learning para predicción de enfermedades pulmonares utilizando la metodología CRISP-DM.

## Estructura del Proyecto

\`\`\`
$(find . -type d -not -path '*/\.*' | sort | sed 's/^/│   /')
\`\`\`

## Fases CRISP-DM

1. **Comprensión del Negocio**: \`notebooks/01_business_understanding.ipynb\`
2. **Comprensión de los Datos**: \`notebooks/02_data_understanding.ipynb\`
3. **Preparación de Datos**: \`notebooks/03_data_preparation.ipynb\`
4. **Modelado**: \`notebooks/04_modeling.ipynb\`
5. **Evaluación**: \`notebooks/05_evaluation.ipynb\`
6. **Despliegue**: \`notebooks/06_deployment.ipynb\`

## Instalación

\`\`\`bash
pip install -r requirements.txt
\`\`\`

## Uso

1. Colocar datos en \`data/raw/\`
2. Ejecutar notebooks en orden secuencial
3. Configurar parámetros en \`config/config.yaml\`

## Base de Datos

El proyecto utiliza SQLite. El esquema se encuentra en \`database/schema.sql\`.

## API

La aplicación web se ejecuta con:
\`\`\`bash
python src/app.py
\`\`\`
EOL

echo ""
echo "✅ Proyecto $PROJECT_NAME creado exitosamente!"
echo "📍 Ubicación: $(pwd)"
echo ""
echo "📋 Estructura final:"
tree -a -I '.git' --dirsfirst

