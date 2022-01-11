# gsutil iam ch allUsers:legacyObjectReader gs://maba.org.au

# allUsers:storageObjectViewer

# Delete public folder and its contents
rm -r public/

# Regenerate our static files
hugo

# Move into our public directory
cd public/

# -m for multi-thread/process
# -r for recursively copy (child directories/files)

gsutil -m rsync -d -r . gs://maba.org.au

## Go back to 

cd ..