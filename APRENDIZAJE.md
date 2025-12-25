# 📚 Resumen de Aprendizaje - Flutter Counter App

## 🎯 Conceptos Principales

### 1. **StatefulWidget vs StatelessWidget**

#### **StatefulWidget**
- Widget con estado mutable que puede cambiar durante su ciclo de vida
- Requiere dos clases: el widget y su estado
- Usado cuando el widget necesita actualizarse dinámicamente

```dart
class CounterFunctionsScrren extends StatefulWidget {
  const CounterFunctionsScrren({super.key});

  @override
  State<CounterFunctionsScrren> createState() => _CounterFunctionsScrrenState();
}

class _CounterFunctionsScrrenState extends State<CounterFunctionsScrren> {
  // Estado aquí
}
```

📖 [Documentación StatefulWidget](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html)

#### **StatelessWidget**
- Widget inmutable sin estado
- Se reconstruye solo cuando cambian sus parámetros
- Más eficiente para widgets que no cambian

```dart
class CustomButoon extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  
  const CustomButoon({
    super.key, 
    required this.icon,
    this.onPressed,
  });
  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
```

📖 [Documentación StatelessWidget](https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html)

---

### 2. **Gestión de Estado con `setState()`**

```dart
setState(() {
  counter++;
});
```

- **Propósito**: Notifica al framework que el estado interno ha cambiado
- **Efecto**: Dispara la reconstrucción del widget
- **Regla**: Solo se usa dentro de StatefulWidget

