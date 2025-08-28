#!/bin/bash

# Crear directorio principal
mkdir -p ml_crispdm_pulmonpredic

# Navegar al directorio principal
cd ml_crispdm_pulmonpredic

# Crear estructura de directorios de datos
mkdir -p data/raw
mkdir -p data/processed
mkdir -p data/external

# Crear directorio de base de datos y archivos SQL
mkdir -p database
touch database/schema.sql
touch database/populate_db.sql
touch database/queries.sql

# Crear directorio de notebooks con todos los archivos .ipynb
mkdir -p notebooks
touch notebooks/01_business_understanding.ipynb
touch notebooks/02_data_understanding.ipynb
touch notebooks/03_data_preparation.ipynb
touch notebooks/04_modeling.ipynb
touch notebooks/05_evaluation.ipynb
touch notebooks/06_deployment.ipynb
touch notebooks/06_powerbi_visualization.ipynb

# Crear directorio src y archivos principales
mkdir -p src
touch src/__init__.py

# Crear directorio de modelos
mkdir -p models
touch models/__init__.py

# Crear directorio de configuración
mkdir -p config
touch config/__init__.py

# Crear directorio de documentación
mkdir -p docs
touch docs/project_plan.md
touch docs/analysis_design.md
touch docs/test_plan.md
touch docs/usability_test.md
touch docs/project_closure.md
touch docs/database_documentation.md
touch docs/api_documentation.md

# Crear directorio de visualizaciones
mkdir -p visualizations

# Crear directorio de tests
mkdir -p tests
touch tests/__init__.py

# Crear archivos principales
touch requirements.txt
touch README.md
touch .gitignore

# Mostrar estructura creada
echo "Estructura de directorios creada:"
find . -type d -not -path '*/\.*' | sort

echo ""
echo "Archivos creados:"
find . -type f -not -path '*/\.*' | sort