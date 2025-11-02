#!/bin/bash

# Navigate to the project directory
cd "/Users/valdemarpereiradematos/WorkProjects/Dev/banners-all-over/HTML Mockups/bao-landing-astro_2"

# Install dependencies if needed
if [ ! -d "node_modules" ]; then
    echo "Installing dependencies..."
    npm install
fi

# Start the development server
echo "Starting Banners All Over landing page..."
echo "--------------------------------------------"
echo "Opening at http://localhost:4322"
echo "--------------------------------------------"
npm run dev
