#!/bin/bash

# Script para compilar el documento modular de ARKA
# Asegúrate de tener todos los archivos .md y header.tex en la carpeta src/

echo "🚀 Compilando Documento de Ejecución de ARKA..."

# Verificar que pandoc está instalado
if ! command -v pandoc &> /dev/null; then
    echo "❌ Error: Pandoc no está instalado"
    echo "Instálalo con: sudo apt install pandoc (Ubuntu) o sudo pacman -S pandoc (Arch)"
    exit 1
fi

# Crear directorio de salida si no existe
mkdir -p output

# Compilar el documento principal con todas las secciones
pandoc src/main.md src/1.analisis/main.md src/1.analisis/requisitos.md src/1.analisis/modelo-comportamiento.md src/1.analisis/modelo-presentacion.md \
  --include-in-header=src/header.tex \
  --pdf-engine=pdflatex \
  --number-sections \
  --toc \
  --toc-depth=5 \
  --variable geometry:margin=2.5cm \
  --variable fontsize:12pt \
  --variable papersize:a4 \
  --variable colorlinks:true \
  --variable linkcolor:blue \
  --variable urlcolor:blue \
  --variable citecolor:blue \
  --variable inputenc:utf8 \
  --variable fontenc:T1 \
  -o output/doc-ejecucion.pdf

if [ $? -eq 0 ]; then
    echo "✅ Documento compilado exitosamente: output/doc-ejecucion.pdf"
    echo "📄 Abriendo PDF..."
    
    # # Intentar abrir el PDF (funciona en la mayoría de sistemas Linux)
    # if command -v xdg-open &> /dev/null; then
    #     xdg-open output/doc-ejecucion.pdf
    # elif command -v evince &> /dev/null; then
    #     evince output/doc-ejecucion.pdf &
    # elif command -v okular &> /dev/null; then
    #     okular output/doc-ejecucion.pdf &
    # else
    #     echo "📁 El archivo está en: $(pwd)/output/doc-ejecucion.pdf"
    # fi
else
    echo "❌ Error al compilar el documento"
    echo "Verifica que todos los archivos estén presentes en la carpeta src/:"
    echo "  - src/main.md"
    echo "  - src/1.analisis/main.md"
    echo "  - src/1.analisis/requisitos.md"
    echo "  - src/1.analisis/modelo-comportamiento.md"
    echo "  - src/1.analisis/modelo-presentacion.md"
    echo "  - src/header.tex"
fi