📖 [Documentación setState](https://api.flutter.dev/flutter/widgets/State/setState.html)

---

## 🧩 Widgets Utilizados

### **Scaffold**
Estructura básica de una pantalla Material Design

**Propiedades comunes:**
- `appBar`: AppBar - Barra superior de la aplicación
- `body`: Widget - Contenido principal de la pantalla
- `floatingActionButton`: Widget - Botón flotante (FAB)
- `drawer`: Widget - Menú lateral
- `bottomNavigationBar`: Widget - Barra de navegación inferior

**Ejemplo de uso:**
```dart
Scaffold(
  appBar: AppBar(title: Text('Counter Screen')),
  body: Center(child: Text('Contenido')),
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
  ),
)
```

📖 [Documentación Scaffold](https://api.flutter.dev/flutter/material/Scaffold-class.html)

---

### **AppBar**
Barra de aplicación superior según Material Design

**Propiedades comunes:**
- `title`: Widget - Título de la barra
- `centerTitle`: bool - Centrar el título
- `actions`: List<Widget> - Widgets en el lado derecho
- `leading`: Widget - Widget en el lado izquierdo
- `backgroundColor`: Color - Color de fondo
- `elevation`: double - Sombra de la barra

**Ejemplo de uso:**
```dart
AppBar(
  title: const Text('Counter Screen'),
  centerTitle: true,
  actions: [
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.refresh_rounded),
    ),
  ],
)
```

📖 [Documentación AppBar](https://api.flutter.dev/flutter/material/AppBar-class.html)

---

### **Column**
Layout que organiza widgets verticalmente

**Propiedades comunes:**
- `mainAxisAlignment`: MainAxisAlignment - Alineación en eje principal (vertical)
- `crossAxisAlignment`: CrossAxisAlignment - Alineación en eje transversal (horizontal)
- `children`: List<Widget> - Lista de widgets hijos
- `mainAxisSize`: MainAxisSize - Tamaño del eje principal

**Valores de MainAxisAlignment:**
- `MainAxisAlignment.start` - Inicio
- `MainAxisAlignment.center` - Centro
- `MainAxisAlignment.end` - Final
- `MainAxisAlignment.spaceBetween` - Espacio entre elementos
- `MainAxisAlignment.spaceAround` - Espacio alrededor de elementos
- `MainAxisAlignment.spaceEvenly` - Espacio uniforme

**Ejemplo de uso:**
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('$counter'),
    Text('Clicks'),
  ],
)
```

📖 [Documentación Column](https://api.flutter.dev/flutter/widgets/Column-class.html)

---

### **Row**
Layout que organiza widgets horizontalmente (similar a Column pero horizontal)

**Propiedades comunes:**
- `mainAxisAlignment`: MainAxisAlignment - Alineación horizontal
- `crossAxisAlignment`: CrossAxisAlignment - Alineación vertical
- `children`: List<Widget> - Lista de widgets hijos

📖 [Documentación Row](https://api.flutter.dev/flutter/widgets/Row-class.html)

---

### **FloatingActionButton (FAB)**
Botón flotante circular según Material Design

**Propiedades comunes:**
- `onPressed`: VoidCallback? - Función al presionar
- `child`: Widget - Widget interno (generalmente Icon)
- `shape`: ShapeBorder - Forma del botón
- `backgroundColor`: Color - Color de fondo
- `elevation`: double - Elevación/sombra
- `mini`: bool - Versión pequeña del FAB

**Ejemplo de uso:**
```dart
FloatingActionButton(
  shape: StadiumBorder(),
  onPressed: () {
    setState(() {
      counter++;
    });
  },
  child: Icon(Icons.plus_one),
)
```

📖 [Documentación FloatingActionButton](https://api.flutter.dev/flutter/material/FloatingActionButton-class.html)

---

### **Text**
Widget para mostrar texto

**Propiedades comunes:**
- `style`: TextStyle - Estilo del texto
- `textAlign`: TextAlign - Alineación del texto
- `overflow`: TextOverflow - Comportamiento cuando el texto es muy largo
- `maxLines`: int - Máximo de líneas

**Ejemplo de uso:**
```dart
Text(
  '$counter',
  style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
)
```

📖 [Documentación Text](https://api.flutter.dev/flutter/widgets/Text-class.html)

---

### **Icon**
Widget para mostrar iconos de Material Design

**Propiedades comunes:**
- `size`: double - Tamaño del icono
- `color`: Color - Color del icono

**Iconos comunes:**
- `Icons.plus_one` - Más uno
- `Icons.refresh_rounded` - Refrescar redondeado
- `Icons.refresh_outlined` - Refrescar outlined
- `Icons.remove` - Menos
- `Icons.add` - Más

📖 [Documentación Icon](https://api.flutter.dev/flutter/widgets/Icon-class.html)  
📖 [Galería de Iconos Material](https://fonts.google.com/icons)

---

### **IconButton**
Botón con icono

**Propiedades comunes:**
- `onPressed`: VoidCallback? - Función al presionar
- `icon`: Widget - Widget Icon
- `color`: Color - Color del icono
- `iconSize`: double - Tamaño del icono

**Ejemplo de uso:**
```dart
IconButton(
  onPressed: () {
    setState(() {
      counter = 0;
    });
  },
  icon: Icon(Icons.refresh_rounded),
)
```

📖 [Documentación IconButton](https://api.flutter.dev/flutter/material/IconButton-class.html)

---

### **Center**
Centra su hijo dentro del espacio disponible

**Propiedades comunes:**
- `child`: Widget - Widget hijo a centrar

📖 [Documentación Center](https://api.flutter.dev/flutter/widgets/Center-class.html)

---

### **SizedBox**
Caja con tamaño específico, útil para espaciado

**Propiedades comunes:**
- `height`: double - Altura
- `width`: double - Ancho
- `child`: Widget - Widget hijo

**Ejemplo de uso:**
```dart
SizedBox(height: 10) // Espaciador vertical de 10 píxeles
```

📖 [Documentación SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html)

---

## 🎨 Estilos y Formas

### **TextStyle**
Define el estilo del texto

**Propiedades comunes:**
- `fontSize`: double - Tamaño de la fuente
- `fontWeight`: FontWeight - Peso de la fuente
- `color`: Color - Color del texto
- `fontFamily`: String - Familia de fuente
- `letterSpacing`: double - Espaciado entre letras
- `height`: double - Altura de línea

**Valores de FontWeight:**
- `FontWeight.w100` - Thin
- `FontWeight.w300` - Light
- `FontWeight.w400` - Normal/Regular
- `FontWeight.w500` - Medium
- `FontWeight.w700` - Bold
- `FontWeight.w900` - Black

**Ejemplo de uso:**
```dart
TextStyle(fontSize: 160, fontWeight: FontWeight.w100)
```

📖 [Documentación TextStyle](https://api.flutter.dev/flutter/painting/TextStyle-class.html)

---

### **ShapeBorder**
Define la forma de un widget

**Formas comunes:**
- `StadiumBorder()` - Forma de estadio (bordes completamente redondeados)
- `CircleBorder()` - Forma circular
- `RoundedRectangleBorder()` - Rectángulo con bordes redondeados
- `BeveledRectangleBorder()` - Rectángulo con bordes biselados

**Ejemplo de uso:**
```dart
FloatingActionButton(
  shape: StadiumBorder(),
  child: Icon(Icons.add),
)
```

📖 [Documentación ShapeBorder](https://api.flutter.dev/flutter/painting/ShapeBorder-class.html)

---

## 💾 Tipos de Datos en Dart

### Tipos Primitivos

```dart
int counter = 0;           // Enteros
double price = 9.99;       // Números decimales
String text = '';          // Cadenas de texto
bool isActive = true;      // Booleanos
```

### Tipos Especiales

```dart
VoidCallback? onPressed;   // Función sin parámetros ni retorno (puede ser null)
IconData icon;             // Tipo para iconos
```

### Operadores Importantes

- `?` - Hace que un tipo sea nullable (puede ser null)
- `!` - Afirma que un valor no es null
- `??` - Operador de coalescencia nula (valor por defecto si es null)
- `?.` - Acceso seguro a propiedades (null-aware)

📖 [Documentación Dart Types](https://dart.dev/language/built-in-types)

---

## 🔧 Constructores y Parámetros

### Constructor con Parámetros Nombrados

```dart
const CustomButoon({
  super.key,              // Pasa el key al constructor padre
  required this.icon,     // Parámetro obligatorio
  this.onPressed,         // Parámetro opcional (nullable)
});
```

**Palabras clave:**
- `required` - Parámetro obligatorio
- `super.key` - Pasa el parámetro al constructor de la clase padre
- `const` - Constructor constante (para optimización)

📖 [Documentación Constructores](https://dart.dev/language/constructors)

---

## 🔄 Callbacks y Funciones

### VoidCallback

Tipo de función que no recibe parámetros ni retorna valores.

```dart
final VoidCallback? onPressed;

// Uso:
onPressed: () {
  setState(() {
    counter++;
  });
}
```

📖 [Documentación Callbacks](https://dart.dev/language/functions)

---

## 📐 Operadores Útiles

### Interpolación de Strings

```dart
'$counter'                           // Interpolación simple
'Click${counter == 1 ? '' : 's'}'    // Interpolación con expresión
```

### Operador Ternario

```dart
counter == 1 ? '' : 's'    // Si counter es 1, retorna '', sino retorna 's'
```

📖 [Documentación Operadores Dart](https://dart.dev/language/operators)

---

## 📁 Estructura del Proyecto

```
lib/
├── main.dart
└── presentation/
    └── screens/
        └── counter_functions_screen.dart
```

### **Archivo: `counter_functions_screen.dart`**

**Contiene:**
- `CounterFunctionsScrren` - StatefulWidget principal
- `_CounterFunctionsScrrenState` - Estado del contador
- `CustomButoon` - Widget personalizado reutilizable (StatelessWidget)

**Características:**
- Gestión de estado con `setState()`
- Múltiples FloatingActionButtons
- AppBar con actions
- Widget personalizado extraído

---

## ⌨️ Atajos de Teclado - IntelliJ IDEA / Android Studio

| Atajo | Función | Equivalente VS Code |
|-------|---------|---------------------|
| `Cmd + Espacio` | Autocompletado / Ver propiedades | `Ctrl + Espacio` |
| `Shift + F6` | Renombrar/Refactorizar todas las referencias | `F2` |
| `Cmd + R` | Buscar y reemplazar (archivo actual) | `Cmd + H` |
| `Cmd + Shift + R` | Buscar y reemplazar (proyecto completo) | `Cmd + Shift + H` |
| `Cmd + Option + W` | Extraer widget | `Ctrl + .` → Extract Widget |
| `Cmd + Option + M` | Extraer método | `Ctrl + .` → Extract Method |
| `Cmd + Option + L` | Formatear código | `Shift + Alt + F` |
| `Cmd + /` | Comentar/Descomentar línea | `Cmd + /` |
| `Cmd + P` | Información de parámetros | `Cmd + Shift + Space` |
| `Cmd + B` | Ir a definición | `F12` |
| `Cmd + Click` | Ir a definición | `Cmd + Click` |

---

## 🐛 Errores Comunes y Soluciones

### 1. **"Invalid constant value"**

**Causa:** Usar `const` en un widget que contiene callbacks o valores dinámicos.

**Ejemplo de error:**
```dart
const Scaffold(  // ❌ Error
  floatingActionButton: FloatingActionButton(
    onPressed: () {},  // Callback dinámico
  ),
)
```

**Solución:**
```dart
Scaffold(  // ✅ Correcto
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
  ),
)
```

---

### 2. **Error de tipo: "text text = ''"**

**Causa:** En Dart los tipos primitivos comienzan con mayúscula.

**Error:**
```dart
text text = '';  // ❌ Error
```

**Solución:**
```dart
String text = '';  // ✅ Correcto
```

---

### 3. **"Undefined name 'CounterScrren'"**

**Causa:** Error tipográfico en el nombre de la clase.

**Solución:** Usar `Shift + F6` para renombrar todas las referencias automáticamente.

---

## 🎓 Buenas Prácticas Aprendidas

### 1. **Extracción de Widgets**
Cuando un widget se vuelve complejo o reutilizable, extraerlo a un widget separado:

```dart
// Antes: Todo en un solo lugar
FloatingActionButton(
  onPressed: () {},
  child: Icon(Icons.refresh_outlined),
)

