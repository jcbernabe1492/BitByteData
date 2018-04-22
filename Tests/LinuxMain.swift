// Copyright (c) 2018 Timofey Solomko
// Licensed under MIT License
//
// See LICENSE for license information

import XCTest
@testable import BitByteDataTests

extension ByteReaderTests {
	static var allTests: [(String, (ByteReaderTests) -> () -> Void)] {
		return [
			("testByte", testByte),
			("testIsFinished", testIsFinished),
            ("testBytesLeft", testBytesLeft),
            ("testBytesRead", testBytesRead),
			("testBytes", testBytes),
            ("testIntFromBytes", testIntFromBytes),
			("testUint64", testUint64),
            ("testUint64FromBytes", testUint64FromBytes),
			("testUint32", testUint32),
            ("testUint32FromBytes", testUint32FromBytes),
			("testUint16", testUint16),
            ("testUint16FromBytes", testUint16FromBytes),
			("testNonZeroStartIndex", testNonZeroStartIndex)
		]
	}
}

extension LsbBitReaderTests {
	static var allTests: [(String, (LsbBitReaderTests) -> () -> Void)] {
		return [
			("testBit", testBit),
			("testBits", testBits),
			("testIntFromBits", testIntFromBits),
            ("testByteFromBits", testByteFromBits),
            ("testUint16FromBits", testUint16FromBits),
            ("testUint32FromBits", testUint32FromBits),
            ("testUint64FromBits", testUint64FromBits),
			("testIsAligned", testIsAligned),
			("testAlign", testAlign),
            ("testBytesLeft", testBytesLeft),
            ("testBytesRead", testBytesRead),
			("testBitReaderByte", testBitReaderByte),
			("testBitReaderBytes", testBitReaderBytes),
            ("testBitReaderIntFromBytes", testBitReaderIntFromBytes),
			("testBitReaderUint16", testBitReaderUint16),
            ("testBitReaderUint32FromBytes", testBitReaderUint32FromBytes),
			("testBitReaderNonZeroStartIndex", testBitReaderNonZeroStartIndex),
            ("testConvertedByteReader", testConvertedByteReader),
            ("testBitsLeft", testBitsLeft),
            ("testBitsLeft", testBitsRead)
		]
	}
}

extension MsbBitReaderTests {
	static var allTests: [(String, (MsbBitReaderTests) -> () -> Void)] {
		return [
			("testBit", testBit),
			("testBits", testBits),
			("testIntFromBits", testIntFromBits),
            ("testByteFromBits", testByteFromBits),
            ("testUint16FromBits", testUint16FromBits),
            ("testUint32FromBits", testUint32FromBits),
            ("testUint64FromBits", testUint64FromBits),
			("testIsAligned", testIsAligned),
			("testAlign", testAlign),
            ("testBytesLeft", testBytesLeft),
            ("testBytesRead", testBytesRead),
			("testBitReaderByte", testBitReaderByte),
			("testBitReaderBytes", testBitReaderBytes),
            ("testBitReaderIntFromBytes", testBitReaderIntFromBytes),
			("testBitReaderUint16", testBitReaderUint16),
            ("testBitReaderUint32FromBytes", testBitReaderUint32FromBytes),
            ("testBitReaderNonZeroStartIndex", testBitReaderNonZeroStartIndex),
            ("testConvertedByteReader", testConvertedByteReader),
            ("testBitsLeft", testBitsLeft),
            ("testBitsLeft", testBitsRead)
		]
	}
}

extension LsbBitWriterTests {
	static var allTests: [(String, (LsbBitWriterTests) -> () -> Void)] {
		return [
			("testWriteBit", testWriteBit),
			("testWriteBitsArray", testWriteBitsArray),
			("testWriteNumber", testWriteNumber),
			("testAppendByte", testAppendByte),
			("testAlign", testAlign),
			("testIsAligned", testIsAligned),
			("testNamingConsistency", testNamingConsistency)
		]
	}
}

extension MsbBitWriterTests {
	static var allTests: [(String, (MsbBitWriterTests) -> () -> Void)] {
		return [
			("testWriteBit", testWriteBit),
			("testWriteBitsArray", testWriteBitsArray),
			("testWriteNumber", testWriteNumber),
			("testAppendByte", testAppendByte),
			("testAlign", testAlign),
			("testIsAligned", testIsAligned),
			("testNamingConsistency", testNamingConsistency)
		]
	}
}

XCTMain([
    testCase(ByteReaderTests.allTests),
	testCase(LsbBitReaderTests.allTests),
	testCase(MsbBitReaderTests.allTests),
	testCase(LsbBitWriterTests.allTests),
	testCase(MsbBitWriterTests.allTests)
])
