#!/bin/bash

# Function to create the regular project structure
create_default_structure() {
    mkdir -p "$1/css" "$1/img"
    echo "* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}" > "$1/css/styles.css"

    echo '<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/styles.css">
  <title>Document</title>
</head>
<body>
</body>
</html>' > "$1/index.html"
    echo "Project $1 structure created"
}

# Function to create the Hexlet project structure
create_hexlet_structure() {
    mkdir -p "$1/styles" "$1/assets" "$1/assets/fonts"
    echo "body {
  margin: 0;
}" > "$1/styles/app.css"

    echo '<!DOCTYPE html>
<html lang="ru">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/app.css">
    <title>Document</title>
  </head>
  <body>
    <main>
    </main>
  </body>
</html>' > "$1/index.html"
    echo "Hexlet project $1 structure created"
}

# Check if -h or --hexlet argument is present
if [[ $1 = "-h" ]] || [[ $1 = "--hexlet" ]]; then
    if [[ -z $2 ]]; then
        echo "No project name. Cannot create the structure"
        exit 1
    else
        create_hexlet_structure "$2"
    fi
elif [[ -z $1 ]]; then
    echo "No project name. Cannot create the structure"
    exit 1
else
    create_default_structure "$1"
fi
