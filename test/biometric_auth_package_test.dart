import 'package:flutter_test/flutter_test.dart';

import 'package:biometric_auth_package/biometric_auth_package.dart';
import 'package:local_auth/local_auth.dart';

void main() {
  test('Authentication Test', () async {
    final biometricAuth = BiometricAuth();

    // Perform authentication
    bool authenticated = await biometricAuth.authenticate();

    // Verify the result
    expect(authenticated, isA<bool>());
  });

  test('Available Biometrics Test', () async {
    final biometricAuth = BiometricAuth();

    // Get available biometrics
    List<BiometricType> availableBiometrics =
        await biometricAuth.getAvailableBiometrics();

    // Verify the result
    expect(availableBiometrics, isA<List<BiometricType>>());
  });
}
