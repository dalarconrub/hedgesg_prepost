# hedgesg_prepost

**Calcular Hedges' g a partir de medidas pre-post con grupo control en Stata**

Este paquete permite calcular el tamaño del efecto de cambio entre un grupo experimental y un grupo control (pre-post) en ensayos controlados, usando Hedges' g corregido por tamaño muestral, a partir de medias y desviaciones estándar.

Incluye:
- Función `hedgesg_prepost` en formato `.ado`
- Interfaz gráfica (`.dlg`)
- Ayuda integrada (`.sthlp`)

---

## 📦 Instalación

Desde la consola de Stata, ejecuta:

```stata
net install hedgesg_prepost, from("https://raw.githubusercontent.com/dalarconrub/hedgesg_prepost/main")
