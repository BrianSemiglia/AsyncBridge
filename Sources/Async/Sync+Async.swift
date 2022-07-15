//  Created by Brian Semiglia on 7/14/22.

import Foundation

func >>> <A,B,C,D,E,F,G> (
    lhs: (A,B,C,D,E,F) -> G,
    rhs: (A,B,C,D,E,F)
) async -> G {
    await withCheckedContinuation { continuation in
        continuation.resume(with: .success(lhs(rhs.0, rhs.1, rhs.2, rhs.3, rhs.4, rhs.5)))
    }
}

func >>> <A,B,C,D,E,F> (
    lhs: (A,B,C,D,E) -> F,
    rhs: (A,B,C,D,E)
) async -> F {
    await withCheckedContinuation { continuation in
        continuation.resume(with: .success(lhs(rhs.0, rhs.1, rhs.2, rhs.3, rhs.4)))
    }
}

func >>> <A,B,C,D,F> (
    lhs: (A,B,C,D) -> F,
    rhs: (A,B,C,D)
) async -> F {
    await withCheckedContinuation { continuation in
        continuation.resume(with: .success(lhs(rhs.0, rhs.1, rhs.2, rhs.3)))
    }
}

func >>> <A,B,C,F> (
    lhs: (A,B,C) -> F,
    rhs: (A,B,C)
) async -> F {
    await withCheckedContinuation { continuation in
        continuation.resume(with: .success(lhs(rhs.0, rhs.1, rhs.2)))
    }
}

func >>> <A,B,F> (
    lhs: (A,B) -> F,
    rhs: (A,B)
) async -> F {
    await withCheckedContinuation { continuation in
        continuation.resume(with: .success(lhs(rhs.0, rhs.1)))
    }
}

func >>> <A,F> (
    lhs: (A) -> F,
    rhs: (A)
) async -> F {
    await withCheckedContinuation { continuation in
        continuation.resume(with: .success(lhs(rhs)))
    }
}
