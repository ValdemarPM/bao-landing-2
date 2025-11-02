#!/bin/bash

echo "🔧 Fixing Tailwind CSS Issues in BAO Project"
echo "=============================================="
echo ""

# Navigate to project directory
cd "$(dirname "$0")"

echo "📦 Cleaning and reinstalling dependencies..."
rm -rf node_modules package-lock.json
npm install

echo ""
echo "🎨 Verifying Tailwind configuration..."
if [ -f "tailwind.config.js" ]; then
    echo "✅ tailwind.config.js found"
else
    echo "❌ tailwind.config.js not found!"
fi

if [ -f "postcss.config.cjs" ]; then
    echo "✅ postcss.config.cjs found"
else
    echo "❌ postcss.config.cjs not found!"
fi

if [ -f "src/styles/global.css" ]; then
    echo "✅ global.css found"
    # Check for Tailwind directives
    if grep -q "@tailwind base" src/styles/global.css; then
        echo "✅ Tailwind directives found in global.css"
    else
        echo "❌ Tailwind directives missing in global.css!"
    fi
else
    echo "❌ global.css not found!"
fi

echo ""
echo "🚀 Starting development server..."
echo "Visit http://localhost:4321/test-tailwind to test Tailwind setup"
echo ""
npm run dev
