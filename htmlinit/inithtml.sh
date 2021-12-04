#!/usr/bin/bash

# Закинуть файл в удобный каталог, указанный в PATH,
# например ~/local/bin чтобы запускать из произвольной директории
# Можно создать ссылки на этот файлы с другими похожими или
# подходящими именами (напр. htmlinit), если пользователь
# не запоминает

if [[ $# != 1 ]]
then
  echo "Usage: $0 ProjectName"
  exit 1
fi

projectName=$1

echo "Creating project directory $projectName"
mkdir -p $projectName/css $projectName/img

cd $projectName
touch index.html
echo '<!DOCTYPE html>' >> index.html
echo '<html lang="en">' >> index.html
echo '<head>' >> index.html
echo '  <meta charset="UTF-8">' >> index.html
echo '  <meta http-equiv="X-UA-Compatible" content="IE=edge">' >> index.html
echo '  <meta name="viewport" content="width=device-width, initial-scale=1.0">' >> index.html
echo '  <link rel="stylesheet" href="css/styles.css">' >> index.html
echo '  <title>Document</title>' >> index.html
echo '</head>' >> index.html
echo '<body>' >> index.html
echo '    ' >> index.html
echo '</body>' >> index.html
echo '</html>' >> index.html

cd css
touch styles.css
echo '* {' >> styles.css
echo '  margin: 0;' >> styles.css
echo '  padding: 0;' >> styles.css
echo '  box-sizing: border-box;' >> styles.css
echo '}' >> styles.css
