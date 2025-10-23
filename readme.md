<center><h1>Comandos Git</h1></center>

# Comandos:
## `ls`
![img](./images/ls-command.png)

Verl contenido dentro de la ubicacion de la carpeta.

## `cd`
![img](./images/cd-command.png)

Entrar a una carpeta dentro de la ubicacion dode nos encontremos.

## `cd ..`
![img](./images/cd%20..-command.png)

Comadno para salir una carpeta antes de donde nos encontramos.

## `pwd`
![img](./images/pwd-command.png)

Comando para saber en que carpeta nos encontramos.

## `mkdir`
![img](./images/mkdir-command.png)

Comando para crear una carpeta donde nos encontremos.
![img](./images/ubication-mkdir.png)

## `code .`
![img](./images/code-command.png)

Comando para abrir la carpeta en Visual Studio Code.
![img](./images/vsc.png)

## `git config --global user.name "...`
![img](./images/git-config-global.png)

Comando para configurar de manera global el usuario.

Esto nos crea un archivo `.gitconfig` dentro de la ruta del nombre de usuario del computador

![img](./images/git-config-1.png)

![img](./images/git-config-2.png)

## `git config --global user.email "..."`
![img](./images/git-config-global-2.png)

Comando para configurar de manera global el correo.

![img](./images/git-config-3.png)

## `New-Item (touch)`
![img](./images/touch-command.png)

Comando para crear un archivo dentro de la carpeta

![img](./images/vsc-touch.png)

## `git init`
![img](./images/git-init-command.png)

Comando para iniciar git en unestro carptea raiz donde estemos trabajando.
![img](./images/ubication-.git.png)

Dentro de nuestra carpeta raiz se crea una carpeta oculta llamada `.git` donde alli se encuentra informacion de nuestro proyecto y tambien de git.

Aqui en este punto ya hemos creado un repositorio en la carpeta raiz. Y nos encontramos dentro de una rama llamada `master`, esta es la rama principal de nuestro proyecto.

## `git branch -m main`
![img](./images/git-branch-m-command.png)

Comando para renombrar una rama.

## `git status`
![img](./images/git-status-command.png)

Comando para ver el estado del repositorio. Nos da informacion del contenido dentro de la carpeta y posteriormente nos dice que los archivos que se encuentran alli no estan guardados.

## `git add [nombre archivo]`
![img](./images/git-add-nombre-archivo.png)

`git add hellogit.py`, comando para empezar a prepara los archivos, en este caso le dijimos que prepare el archivo `hellopython.py`.

Despues de hacer un `git status`, nos muestra que el archivo se encuentra preparado.

## `git commit -m "nombre commit"`
Comando para realizar commit. Este comando toma lo que esta preparado del `git add` y lo sube al repositorios de manera permanente, y cada vez que se realice un cambio lo toma y lo sube.

![img](./images/git-commit-1.png)

Al realizar un `git status` vemos que ya no nos dice que tenemos que crear el commit como en imagenes anteriores, porque ya hemos creado el commit.

## `git log`
![img](./images/git-log-command.png)

Comando para verificar si realmente el commit sea creado. Alli vemos un identificador unico para el commit, vemos el autor (usuario) y el correo, y esto nos dice que el autor (JuanP) ha creado un commit.

Hemos creado un segundo archivo dentro de la carpeta y volvimos a realizar los mismos pasos anteriores, para preparar el archivo y posteriormente subirlo al repositorio.

![img](./images/git-commit-2.png)

He empezado a editar los dos archivps y vemos que nos dice que aunque no son arcivos nuevos, si nos dice que hemos hecho modificaciones en los archivos

![img](./images/editando.png)

![img](./images/editando-2.png)

## `git checkout [nombre archivo]`
![img](./images/git-ckeckout-command.png)

![img](./images/git-checkout.png)

Comando para movernos entre ramas.

## `git log --graph`
Comando para ver los commit creados pero de una manera mejor, en ramas.

![img](./images/git-log-graph.png)

## `git log --graph --pretty=oneline`
Comando es igaul al `log` o al `log --graph`, solo se ven los commits en una sola linea.

![img](./images/git-log-graph-pretty-oneline.png)

## `git log --graph --decorate --oneline`
Este comando realiza lo mismo que los anteriores, simplemente que mas corto.

![img](./images/git-log-decorate.png)

## `git config --global alias.tree "git log --graph --decorate --all --oneline"`
Este comando nos sirve para cuando no nos sabemos todos estos comandos de memoria, entonces los podemos guardar en nombre (alias) y despues ejecutar facilmente.

![img](./images/git-config-alias.png)

![img](./images/git-global-alias.png)

![img](./images/git-tree.png)

## `New-Item .gitignore`
![img](./images/touch-.gitignore.png)

Aqui creamos un archivo llamado `.gitignore` para aqui dentro de este archivo decirle que los archivos que no queremos guardar en el repositorio.

![img](./images/.gitignore.png)

## `git clone`
Copia un repositorio remoto a tu máquina local para trabajar y unirte a un proyecto existente.

![img](./images/git-clone-command.png)

## `git remote add origin`

Permite subir el proyecto a un repositorio que se encuentra vacío en GitHub.

![img](./images/git-remote-command.png)

## `git diff`

Comando para ver los cambios que hemos hechos en los archivos. Nos muestra queantes teniamos algo y ahora tenemos algo diferente.

![img](./images/git-diff-command.png)

## `git reset --hard [identificador del commit]`

Permite volver a una rama en especifico.

![img](./images/git-reset-hard.png)

![img](./images/git-log-2.png)

## `git reflog`

Permite ver un historial de commit creados

![img](./images/git-reflog-command.png)

## `git tag`

Se utiliza para identificar una versión del proyecto que se ha liberado, para saber que he tenido en encuenta para la cracion de la version.

![img](./images/git-tag-command.png)

## `git brach nombre-rama`

Permite crear nuevas ramas

![img](./images/git-brach-login.png)

## `git switch nueva-rama`

Permite ingresar a esta nueva rama y cambiar en la que estabamos.

## `git merge`

Permite unir ramas

![img](./images/git-merge-command.png)

![img](./images/git-merge-2.png)

* Nota: para tener en cuenta cuando trabajemos en equipo tener encuenta a que archivos tenemos acceso y no tener conflictos.

![img](./images/git-conflict.png)

![img](./images/git-conflict.png)

## `git remote -v`

Comando para ver los repositorios remotos que tenemos creados.

![img](./images/git-remote-v-command.png)

## `git pull origin main`

Descarga cambios del remoto y los fusiona, para mantener tu copia local actualizada antes de empezar a trabajar.