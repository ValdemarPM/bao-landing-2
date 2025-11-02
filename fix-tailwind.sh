#!/bin/bash

# Fix Tailwind CSS Integration Script for Banners All Over Project
# This script will help you apply the necessary fixes to your Astro project

echo "🔧 Fixing Tailwind CSS Integration for Banners All Over Project"
echo "================================================"

# Set the project directory (update this path as needed)
PROJECT_DIR="$HOME/WorkProjects/Dev/banners-all-over/HTML Mockups/bao-landing-astro_2"

# Check if project directory exists
if [ ! -d "$PROJECT_DIR" ]; then
    echo "❌ Project directory not found: $PROJECT_DIR"
    echo "Please update the PROJECT_DIR variable in this script with the correct path."
    exit 1
fi

cd "$PROJECT_DIR"
echo "📁 Working in: $PROJECT_DIR"

# Step 1: Backup existing files
echo ""
echo "📦 Creating backups..."
mkdir -p backups
[ -f "tailwind.config.mjs" ] && cp tailwind.config.mjs backups/tailwind.config.mjs.bak
[ -f "tailwind.config.js" ] && cp tailwind.config.js backups/tailwind.config.js.bak
[ -f "src/styles/global.css" ] && cp src/styles/global.css backups/global.css.bak
[ -f "postcss.config.cjs" ] && cp postcss.config.cjs backups/postcss.config.cjs.bak
[ -f "astro.config.mjs" ] && cp astro.config.mjs backups/astro.config.mjs.bak
echo "✅ Backups created in ./backups/"

# Step 2: Install required dependencies
echo ""
echo "📦 Installing dependencies..."
npm install @astrojs/tailwind@latest tailwindcss@latest autoprefixer@latest postcss@latest cssnano@latest --save-dev

# Step 3: Create/Update Tailwind config
echo ""
echo "🎨 Creating Tailwind configuration..."
cat > tailwind.config.mjs << 'EOF'
/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        // BAO Brand Colors - Based on your color palette
        'bao-blue': {
          50: '#E2F0FD',
          100: '#C4E1FC',
          200: '#89C2F8',
          300: '#3D5871',
          400: '#1386F2',
          500: '#074279',
          600: '#063561',
          700: '#052849',
          800: '#031B30',
          900: '#020E18',
        },
        'bao-purple': {
          50: '#F6E1F4',
          100: '#ECC1E8',
          200: '#DA83D0',
          300: '#B507A2',
          400: '#580350',
          500: '#542C50',
          600: '#431F3F',
          700: '#32172F',
          800: '#220F20',
          900: '#110810',
        },
        'bao-red': {
          50: '#FFE4E0',
          100: '#FFC8BF',
          200: '#FF917F',
          300: '#FF2400',
          400: '#801100',
          500: '#704038',
          600: '#5A332D',
          700: '#432622',
          800: '#2D1A17',
          900: '#160D0B',
        },
        'bao-gray': {
          50: '#F0F0F0',
          100: '#DFDFDF',
          200: '#BFBFBF',
          300: '#808080',
          400: '#404040',
          500: '#545454',
          600: '#434343',
          700: '#323232',
          800: '#222222',
          900: '#111111',
        },
      },
    },
  },
  plugins: [],
}
EOF

# Step 4: Create PostCSS config
echo "⚙️ Creating PostCSS configuration..."
cat > postcss.config.cjs << 'EOF'
module.exports = {
  plugins: {
    'tailwindcss': {},
    'autoprefixer': {},
    ...(process.env.NODE_ENV === 'production' ? { 'cssnano': {} } : {})
  }
}
EOF

# Step 5: Update Astro config
echo "🚀 Updating Astro configuration..."
# Check if astro.config.mjs exists and has tailwind integration
if ! grep -q "@astrojs/tailwind" astro.config.mjs 2>/dev/null; then
    echo "Adding Tailwind integration to Astro config..."
    cat > astro.config.mjs.new << 'EOF'
