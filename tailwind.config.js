/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        // BAO Brand Colors based on your color palette
        'bao-blue': {
          50: '#E2F0FD',
          100: '#C4E1FC',
          200: '#89C2F8',
          300: '#3D5871',
          400: '#1386F2',  // Primary blue
          500: '#074279',  // Dark blue
          600: '#063561',
          700: '#052849',
          800: '#031B30',
          900: '#020E18',
        },
        'bao-purple': {
          50: '#F6E1F4',
          100: '#ECC1E8',
          200: '#DA83D0',
          300: '#B507A2',  // Primary purple
          400: '#580350',
          500: '#542C50',  // Dark purple
          600: '#431F3F',
          700: '#32172F',
          800: '#220F20',
          900: '#110810',
        },
        'bao-red': {
          50: '#FFE4E0',
          100: '#FFC8BF',
          200: '#FF917F',
          300: '#FF2400',  // Primary red/orange
          400: '#801100',  // Dark red
          500: '#704038',  // Brown-red
          600: '#5A332D',
          700: '#432622',
          800: '#2D1A17',
          900: '#160D0B',
        },
        'bao-gray': {
          50: '#F0F0F0',
          100: '#DFDFDF',
          200: '#BFBFBF',
          300: '#808080',  // Primary gray
          400: '#404040',  // Dark gray
          500: '#545454',  // Medium gray
          600: '#434343',
          700: '#323232',
          800: '#222222',
          900: '#111111',
        },
      },
      fontFamily: {
        sans: ['Inter', 'system-ui', 'sans-serif'],
      },
      backgroundImage: {
        'gradient-radial': 'radial-gradient(var(--tw-gradient-stops))',
        'gradient-conic': 'conic-gradient(from 180deg at 50% 50%, var(--tw-gradient-stops))',
        'bao-gradient': 'linear-gradient(90deg, #074279 0%, #B507A2 50%, #FF2400 100%)',
        'bao-gradient-soft': 'linear-gradient(90deg, #1386F2 0%, #B507A2 50%, #FF2400 100%)',
      },
      animation: {
        'fade-in': 'fadeIn 0.5s ease-in-out',
        'slide-up': 'slideUp 0.3s ease-out',
      },
      keyframes: {
        fadeIn: {
          '0%': { opacity: '0' },
          '100%': { opacity: '1' },
        },
        slideUp: {
          '0%': { transform: 'translateY(10px)', opacity: '0' },
          '100%': { transform: 'translateY(0)', opacity: '1' },
        },
      },
    },
  },
  plugins: [],
}
