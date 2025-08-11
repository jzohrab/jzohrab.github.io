#!/usr/bin/env bash
set -e

# Create directories if missing
mkdir -p categories tags

# Clear old generated files
rm -f categories/*.md tags/*.md

# Function to make a markdown page
make_page() {
    local folder=$1
    local name=$2
    local key=$3  # category or tag
    local slug
    slug=$(echo "$name" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')

    cat > "${folder}/${slug}.md" <<EOF
---
layout: default
${key}: ${name}
permalink: /${folder}/${slug}/
---
{% include ${key}.html %}
EOF
}

# Extract all categories and tags from markdown posts (safe even if none exist)
categories=$(grep -h "^categories:" _posts/*.md 2>/dev/null || true | \
  cut -d: -f2- | tr -d '[]' | tr ',' '\n' | \
  sed 's/^[ \t]*//;s/[ \t]*$//' | sort -u)

tags=$(grep -h "^tags:" _posts/*.md 2>/dev/null || true | \
  cut -d: -f2- | tr -d '[]' | tr ',' '\n' | \
  sed 's/^[ \t]*//;s/[ \t]*$//' | sort -u)

# Generate category pages
if [ -n "$categories" ]; then
    echo "Generating category pages..."
    for cat in $categories; do
        make_page "categories" "$cat" "category"
    done
else
    echo "No categories found — skipping category archive generation."
fi

# Generate tag pages
if [ -n "$tags" ]; then
    echo "Generating tag pages..."
    for tag in $tags; do
        make_page "tags" "$tag" "tag"
    done
else
    echo "No tags found — skipping tag archive generation."
fi

# Cleanup.  The script was making a "categories:.md" file.
rm -f categories/categories:.md tags/tags:.md

echo "Archive generation complete."
