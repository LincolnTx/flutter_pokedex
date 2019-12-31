import 'package:flutter_test/flutter_test.dart';

import 'package:pokedex/app/shared/gateway/pokeapi_gateway_service.dart';

void main() {
  PokeapiGatewayService service;

  setUp(() {
    service = PokeapiGatewayService();
  });

  group('PokeapiGatewayService Test', () {
    test("First Test", () {
      expect(service, isInstanceOf<PokeapiGatewayService>());
    });
  });
}
