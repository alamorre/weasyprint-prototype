FROM cgr.dev/chainguard-private/python:3.9-dev

# Install system dependencies required for WeasyPrint
USER root
RUN apk add --no-cache \
    cairo \
    cairo-dev \
    pango \
    pango-dev \
    gdk-pixbuf \
    gdk-pixbuf-dev \
    libffi \
    libffi-dev \
    shared-mime-info \
    ttf-dejavu

# Set working directory
WORKDIR /src

# Copy requirements file (if you have one)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Create output directory
RUN mkdir -p /output

# Set the command to run your application
CMD ["/src/app.py"]