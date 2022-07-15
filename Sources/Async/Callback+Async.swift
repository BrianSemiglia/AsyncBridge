//  Created by Brian Semiglia on 7/12/22.

import Foundation

infix operator >>>
infix operator ..

// MARK: Five In

func >>> <A,B,C,D,E,K,L,M,N,O> (
    lhs: (A,B,C,D,E, @escaping (K,L,M,N,O) -> Void) -> Void,
    rhs: (A,B,C,D,E)
) async -> (K,L,M,N,O) {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1, rhs.2, rhs.3, rhs.4) {
            continuation.resume(with: .success(($0, $1, $2, $3, $4)))
        }
    }
}

func >>> <A,B,C,D,E,K,L,M,N> (
    lhs: (A,B,C,D,E, @escaping (K,L,M,N) -> Void) -> Void,
    rhs: (A,B,C,D,E)
) async -> (K,L,M,N) {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1, rhs.2, rhs.3, rhs.4) {
            continuation.resume(with: .success(($0, $1, $2, $3)))
        }
    }
}

func >>> <A,B,C,D,E,K,L,M> (
    lhs: (A,B,C,D,E, @escaping (K,L,M) -> Void) -> Void,
    rhs: (A,B,C,D,E)
) async -> (K,L,M) {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1, rhs.2, rhs.3, rhs.4) {
            continuation.resume(with: .success(($0, $1, $2)))
        }
    }
}

func >>> <A,B,C,D,E,K,L> (
    lhs: (A,B,C,D,E, @escaping (K,L) -> Void) -> Void,
    rhs: (A,B,C,D,E)
) async -> (K,L) {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1, rhs.2, rhs.3, rhs.4) {
            continuation.resume(with: .success(($0, $1)))
        }
    }
}

func >>> <A,B,C,D,E,K> (
    lhs: (A,B,C,D,E, @escaping (K) -> Void) -> Void,
    rhs: (A,B,C,D,E)
) async -> K {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1, rhs.2, rhs.3, rhs.4) {
            continuation.resume(with: .success($0))
        }
    }
}

// MARK: Four In

func >>> <A,B,C,D,K,L,M,N,O> (
    lhs: (A,B,C,D, @escaping (K,L,M,N,O) -> Void) -> Void,
    rhs: (A,B,C,D)
) async -> (K,L,M,N,O) {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1, rhs.2, rhs.3) {
            continuation.resume(with: .success(($0, $1, $2, $3, $4)))
        }
    }
}

func >>> <A,B,C,D,K,L,M,N> (
    lhs: (A,B,C,D, @escaping (K,L,M,N) -> Void) -> Void,
    rhs: (A,B,C,D)
) async -> (K,L,M,N) {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1, rhs.2, rhs.3) {
            continuation.resume(with: .success(($0, $1, $2, $3)))
        }
    }
}

func >>> <A,B,C,D,K,L,M> (
    lhs: (A,B,C,D, @escaping (K,L,M) -> Void) -> Void,
    rhs: (A,B,C,D)
) async -> (K,L,M) {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1, rhs.2, rhs.3) {
            continuation.resume(with: .success(($0, $1, $2)))
        }
    }
}

func >>> <A,B,C,D,K,L> (
    lhs: (A,B,C,D, @escaping (K,L) -> Void) -> Void,
    rhs: (A,B,C,D)
) async -> (K,L) {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1, rhs.2, rhs.3) {
            continuation.resume(with: .success(($0, $1)))
        }
    }
}

func >>> <A,B,C,D,K> (
    lhs: (A,B,C,D, @escaping (K) -> Void) -> Void,
    rhs: (A,B,C,D)
) async -> K {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1, rhs.2, rhs.3) {
            continuation.resume(with: .success($0))
        }
    }
}

// MARK: Three In

func >>> <A,B,C,K,L,M,N,O> (
    lhs: (A,B,C, @escaping (K,L,M,N,O) -> Void) -> Void,
    rhs: (A,B,C)
) async -> (K,L,M,N,O) {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1, rhs.2) {
            continuation.resume(with: .success(($0, $1, $2, $3, $4)))
        }
    }
}

func >>> <A,B,C,K,L,M,N> (
    lhs: (A,B,C, @escaping (K,L,M,N) -> Void) -> Void,
    rhs: (A,B,C)
) async -> (K,L,M,N) {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1, rhs.2) {
            continuation.resume(with: .success(($0, $1, $2, $3)))
        }
    }
}

func >>> <A,B,C,K,L,M> (
    lhs: (A,B,C, @escaping (K,L,M) -> Void) -> Void,
    rhs: (A,B,C)
) async -> (K,L,M) {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1, rhs.2) {
            continuation.resume(with: .success(($0, $1, $2)))
        }
    }
}

func >>> <A,B,C,K,L> (
    lhs: (A,B,C, @escaping (K,L) -> Void) -> Void,
    rhs: (A,B,C)
) async -> (K,L) {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1, rhs.2) {
            continuation.resume(with: .success(($0, $1)))
        }
    }
}

