# Brother1816 Font Implementation Guide

## Font Weight Mapping

The Brother1816 font family has been successfully integrated into the Banners All Over Astro project, replacing the previous Inter font. Here's the weight mapping:

### Brother1816 Weight Variants:
- **100 (Thin)**: Brother1816-Thin.ttf
- **300 (Light)**: Brother1816-Light.ttf  
- **350 (Book)**: Brother1816-Book.ttf
- **400 (Regular)**: Brother1816-Regular.ttf - Default weight
- **500 (Medium)**: Brother1816-Medium.ttf
- **700 (Bold)**: Brother1816-Bold.ttf
- **800 (ExtraBold)**: Brother1816-ExtraBold.ttf
- **900 (Black)**: Brother1816-Black.ttf

### Mapping from Inter to Brother1816:

| Previous (Inter) | New (Brother1816) | Use Case |
|-----------------|------------------|----------|
| font-weight: 400 | font-weight: 400 (Regular) | Body text, paragraphs |
| font-weight: 500 | font-weight: 500 (Medium) | Subheadings, emphasis |
| font-weight: 600 | font-weight: 700 (Bold) | Section titles, buttons |
| font-weight: 700 | font-weight: 700 (Bold) | Headlines, CTAs |
| font-weight: 800 | font-weight: 800 (ExtraBold) | Hero text, major headlines |

### Tailwind CSS Classes:

The following Tailwind utility classes are available:
- `font-thin` → 100
- `font-light` → 300
- `font-normal` → 400
- `font-medium` → 500
- `font-bold` → 700
- `font-extrabold` → 800
- `font-black` → 900

### Custom Font Family Classes:
- `font-sans` - Uses Brother1816 as the primary font
- `font-brother` - Explicit Brother1816 font family

## Implementation Details

### Files Modified:

1. **src/layouts/BaseLayout.astro**
   - Removed Google Fonts links
   - Added @font-face declarations for all Brother1816 weights
   - Updated global font-family to use Brother1816

2. **tailwind.config.mjs**
   - Added Brother1816 to the fontFamily configuration
   - Set as default sans-serif font

### Testing:

Open `/font-test.html` in your browser to see:
- All Brother1816 weight variants
- Side-by-side comparison with the old Inter font
- Real content examples from the Banners All Over landing page

### Usage Examples:

```html
<!-- Regular text -->
<p class="font-normal">Professional banners to convert visitors into customers</p>

<!-- Medium weight for emphasis -->
<h3 class="font-medium">Smart Scheduling</h3>

<!-- Bold for headlines -->
<h2 class="font-bold">Display Rules</h2>

<!-- Extra bold for hero sections -->
<h1 class="font-extrabold">Enhance your Shopify store with stunning banners</h1>

<!-- Black for maximum impact -->
<span class="font-black">Limited Time Offer!</span>
```

### Notes:
- The Brother1816 font family provides more weight options than Inter
- The Book weight (350) is unique to Brother1816 and provides a nice option between Light and Regular
- The Black weight (900) offers extra emphasis beyond ExtraBold
- All italic variants are also available and properly configured

## Brand Consistency:

The Brother1816 font aligns well with the Banners All Over brand:
- Modern and professional appearance
- Excellent readability at all sizes
- Distinctive character that sets the brand apart
- Wide range of weights for design flexibility
