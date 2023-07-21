#!/bin/bash
set -e

flutter clean
flutter pub upgrade
# https://flutter.dev/docs/development/data-and-backend/json#generating-code-continuously
dart run build_runner watch --delete-conflicting-outputs