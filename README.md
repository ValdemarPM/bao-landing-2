# 🎯 Banners All Over - Landing Page

Modern landing page for the Banners All Over Shopify app, built with Astro and Tailwind CSS.

## 🚀 Features

### Navigation & Header
- **Sticky Navigation**: Professional header with smooth scroll behavior
- **Responsive Menu**: Mobile-optimized hamburger menu with slide animations
- **Active Link Highlighting**: Dynamic highlighting based on scroll position
- **Smooth Scrolling**: Seamless navigation to page sections
- **Gradient Effects**: Brand-consistent gradient styling

### Page Sections
The landing page includes the following sections accessible through the navigation menu:

1. **Features** - Showcases the app's main capabilities
   - Smart Scheduling
   - Custom Positioning
   - Display Rules
   - Advanced AI Editing

2. **How it Works** - 4-step guide to get started
   - Create new banner
   - Position in store
   - Add slides
   - Publish

3. **Pricing** - Transparent pricing information
   - Free tier highlighted
   - Feature list
   - Clear CTA

4. **Support** - Help resources
   - Documentation links
   - Contact information

## 🎨 Brand Colors

The project uses the Banners All Over brand palette:

- **Primary Blue**: `#1386F2`
- **Magenta**: `#B507A2`
- **Orange**: `#FF2400`
- **Gray**: `#808080`

Each color has 6 tints/shades (100-600) configured in Tailwind.

## 🛠️ Tech Stack

- **Framework**: [Astro](https://astro.build/) v5.15
- **Styling**: [Tailwind CSS](https://tailwindcss.com/) v4.1
- **Language**: TypeScript
- **Package Manager**: npm

## 📦 Installation

1. Clone or navigate to the project:
```bash
cd "/Users/valdemarpereiradematos/WorkProjects/Dev/banners-all-over/HTML Mockups/bao-landing-astro_2"
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm run dev
```

Or use the convenience script:
```bash
sh start-dev.sh
```

The site will be available at `http://localhost:4322`

## 🏗️ Project Structure

```
bao-landing-astro_2/
├── src/
│   ├── components/
│   │   ├── Header.astro      # Navigation header with menu
│   │   └── Footer.astro      # Footer component
│   ├── layouts/
│   │   └── BaseLayout.astro  # Main layout wrapper
│   ├── pages/
│   │   └── index.astro       # Homepage with all sections
│   └── styles/
│       └── global.css        # Tailwind imports
├── public/
│   └── BAO_logo.svg         # Brand logo
├── astro.config.mjs         # Astro configuration
├── tailwind.config.mjs      # Tailwind configuration
└── package.json
```

## 📝 Available Scripts

- `npm run dev` - Start development server on port 4322
- `npm run build` - Build for production
- `npm run preview` - Preview production build
- `npm run format` - Format code with Prettier
- `npm run lint` - Lint code with ESLint

## 🔧 Customization

### Adding New Menu Items

Edit the `navItems` array in `/src/components/Header.astro`:

```typescript
const navItems: NavItem[] = [
  { label: 'Features', href: '#features' },
  { label: 'How it works', href: '#how-it-works' },
  { label: 'Pricing', href: '#pricing' },
  { label: 'Support', href: '#support' },
  // Add new item here
  { label: 'Blog', href: '/blog' }
];
```

### Modifying Colors

Update the color palette in `tailwind.config.mjs`:

```javascript
colors: {
  'bao-blue': {
    400: '#1386F2', // Primary blue
    // Add more shades as needed
  }
}
```

### Creating New Sections

Add a new section in `/src/pages/index.astro`:

```astro
<section id="your-section-id" class="your-styles">
  <div class="container">
    <h2>Section Title</h2>
    <!-- Your content -->
  </div>
</section>
```

## 🎯 Key Features Implementation

### Smooth Scroll Navigation
The header implements smooth scrolling with offset calculation to account for the fixed header height.

### Mobile-First Responsive Design
- Desktop: Horizontal navigation with hover effects
- Mobile: Full hamburger menu with slide animations
- Tablet: Adaptive layout

### Performance Optimizations
- Throttled scroll events for better performance
- Backdrop blur for modern glass effect
- Optimized animations with CSS transforms

## 📱 Browser Support

- Modern browsers (Chrome, Firefox, Safari, Edge)
- Mobile browsers (iOS Safari, Chrome Mobile)
- Progressive enhancement for older browsers

## 🤝 Contributing

To contribute to this project:

1. Make your changes in the appropriate files
2. Test locally using `npm run dev`
3. Ensure code quality with `npm run lint` and `npm run format`
4. Build for production with `npm run build` to verify

## 📄 License

© 2024 Banners All Over. All rights reserved.

## 🆘 Support

For questions or issues related to this landing page, please contact the development team.

---

Built with ❤️ using Astro and Tailwind CSS