// Después: Widget reutilizable
CustomButoon(
  icon: Icons.refresh_outlined,
  onPressed: () {},
)
```

### 2. **Uso de const**
Usar `const` cuando sea posible para optimización:

```dart
const Text('Counter Screen')  // Widget que nunca cambia
const SizedBox(height: 10)    // Espaciador fijo
```

### 3. **Nombres Descriptivos**
Usar nombres claros y descriptivos para variables y widgets:

```dart
int counter = 0;              // ✅ Claro
CustomButoon                  // ✅ Descriptivo
```

### 4. **Parámetros Nombrados**
Preferir parámetros nombrados en constructores para mayor claridad:

```dart
CustomButoon({
  required this.icon,
  this.onPressed,
})

// Uso claro:
CustomButoon(icon: Icons.add, onPressed: () {})
```

---

## 🔌 Extensiones Recomendadas para IntelliJ IDEA

### Esenciales para Flutter/Dart:

1. **Flutter** (oficial)
   - Soporte completo para Flutter
   - Widgets inspector
   - Hot reload

2. **Dart** (oficial)
   - Análisis de código Dart
   - Formateo automático
   - Refactorización

3. **Flutter Intl**
   - Internacionalización
   - Generación de traducciones

4. **Flutter Enhancement Suite**
   - Snippets útiles
   - Atajos adicionales

5. **Rainbow Brackets**
   - Colorea los paréntesis/llaves
   - Facilita la lectura del código anidado

6. **Dart Data Class Generator**
   - Genera modelos de datos automáticamente
   - Incluye copyWith, toJson, fromJson

---

## 📖 Recursos de Documentación

### Documentación Oficial

- **Flutter Documentation**: https://docs.flutter.dev/
- **Dart Language Tour**: https://dart.dev/language
- **Flutter Widget Catalog**: https://docs.flutter.dev/ui/widgets
- **Material Design 3**: https://m3.material.io/
- **Flutter API Reference**: https://api.flutter.dev/

### Recursos de Aprendizaje

- **Flutter Cookbook**: https://docs.flutter.dev/cookbook
- **Flutter Codelabs**: https://docs.flutter.dev/codelabs
- **Dart Pad** (editor online): https://dartpad.dev/
- **Flutter Gallery** (ejemplos): https://gallery.flutter.dev/

### Comunidad

- **Flutter Community**: https://flutter.dev/community
- **Stack Overflow Flutter**: https://stackoverflow.com/questions/tagged/flutter
- **Flutter Discord**: https://discord.gg/flutter

---

## 📝 Resumen del Proyecto Counter App

### Funcionalidades Implementadas:

✅ Contador que incrementa con botón FAB  
✅ Botón de reset en AppBar  
✅ Botón de reset en FAB secundario  
✅ Texto dinámico (Click/Clicks) según el valor  
✅ Widget personalizado reutilizable (CustomButoon)  
✅ Gestión de estado con setState()  

### Conceptos Técnicos Aplicados:

- StatefulWidget y StatelessWidget
- Gestión de estado mutable
- Extracción y reutilización de widgets
- Parámetros nombrados y callbacks
- Interpolación de strings
- Operadores ternarios
- Layouts con Column
- Material Design con Scaffold y AppBar

---

**Proyecto**: Counter App con funciones personalizadas  
**Framework**: Flutter  
**Lenguaje**: Dart  
**Fecha**: 24 de Diciembre, 2025

---

## 🚀 Próximos Pasos Sugeridos

1. Agregar botón para decrementar el contador
2. Implementar límites (mínimo/máximo) al contador
3. Agregar animaciones a los cambios de valor
4. Persistir el valor del contador (SharedPreferences)
5. Agregar temas claro/oscuro
6. Implementar navegación a otras pantallas
7. Usar state management más avanzado (Provider, Riverpod, Bloc)

---

*Este documento fue generado como referencia de aprendizaje del proyecto Counter App en Flutter.*

