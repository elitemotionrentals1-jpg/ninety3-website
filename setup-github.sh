#!/bin/bash

# Ninety 3 Website - GitHub Setup Script

echo "🚀 Setting up GitHub repository for Ninety 3 website..."
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: Please run this script from the ninety3-website directory"
    exit 1
fi

# Get GitHub username
read -p "Enter your GitHub username: " GITHUB_USERNAME

if [ -z "$GITHUB_USERNAME" ]; then
    echo "❌ Error: GitHub username is required"
    exit 1
fi

# Get repository name
read -p "Enter repository name (default: ninety3-website): " REPO_NAME
REPO_NAME=${REPO_NAME:-ninety3-website}

echo ""
echo "📋 Repository details:"
echo "   Username: $GITHUB_USERNAME"
echo "   Repository: $REPO_NAME"
echo ""

read -p "Have you created this repository on GitHub? (y/n): " REPO_CREATED

if [ "$REPO_CREATED" != "y" ] && [ "$REPO_CREATED" != "Y" ]; then
    echo ""
    echo "Please create the repository first:"
    echo "1. Go to https://github.com/new"
    echo "2. Repository name: $REPO_NAME"
    echo "3. DO NOT initialize with README/gitignore"
    echo "4. Click Create repository"
    echo ""
    read -p "Press Enter when you've created the repository..."
fi

# Check if remote already exists
if git remote get-url origin &>/dev/null; then
    echo "⚠️  Remote 'origin' already exists"
    read -p "Do you want to update it? (y/n): " UPDATE_REMOTE
    if [ "$UPDATE_REMOTE" = "y" ] || [ "$UPDATE_REMOTE" = "Y" ]; then
        git remote set-url origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
    fi
else
    git remote add origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
fi

# Set branch to main
git branch -M main

echo ""
echo "📤 Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Success! Your website is now on GitHub!"
    echo ""
    echo "🌐 Repository URL:"
    echo "   https://github.com/$GITHUB_USERNAME/$REPO_NAME"
    echo ""
    echo "📝 Next steps:"
    echo "   1. Add your images to the images/ folder"
    echo "   2. Commit and push: git add images/ && git commit -m 'Add images' && git push"
    echo "   3. Deploy to Vercel/Netlify for live website"
    echo ""
else
    echo ""
    echo "❌ Error pushing to GitHub. Please check:"
    echo "   1. Repository exists on GitHub"
    echo "   2. You have write access"
    echo "   3. Your GitHub credentials are correct"
    echo ""
fi