func >>> <A,B,C,K> (
    lhs: (A,B,C, @escaping (K) -> Void) -> Void,
    rhs: (A,B,C)
) async -> K {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1, rhs.2) {
            continuation.resume(with: .success($0))
        }
    }
}

// MARK: Two In

func >>> <A,B,K,L,M,N,O> (
    lhs: (A,B, @escaping (K,L,M,N,O) -> Void) -> Void,
    rhs: (A,B)
) async -> (K,L,M,N,O) {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1) {
            continuation.resume(with: .success(($0, $1, $2, $3, $4)))
        }
    }
}

func >>> <A,B,K,L,M,N> (
    lhs: (A,B, @escaping (K,L,M,N) -> Void) -> Void,
    rhs: (A,B)
) async -> (K,L,M,N) {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1) {
            continuation.resume(with: .success(($0, $1, $2, $3)))
        }
    }
}

func >>> <A,B,K,L,M> (
    lhs: (A,B, @escaping (K,L,M) -> Void) -> Void,
    rhs: (A,B)
) async -> (K,L,M) {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1) {
            continuation.resume(with: .success(($0, $1, $2)))
        }
    }
}

func >>> <A,B,K,L> (
    lhs: (A,B, @escaping (K,L) -> Void) -> Void,
    rhs: (A,B)
) async -> (K,L) {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1) {
            continuation.resume(with: .success(($0, $1)))
        }
    }
}

func >>> <A,B,K> (
    lhs: (A,B, @escaping (K) -> Void) -> Void,
    rhs: (A,B)
) async -> K {
    await withCheckedContinuation { continuation in
        lhs(rhs.0, rhs.1) {
            continuation.resume(with: .success($0))
        }
    }
}

// MARK: One In

func >>> <A,K,L,M,N,O> (
    lhs: (A, @escaping (K,L,M,N,O) -> Void) -> Void,
    rhs: (A)
) async -> (K,L,M,N,O) {
    await withCheckedContinuation { continuation in
        lhs(rhs) {
            continuation.resume(with: .success(($0, $1, $2, $3, $4)))
        }
    }
}

func >>> <A,K,L,M,N> (
    lhs: (A, @escaping (K,L,M,N) -> Void) -> Void,
    rhs: (A)
) async -> (K,L,M,N) {
    await withCheckedContinuation { continuation in
        lhs(rhs) {
            continuation.resume(with: .success(($0, $1, $2, $3)))
        }
    }
}

func >>> <A,K,L,M> (
    lhs: (A, @escaping (K,L,M) -> Void) -> Void,
    rhs: (A)
) async -> (K,L,M) {
    await withCheckedContinuation { continuation in
        lhs(rhs) {
            continuation.resume(with: .success(($0, $1, $2)))
        }
    }
}

func >>> <A,K,L> (
    lhs: (A, @escaping (K,L) -> Void) -> Void,
    rhs: (A)
) async -> (K,L) {
    await withCheckedContinuation { continuation in
        lhs(rhs) {
            continuation.resume(with: .success(($0, $1)))
        }
    }
}

func >>> <A,K> (
    lhs: (A, @escaping (K) -> Void) -> Void,
    rhs: (A)
) async -> K {
    await withCheckedContinuation { continuation in
        lhs(rhs) {
            continuation.resume(with: .success($0))
        }
    }
}

// MARK: Zero In

func >>> <K,L,M,N,O> (
    lhs: (@escaping (K,L,M,N,O) -> Void) -> Void,
    rhs: Void
) async -> (K,L,M,N,O) {
    await withCheckedContinuation { continuation in
        lhs() {
            continuation.resume(with: .success(($0, $1, $2, $3, $4)))
        }
    }
}

func >>> <K,L,M,N> (
    lhs: (@escaping (K,L,M,N) -> Void) -> Void,
    rhs: Void
) async -> (K,L,M,N) {
    await withCheckedContinuation { continuation in
        lhs() {
            continuation.resume(with: .success(($0, $1, $2, $3)))
        }
    }
}

func >>> <K,L,M> (
    lhs: (@escaping (K,L,M) -> Void) -> Void,
    rhs: Void
) async -> (K,L,M) {
    await withCheckedContinuation { continuation in
        lhs() {
            continuation.resume(with: .success(($0, $1, $2)))
        }
    }
}

func >>> <K,L> (
    lhs: (@escaping (K,L) -> Void) -> Void,
    rhs: Void
) async -> (K,L) {
    await withCheckedContinuation { continuation in
        lhs() {
            continuation.resume(with: .success(($0, $1)))
        }
    }
}

func >>> <K> (
    lhs: (@escaping (K) -> Void) -> Void,
    rhs: Void
) async -> K {
    await withCheckedContinuation { continuation in
        lhs() {
            continuation.resume(with: .success($0))
        }
    }
}