import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

// https://astro.build/config
export default defineConfig({
  integrations: [
    tailwind({
      configFile: './tailwind.config.mjs',
      applyBaseStyles: true,
    })
  ],
  vite: {
    css: {
      postcss: './postcss.config.cjs',
    }
  }
});
EOF
    mv astro.config.mjs.new astro.config.mjs
fi

# Step 6: Check and update global.css
echo "🎨 Checking global.css..."
if [ -f "src/styles/global.css" ]; then
    # Check if Tailwind directives are present
    if ! grep -q "@tailwind base" src/styles/global.css; then
        echo "Adding Tailwind directives to global.css..."
        # Create a new file with Tailwind directives at the top
        cat > src/styles/global.css.new << 'EOF'
/* Tailwind CSS Directives */
@tailwind base;
@tailwind components;
@tailwind utilities;

EOF
        # Append existing content
        cat src/styles/global.css >> src/styles/global.css.new
        mv src/styles/global.css.new src/styles/global.css
    fi
fi

# Step 7: Fix common class issues
echo ""
echo "🔍 Checking for undefined Tailwind classes..."
echo "The following files contain potentially undefined classes:"
grep -r "text-bao-\|bg-bao-" src/ --include="*.astro" --include="*.tsx" --include="*.jsx" 2>/dev/null | head -10

# Step 8: Create a test page
echo ""
echo "📝 Creating test page..."
cat > src/pages/test-tailwind.astro << 'EOF'
---
// Test page to verify Tailwind is working
---

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tailwind Test - BAO</title>
</head>
<body class="min-h-screen bg-gray-50 p-8">
    <div class="max-w-4xl mx-auto">
        <h1 class="text-4xl font-bold mb-8 text-center">Tailwind CSS Test Page</h1>
        
        <!-- Test BAO Colors -->
        <section class="mb-8">
            <h2 class="text-2xl font-bold mb-4">BAO Brand Colors</h2>
            <div class="grid grid-cols-4 gap-4">
                <div class="bg-bao-blue-400 text-white p-4 rounded">Blue 400</div>
                <div class="bg-bao-purple-300 text-white p-4 rounded">Purple 300</div>
                <div class="bg-bao-red-300 text-white p-4 rounded">Red 300</div>
                <div class="bg-bao-gray-400 text-white p-4 rounded">Gray 400</div>
            </div>
        </section>
        
        <!-- Test Text Colors -->
        <section class="mb-8">
            <h2 class="text-2xl font-bold mb-4">Text Colors</h2>
            <p class="text-bao-blue-400 font-semibold">This text is bao-blue-400</p>
            <p class="text-bao-purple-300 font-semibold">This text is bao-purple-300</p>
            <p class="text-bao-red-300 font-semibold">This text is bao-red-300</p>
            <p class="text-bao-gray-500 font-semibold">This text is bao-gray-500</p>
        </section>
        
        <!-- Test Gradient -->
        <section class="mb-8">
            <h2 class="text-2xl font-bold mb-4">Gradient Test</h2>
            <div class="h-20 bg-gradient-to-r from-bao-blue-400 via-bao-purple-300 to-bao-red-300 rounded"></div>
        </section>
        
        <p class="text-green-600 font-bold">✅ If you see colored boxes and text above, Tailwind is working correctly!</p>
    </div>
</body>
</html>
EOF

echo ""
echo "✅ Tailwind CSS fix applied successfully!"
echo ""
echo "📋 Next steps:"
echo "1. Run 'npm run dev' to start the development server"
echo "2. Visit http://localhost:4321/test-tailwind to verify Tailwind is working"
echo "3. Check your existing pages - the custom BAO colors should now work"
echo ""
echo "🔄 If you need to restore backups, they are in ./backups/"
echo ""
echo "📚 Documentation created at: $HOME/TAILWIND_FIX_DOCUMENTATION.md"
