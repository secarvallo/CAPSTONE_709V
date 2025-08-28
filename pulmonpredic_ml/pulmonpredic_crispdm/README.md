# ML CRISP-DM Pulmonary Prediction

Proyecto de machine learning para predicción de enfermedades pulmonares utilizando la metodología CRISP-DM.

## Estructura del Proyecto

```
│   .
│   ./config
│   ./data
│   ./data/external
│   ./data/processed
│   ./data/raw
│   ./database
│   ./docs
│   ./models
│   ./notebooks
│   ./src
│   ./tests
│   ./visualizations
```

## Fases CRISP-DM

1. **Comprensión del Negocio**: `notebooks/01_business_understanding.ipynb`
2. **Comprensión de los Datos**: `notebooks/02_data_understanding.ipynb`
3. **Preparación de Datos**: `notebooks/03_data_preparation.ipynb`
4. **Modelado**: `notebooks/04_modeling.ipynb`
5. **Evaluación**: `notebooks/05_evaluation.ipynb`
6. **Despliegue**: `notebooks/06_deployment.ipynb`

## Instalación

```bash
pip install -r requirements.txt
```

## Uso

1. Colocar datos en `data/raw/`
2. Ejecutar notebooks en orden secuencial
3. Configurar parámetros en `config/config.yaml`

## Base de Datos

El proyecto utiliza SQLite. El esquema se encuentra en `database/schema.sql`.

## API

La aplicación web se ejecuta con:
```bash
python src/app.py
```
