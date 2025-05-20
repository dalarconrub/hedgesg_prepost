# hedgesg_prepost

**Calcular Hedges' g a partir de medidas pre-post con grupo control en Stata**

Este paquete permite calcular el tamaño del efecto de cambio entre un grupo experimental y un grupo control (pre-post) en ensayos controlados, usando Hedges' g corregido por tamaño muestral, a partir de medias y desviaciones estándar.

Incluye:
- Función `hedgesg_prepost` en formato `.ado`
- Interfaz gráfica (`.dlg`)
- Ayuda integrada (`.sthlp`)

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

## ▶️ Uso

Una vez instalado, puedes usar el comando directamente:

```stata
hedgesg_prepost m_pre_exp m_post_exp m_pre_ctrl m_post_ctrl sd_pre_exp sd_pre_ctrl n_exp n_ctrl
```

O lanzar la interfaz gráfica con:

```stata
db hedgesg_prepost
```

---

## 📋 Variables requeridas

| Parámetro       | Descripción                                      |
|----------------|--------------------------------------------------|
| `m_pre_exp`     | Media pre en el grupo experimental               |
| `m_post_exp`    | Media post en el grupo experimental              |
| `m_pre_ctrl`    | Media pre en el grupo control                    |
| `m_post_ctrl`   | Media post en el grupo control                   |
| `sd_pre_exp`    | Desviación estándar pre en el grupo experimental |
| `sd_pre_ctrl`   | Desviación estándar pre en el grupo control      |
| `n_exp`         | Tamaño muestral del grupo experimental           |
| `n_ctrl`        | Tamaño muestral del grupo control                |

---

## 📊 Variables generadas

El comando genera automáticamente:

- `delta_exp`, `delta_ctrl`, `diff_delta`
- `sd_pooled_pre`, `cohen_d_change`, `J`
- `hedges_g`: el tamaño del efecto final
- `se_g`: error estándar del efecto

---

## 📚 Referencias

- Morris, S. B. (2008). Estimating effect sizes from pretest-posttest-control group designs. *Organizational Research Methods*, 11(2), 364–386.
- Botella, J., & Sánchez-Meca, J. (2015). *Meta-análisis en Ciencias Sociales y de la Salud*. Madrid: Síntesis.

---

## 👤 Autor

David Alarcón  
Universidad Pablo de Olavide  
[dalarmar@upo.es](mailto:dalarmar@upo.es)

---

## 🪪 Licencia

Este proyecto se distribuye bajo la licencia MIT.
