#!/bin/bash

# install-blender.sh
echo "🔧 Instalando Blender Customizado..."
echo "📦 Descompactando build..."

# Verificar se o arquivo existe
if [ ! -f "blender-build.tar.gz" ]; then
    echo "❌ Arquivo blender-build.tar.gz não encontrado!"
    echo "💡 Execute: git lfs pull para baixar o arquivo primeiro"
    exit 1
fi

# Descompactar
tar -xzf blender-build.tar.gz

# Verificar se descompactou corretamente
if [ -d "blender-build" ]; then
    echo "✅ Build descompactada com sucesso!"
    echo "🚀 Para executar o Blender:"
    echo "   cd blender-build/bin"
    echo "   ./blender"
else
    echo "❌ Erro ao descompactar a build"
    exit 1
fi