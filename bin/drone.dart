class DroneEntrega {
  String modelo;
  double capacidadeCargaKg;
  int autonomiaMinutos;
  bool temCamera4K;
  double velocidadeMaxKmH;

  DroneEntrega(
    this.modelo,
    this.capacidadeCargaKg, {
    required int autonomiaMinutos,
    this.temCamera4K = false,
    this.velocidadeMaxKmH = 50.0,
  }) : autonomiaMinutos = autonomiaMinutos {
    print(
      "Montando o drone modelo '$modelo' "
      "com capacidade de $capacidadeCargaKg kg..."
    );

    if (autonomiaMinutos <= 0) {
      print(
        "Atenção: Autonomia inválida! "
        "Definindo para 30 minutos."
      );

      this.autonomiaMinutos = 30;
    }
  }
}

void main() {
  // Drone 1: todos os parâmetros informados
  DroneEntrega drone1 = DroneEntrega(
    "DJI Delivery X",
    10.0,
    autonomiaMinutos: 60,
    temCamera4K: true,
    velocidadeMaxKmH: 80.0,
  );

  // Drone 2: parâmetros opcionais omitidos
  DroneEntrega drone2 = DroneEntrega(
    "Drone Express",
    5.0,
    autonomiaMinutos: 45,
  );

  // Drone 3: autonomia inválida
  DroneEntrega drone3 = DroneEntrega(
    "Drone Cargo",
    15.0,
    autonomiaMinutos: 0,
    temCamera4K: true,
  );

  // Exibindo os atributos dos drones
  print("\nDrone 1");
  print("Modelo: ${drone1.modelo}");
  print("Capacidade: ${drone1.capacidadeCargaKg} kg");
  print("Autonomia: ${drone1.autonomiaMinutos} minutos");
  print("Câmera 4K: ${drone1.temCamera4K}");
  print("Velocidade máxima: ${drone1.velocidadeMaxKmH} km/h");

  print("\nDrone 2");
  print("Modelo: ${drone2.modelo}");
  print("Capacidade: ${drone2.capacidadeCargaKg} kg");
  print("Autonomia: ${drone2.autonomiaMinutos} minutos");
  print("Câmera 4K: ${drone2.temCamera4K}");
  print("Velocidade máxima: ${drone2.velocidadeMaxKmH} km/h");

  print("\nDrone 3");
  print("Modelo: ${drone3.modelo}");
  print("Capacidade: ${drone3.capacidadeCargaKg} kg");
  print("Autonomia: ${drone3.autonomiaMinutos} minutos");
  print("Câmera 4K: ${drone3.temCamera4K}");
  print("Velocidade máxima: ${drone3.velocidadeMaxKmH} km/h");
}