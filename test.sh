#!/usr/bin/env bash
rm -rf ./Pods/build
cd Example/Pods
xcodebuild -scheme ECGMessageBox -configuration Debug -destination 'platform=iOS Simulator,OS=11.4,name=iPhone X' clean test
