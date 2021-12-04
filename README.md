### Настройка системы после установки:
[Ubuntu 20.04 настройка после установки](https://mertviyprorok.com/articles/operating-system/settings/ubuntu-20-04-nastrojka-posle-ustanovki/#install-qbittorrent)

#### [Настройка bash prompt](https://pingvinus.ru/note/bash-promt)

По умолчанию:
```
echo $PS1
# \[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$

```

Самая простая оптимизация (убираем hostname `\h`, к-й при работе в своей системе не нужен, и, учитывая, что почти всегда работаю под одним (своим) именем, имеет смысл убрать и username `\u`):
```
sudo nano ~/.bashrc
export PS1="\[\e]0; \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\[\033[00m\]\[\033[01;34m\]\w\[\033[00m\]\$ "
source ~/.bashrc
```
Надо бы еще с цветами поэкспреминтировать.


#### [Изменить раскладку клавиатуры](https://itectec.com/ubuntu/ubuntu-18-04-ctrlshift-to-change-language/)
Я привык к тому, чтобы использовать Ctrl+Shift, но в Linux (по крайней мере Ubuntu)
при этом происходит конфликт с использованием других комбинаций клавиш, в к-х применяется это же сочетание, например перестает работать Ctrl+Shift+Left / Right (выделить слово). 
Точно так же, если выбрать для переключения раскладки просто Alt, то перестает работать Alt+Tab.
Решается ли это в принципе? Нужно разобраться


#### [Добавить Visual Studio Code в контекстное меню](https://askubuntu.com/questions/1049111/add-open-with-vscode-to-context-menu-in-ubuntu)
```
wget -qO- https://raw.githubusercontent.com/cra0zy/code-nautilus/master/install.sh | bash
```

#### [vls always on top problem](https://askubuntu.com/a/1376204)
