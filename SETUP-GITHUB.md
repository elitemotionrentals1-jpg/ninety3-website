# Setting Up GitHub Repository for Ninety 3 Website

## Step 1: Create Repository on GitHub

1. Go to https://github.com/new
2. Repository name: `ninety3-website` (or your preferred name)
3. Description: "Official website for Ninety 3 clothing brand"
4. Make it **Public** or **Private** (your choice)
5. **DO NOT** initialize with README, .gitignore, or license (we already have these)
6. Click **Create repository**

## Step 2: Connect and Push

After creating the repository on GitHub, run these commands:

```bash
cd "/Users/djnino/ninety3-website"

# Add your GitHub repository as remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/ninety3-website.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Alternative: Using GitHub CLI

If you have GitHub CLI installed:

```bash
cd "/Users/djnino/ninety3-website"
gh repo create ninety3-website --public --source=. --remote=origin --push
```

## After Pushing

Your website will be available at:
**https://github.com/YOUR_USERNAME/ninety3-website**

## Deployment Options

### Option 1: Vercel (Recommended)
1. Go to https://vercel.com
2. Import your GitHub repository
3. Deploy - it will automatically detect static files

### Option 2: Netlify
1. Go to https://netlify.com
2. Connect your GitHub repository
3. Deploy - it will automatically detect static files

### Option 3: GitHub Pages
1. Go to repository Settings → Pages
2. Source: Deploy from a branch
3. Branch: main, folder: / (root)
4. Your site will be at: `https://YOUR_USERNAME.github.io/ninety3-website`

---

**Need help?** The repository is ready to push once you create it on GitHub!

