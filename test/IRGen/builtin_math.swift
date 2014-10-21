// RUN: %target-swift-frontend -emit-ir %s | FileCheck %s

import Darwin

// Make sure we use an intrinsic for functions such as sqrt
// CHECK: call float @llvm.sqrt.f32
public func test1(f : Float) -> Float {
  return sqrt(f)
}

// CHECK: call double @llvm.sqrt.f64
public func test2(f : Double) -> Double {
  return _sqrt(f)
}
