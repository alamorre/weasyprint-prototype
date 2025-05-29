# Weasyprint + Chainguard (prototype)

This is an example repo to get weasypring working with a Chainguard image to convert HTML to PDFs.


### Getting started

1. Clone the repo

```
git clone ...
cd weasyprint-prototype
```

2. Run a docker build

```
docker build -t weasyprint-test .
```

# 3 Run and watch the tests pass!

```
adamlamorre@Adams-MacBook-Pro pov % docker run --rm weasyprint-test  
🐍 WeasyPrint Test Application
==================================================
Python version: 3.9.22 (tags/v3.9.22-dirty:05c5549, Apr 28 2025, 22:22:59) 
[GCC 14.2.0]
Working directory: /src
Output directory exists: True
User: unknown
==================================================
🧪 Starting WeasyPrint tests...
✅ WeasyPrint imported successfully (version: 61.2)
✅ cairocffi available (version: 1.17.2)
✅ pyphen available for hyphenation
✅ tinycss2 available for CSS parsing
✅ Simple HTML content generated
✅ Simple WeasyPrint HTML object created
🔍 Attempting to generate PDF...
✅ Simple PDF generated (5431 bytes)
✅ Complex HTML content generated
✅ Complex WeasyPrint HTML object created
✅ PDF generated in memory (19136 bytes)
✅ PDF written to file: /output/weasyprint_test.pdf (19141 bytes)
✅ External CSS test passed (2880 bytes)

🎉 All WeasyPrint tests passed successfully!
📄 Test PDF saved as: /output/weasyprint_test.pdf

✨ WeasyPrint is ready to use in this container!
```

