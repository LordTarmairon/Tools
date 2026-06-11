# Apps para Papá 🛠️📅

Dos aplicaciones web sencillas, en español, hechas a medida:

- **📐 Dibujar Planos** (`Planos/Planos.html`) — planos de casas, instalación eléctrica (con simulación), red/datos, varias plantas y vista 3D.
- **📅 Mi Agenda** (`Agenda/Agenda.html`) — notas, eventos con horas, calendario (mes/semana/día), categorías y alarmas.
- **Inicio** (`Inicio.html`) — pantalla de entrada con acceso a ambas.

Son páginas web estáticas (HTML/CSS/JavaScript), **sin servidor**. Funcionan sin conexión una vez cargadas y se pueden **instalar** como app (PWA) en PC, Android e iPhone.

## Dónde se guardan los datos
Las notas y los planos se guardan **en el navegador de cada aparato** (almacenamiento local del dispositivo). Para pasarlos de un aparato a otro se usa **Exportar / Importar** (copia de seguridad) dentro de cada app. No se sube ningún dato a internet.

## Publicar en GitHub Pages
1. Sube esta carpeta a un repositorio de GitHub.
2. En el repo: **Settings → Pages → Source: Deploy from a branch → `main` / `/ (root)`** → Save.
3. A los 1–2 minutos estará disponible en:
   `https://TU-USUARIO.github.io/NOMBRE-DEL-REPO/Inicio.html`
4. En el móvil, abre ese enlace y usa "Instalar app" (Android) o "Añadir a pantalla de inicio" (iPhone).

## Seguridad
Este proyecto **no contiene contraseñas ni credenciales** y no debe contenerlas: al ser una web estática, cualquier secreto incluido en el código sería público. Si en el futuro se añade guardado en la nube, las credenciales deben vivir en un servidor/backend, nunca en estos archivos.
