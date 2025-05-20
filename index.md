# hedgesg_prepost

**Calcular Hedges' g a partir de medidas pre-post con grupo control en Stata**

Este paquete permite calcular el tamaño del efecto de cambio entre un grupo experimental y un grupo control (pre-post) en ensayos controlados, usando Hedges' g corregido por tamaño muestral, a partir de medias y desviaciones estándar.

---

## 📦 Instalación

### 🔹 Opción recomendada (usando el gestor `{github}` de Haghish)

1. Instala el gestor de paquetes `{github}` si no lo tienes:

```stata
net install github, from("https://haghish.github.io/github/")
```

2. Luego instala este paquete directamente desde GitHub:

```stata
github install dalarconrub/hedgesg_prepost
```

> Esta opción gestiona actualizaciones automáticamente y es más robusta para distribución desde repositorios GitHub.

---

### 🔸 Opción alternativa (manual vía GitHub Pages)

Si prefieres instalar directamente desde GitHub Pages:

```stata
net install hedgesg_prepost, from("https://dalarconrub.github.io/hedgesg_prepost/")
```

> Asegúrate de que los archivos `stata.toc` y `.pkg` estén bien configurados en el repositorio.

---

## ▶️ Uso básico

```stata
hedgesg_prepost m_pre_exp m_post_exp m_pre_ctrl m_post_ctrl sd_pre_exp sd_pre_ctrl n_exp n_ctrl
```

```stata
db hedgesg_prepost
```

---
