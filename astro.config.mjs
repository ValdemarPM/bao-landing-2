import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

// https://astro.build/config
export default defineConfig({
  site: 'https://valdemarpm.github.io',
  base: '/bao-landing-2',
  integrations: [
    tailwind({
      // Apply the Tailwind base styles
      applyBaseStyles: true,
    })
  ]
});
