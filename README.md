# 🛒 EkoMart — Multi-Theme E-Commerce Platform

<!-- SCREENSHOT GUIDE ─────────────────────────────────────────────────────────
  To add your homepage screenshot at the top:

  1. Open your GitHub repository page
  2. Click on any open Issue or Pull Request (or create a new one temporarily)
  3. In the comment/description box, drag & drop or paste your screenshot image
  4. GitHub will auto-upload it and give you a URL like:
       https://github.com/user-attachments/assets/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
  5. Copy that URL and replace the src below, then close/delete the issue
  6. Your image is now hosted on GitHub's CDN permanently

  Example (replace with your actual URL):
────────────────────────────────────────────────────────────────────────────── -->

<div align="center">
  <img
    width="1900"
    alt="EkoMart Homepage Preview"
    src="https://github.com/user-attachments/assets/462a2254-386d-4581-8af2-bb255a33d587"
  />
</div>

<br/>

<div align="center">

  <!-- Tech stack badges -->
  ![React](https://img.shields.io/badge/React-18.x-61DAFB?style=for-the-badge&logo=react&logoColor=white&labelColor=20232A)
  ![Vite](https://img.shields.io/badge/Vite-5.x-646CFF?style=for-the-badge&logo=vite&logoColor=white&labelColor=1a1a2e)
  ![JavaScript](https://img.shields.io/badge/JavaScript-ES2023-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
  ![TailwindCSS](https://img.shields.io/badge/Tailwind_CSS-3.x-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white&labelColor=0f172a)
  ![React Router](https://img.shields.io/badge/React_Router-6.x-CA4245?style=for-the-badge&logo=react-router&logoColor=white)
  ![Node.js](https://img.shields.io/badge/Node.js-18+-339933?style=for-the-badge&logo=node.js&logoColor=white)

  <br/>

  <!-- Status badges -->
  ![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)
  ![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=flat-square)
  ![Themes](https://img.shields.io/badge/Themes-3-blueviolet?style=flat-square)
  ![Responsive](https://img.shields.io/badge/Responsive-Mobile--First-orange?style=flat-square)

</div>

---

## 📖 About

**EkoMart** is a fully responsive, multi-theme e-commerce web application built with **React + Vite**. It features **three independent storefront themes** — each with its own design language, color palette, and component set — all running from a single codebase. Theme switching is handled entirely through the **URL route prefix**, requiring zero code changes.

---

## 🌐 Live Theme URLs

Each theme is accessible via its own route prefix. All pages within a theme automatically inherit the correct prefix.

| Theme | URL | Color | Description |
|-------|-----|-------|-------------|
| **Theme 1** | `http://localhost:5173/` | 🟢 Green `#629d23` | Classic grocery storefront |
| **Theme 2** | `http://localhost:5173/theme2/` | 🔵 Teal `#1a6b7a` | Modern organic marketplace |
| **Theme 3** | `http://localhost:5173/theme3/` | 🟣 Custom | Premium e-commerce layout |

### Theme Page Routes

Once you're on a theme, all inner pages follow the same prefix pattern:

```
# Theme 1 (default)
http://localhost:5173/                    → Home
http://localhost:5173/shop               → Shop
http://localhost:5173/cart               → Cart
http://localhost:5173/wishlist           → Wishlist
http://localhost:5173/blog               → Blog
http://localhost:5173/vendor             → Vendor List
http://localhost:5173/contact            → Contact

# Theme 2
http://localhost:5173/theme2/            → Home
http://localhost:5173/theme2/shop        → Shop
http://localhost:5173/theme2/cart        → Cart
http://localhost:5173/theme2/blog        → Blog
http://localhost:5173/theme2/vendor      → Vendor List

# Theme 3
http://localhost:5173/theme3/            → Home
http://localhost:5173/theme3/shop        → Shop
... (same pattern)
```

---

## 🚀 Getting Started

### Prerequisites

Make sure you have the following installed:

- **Node.js** `v18.0.0` or higher → [Download](https://nodejs.org/)
- **npm** `v9+` or **yarn** `v1.22+`
- **Git** → [Download](https://git-scm.com/)

Check your versions:

```bash
node --version    # v18.x.x or higher
npm --version     # 9.x.x or higher
git --version     # git version 2.x.x
```

---

### 📥 Clone the Repository

```bash
# Clone via HTTPS
git clone https://github.com/YOUR_USERNAME/ekomart.git

# Or clone via SSH
git clone git@github.com:YOUR_USERNAME/ekomart.git

# Navigate into the project folder
cd ekomart
```

---

### ⬇️ Pull Latest Changes

If you already have the repo cloned and want to get the latest updates:

```bash
# Switch to main branch (or your working branch)
git checkout main

# Pull latest changes from remote
git pull origin main
```

---

### 📦 Install Dependencies

```bash
# Using npm (recommended)
npm install

# Or using yarn
yarn install
```

---

### ▶️ Run the Development Server

```bash
# Using npm
npm run dev

# Or using yarn
yarn dev
```

The app will start at:

```
  ➜  Local:   http://localhost:5173/
  ➜  Network: http://192.168.x.x:5173/
```

Open your browser and visit `http://localhost:5173/` to see **Theme 1**. Navigate to `http://localhost:5173/theme2/` for **Theme 2**, and `http://localhost:5173/theme3/` for **Theme 3**.

---

### 🏗️ Build for Production

```bash
npm run build
```

Preview the production build locally:

```bash
npm run preview
```

---

## 📁 Project Structure

```
ekomart/
│
├── public/                         # Static assets (favicon, images)
│
├── src/
│   ├── hooks/
│   │   └── useThemeLink.js         # ← Hook that generates theme-prefixed URLs
│   │                               #   (e.g. /theme2/shop, /theme3/cart)
│   │
│   ├── routes/
│   │   ├── AppRouter.jsx           # Root router — splits theme routes
│   │   └── ThemeRoutes.jsx         # Shared route structure for all themes
│   │
│   ├── themes/
│   │   ├── theme1/                 # Theme 1 — Green (#629d23), Barlow font
│   │   │   ├── pages/
│   │   │   │   ├── HomePage.jsx
│   │   │   │   ├── ShopPage.jsx
│   │   │   │   ├── CartPage.jsx
│   │   │   │   ├── WishlistPage.jsx
│   │   │   │   ├── BlogPage.jsx
│   │   │   │   ├── BlogDetail.jsx
│   │   │   │   ├── VendorList.jsx
│   │   │   │   ├── VendorDetail.jsx
│   │   │   │   ├── ProductDetail.jsx
│   │   │   │   └── ContactPage.jsx
│   │   │   └── components/
│   │   │       ├── Header.jsx
│   │   │       ├── Footer.jsx
│   │   │       ├── HeroBanner.jsx
│   │   │       ├── DealBanners.jsx
│   │   │       ├── FeaturedProducts.jsx
│   │   │       ├── NewsletterBanner.jsx
│   │   │       └── FeatureStrip.jsx
│   │   │
│   │   ├── theme2/                 # Theme 2 — Teal (#1a6b7a), Barlow font
│   │   │   ├── pages/
│   │   │   │   ├── HomePage.jsx
│   │   │   │   ├── ShopPage.jsx
│   │   │   │   ├── CartPage.jsx
│   │   │   │   ├── WishlistPage.jsx
│   │   │   │   ├── BlogPage.jsx
│   │   │   │   ├── BlogDetail.jsx
│   │   │   │   ├── VendorList.jsx
│   │   │   │   ├── VendorDetail.jsx
│   │   │   │   └── ProductDetail.jsx
│   │   │   └── components/
│   │   │       ├── Header.jsx
│   │   │       ├── Footer.jsx
│   │   │       ├── DealBanners.jsx
│   │   │       ├── FeaturedProducts.jsx
│   │   │       ├── NewsletterBanner.jsx
│   │   │       ├── FeatureStrip.jsx
│   │   │       └── ContactUs.jsx
│   │   │
│   │   └── theme3/                 # Theme 3 — Custom palette
│   │       ├── pages/
│   │       └── components/
│   │
│   ├── shared/                     # Shared utilities / components across themes
│   │   └── components/
│   │
│   ├── App.jsx
│   └── main.jsx
│
├── index.html
├── vite.config.js
├── tailwind.config.js
├── postcss.config.js
├── package.json
└── README.md
```

---

## 🔑 Key Concept — `useThemeLink` Hook

The **`useThemeLink`** hook is the core of the multi-theme routing system. It reads the current theme prefix from the URL and returns a helper function that automatically prepends the correct prefix to any path.

```js
// src/hooks/useThemeLink.js
import { useLocation } from "react-router-dom";

export function useThemeLink() {
  const { pathname } = useLocation();
  const prefix = pathname.startsWith("/theme2") ? "/theme2"
               : pathname.startsWith("/theme3") ? "/theme3"
               : "";
  return (path) => `${prefix}${path}`;
}
```

**Usage in any component:**

```jsx
import { Link } from "react-router-dom";
import { useThemeLink } from "../../hooks/useThemeLink";

function NavBar() {
  const themeLink = useThemeLink();   // ← call once at top of component

  return (
    <nav>
      <Link to={themeLink("/shop")}>Shop</Link>
      <Link to={themeLink("/cart")}>Cart</Link>
      <Link to={themeLink("/blog")}>Blog</Link>
    </nav>
  );
}
```

> ⚠️ **Never** call `themeLink()` inside a `.map()` callback. Always call `useThemeLink()` once at the component's top level.

---

## 📚 Pages Available Per Theme

| Page | Theme 1 | Theme 2 | Theme 3 |
|------|:-------:|:-------:|:-------:|
| Home | ✅ | ✅ | ✅ |
| Shop (with filters) | ✅ | ✅ | ✅ |
| Product Detail | ✅ | ✅ | ✅ |
| Cart | ✅ | ✅ | ✅ |
| Wishlist | ✅ | ✅ | — |
| Blog List | ✅ | ✅ | — |
| Blog Detail | ✅ | ✅ | — |
| Vendor List | ✅ | ✅ | — |
| Vendor Detail | ✅ | ✅ | — |
| Contact | ✅ | ✅ | — |

---

## 🎨 Themes Overview

### Theme 1 — Classic Green
> Route prefix: `/` (default)

- **Primary color:** `#629d23` (Olive Green)
- **Font:** Barlow (Google Fonts)
- **Style:** Traditional grocery / supermarket aesthetic
- Full page set including wishlist, contact, blog

### Theme 2 — Modern Teal
> Route prefix: `/theme2/`

- **Primary color:** `#1a6b7a` (Deep Teal), **Accent:** `#3b5bdb` (Blue)
- **Font:** Barlow (Google Fonts)
- **Style:** Modern organic marketplace with curved vendor cards and rich animations
- Includes advanced shop with color/brand/price/rating filters, list & grid view toggle

### Theme 3 — Premium
> Route prefix: `/theme3/`

- Custom color palette
- Premium layout design

---

## 🛠️ Tech Stack & Libraries

### Core

| Technology | Version | Purpose |
|------------|---------|---------|
| [React](https://react.dev/) | 18.x | UI component library |
| [Vite](https://vitejs.dev/) | 5.x | Build tool & dev server |
| [React Router DOM](https://reactrouter.com/) | 6.x | Client-side routing (no reload) |

### Styling

| Technology | Version | Purpose |
|------------|---------|---------|
| [Tailwind CSS](https://tailwindcss.com/) | 3.x | Utility-first CSS framework |
| [PostCSS](https://postcss.org/) | 8.x | CSS processing / autoprefixer |
| [Google Fonts — Barlow](https://fonts.google.com/specimen/Barlow) | — | Primary typeface |

### UI & Icons

| Library | Purpose |
|---------|---------|
| Inline SVG icons | Custom icon components (no icon library dependency) |
| CSS `@keyframes` (injected) | Scroll-triggered entrance & hover animations |

### Dev Tools

| Tool | Purpose |
|------|---------|
| ESLint | Code linting |
| Prettier | Code formatting |

---

## ⚙️ Environment & Config Files

| File | Purpose |
|------|---------|
| `vite.config.js` | Vite build configuration |
| `tailwind.config.js` | Tailwind theme extensions & content paths |
| `postcss.config.js` | PostCSS plugins (autoprefixer, tailwindcss) |
| `package.json` | Dependencies & npm scripts |

---

## 📜 Available Scripts

```bash
npm run dev       # Start development server (hot reload)
npm run build     # Production build → /dist folder
npm run preview   # Preview production build locally
npm run lint      # Run ESLint across the project
```

---

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch: `git checkout -b feature/my-feature`
3. Commit your changes: `git commit -m 'Add: my feature'`
4. Push to the branch: `git push origin feature/my-feature`
5. Open a Pull Request

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

<div align="center">
  <p>Built with ❤️ using React + Vite + Tailwind CSS</p>
  <p>
    <a href="http://localhost:5173/">Theme 1</a> •
    <a href="http://localhost:5173/theme2/">Theme 2</a> •
    <a href="http://localhost:5173/theme3/">Theme 3</a>
  </p>
</div>
