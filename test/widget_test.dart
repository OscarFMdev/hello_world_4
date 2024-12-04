import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:camera/camera.dart';
import 'package:hello_world_4/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Simula la cámara (puedes usar cualquier objeto de CameraDescription para la prueba)
    const camera = CameraDescription(
      name: 'Test Camera',
      lensDirection: CameraLensDirection.back,
      sensorOrientation: 0,
    );

    // Construir la aplicación y pasar la cámara simulada.
    await tester.pumpWidget(MyApp(camera: camera));

    // Verificar que el contador comienza en 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tocar el icono '+' y disparar un frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verificar que el contador ha incrementado.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
