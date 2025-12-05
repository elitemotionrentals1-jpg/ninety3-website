# 📸 How to Add Images to This Folder

## Method 1: Drag & Drop (Easiest!)

1. **Open Finder** on your Mac
2. **Navigate to** `/Users/djnino/ninety3-website/images/`
   - Or open the folder from your code editor
3. **Find your image files** on your computer
4. **Drag and drop** your images directly into this `images` folder
5. **Make sure the file names match exactly:**
   - `logo.png` (or `logo.jpg`)
   - `person-green-tracksuit.jpg`
   - `black-sentizero-tracksuit.jpg`
   - `black-sentizero-hoodie.jpg`
   - `black-sentizero-pants.jpg`

## Method 2: Using Finder (Mac)

1. Open **Finder**
2. Press `Cmd + Shift + G` (Go to Folder)
3. Type: `/Users/djnino/ninety3-website/images/`
4. Press Enter
5. Copy your images into this folder
6. Rename them to match the required names above

## Method 3: Using Terminal (Command Line)

```bash
# Navigate to the images folder
cd "/Users/djnino/ninety3-website/images/"

# Copy your images (replace with your actual file paths)
cp ~/Downloads/your-logo.png ./logo.png
cp ~/Downloads/your-photo.jpg ./person-green-tracksuit.jpg
cp ~/Downloads/your-tracksuit.jpg ./black-sentizero-tracksuit.jpg
cp ~/Downloads/your-hoodie.jpg ./black-sentizero-hoodie.jpg
cp ~/Downloads/your-pants.jpg ./black-sentizero-pants.jpg
```

## Method 4: Using Your Code Editor (VS Code/Cursor)

1. **Right-click** on the `images` folder in the file explorer
2. Select **"Reveal in Finder"** (or "Open in Finder")
3. **Drag and drop** your images into the opened folder
4. The files will appear in your editor automatically!

## Required Images Checklist

- [ ] `logo.png` - Your Ninety3 cursive script logo (white on transparent/black)
- [ ] `person-green-tracksuit.jpg` - Person wearing dark green tracksuit
- [ ] `black-sentizero-tracksuit.jpg` - Black SENTIZERO tracksuit (full set)
- [ ] `black-sentizero-hoodie.jpg` - Black SENTIZERO hoodie only
- [ ] `black-sentizero-pants.jpg` - Black SENTIZERO sweatpants only

## After Adding Images

Once you've added your images, commit and push them to GitHub:

```bash
cd "/Users/djnino/ninety3-website"
git add images/
git commit -m "Add brand images"
git push
```

## 💡 Tips

- **File names are case-sensitive!** Make sure they match exactly
- **Accepted formats:** `.png`, `.jpg`, `.jpeg`
- **File sizes:** The website will resize automatically, but larger images (1000px+) work best
- **Naming:** If your files have different names, rename them to match the required names above

---

**Need help?** Just drag your images into this folder and rename them! ✨

