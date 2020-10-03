//
//  UnionFindTests.swift
//  UnionFindTests
//
//  Created by 段峰 on 2020/10/1.
//

import XCTest
@testable import UnionFind

class UnionFindTests: XCTestCase {
    
    let count = 100000
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        quickFind()
    }
    
    func testQuickUnion() throws{
        quickUnion()
    }
    
    func testQuickUnionSize() throws{
        quickUnionSize()
    }
    
    func testQuickUnionRank() throws{
        quickUnionRank()
    }
    
    func testQuickUnionRankPC() throws{
        quickUnionRankPC()
    }
    
    func testQuickUnionRankPS() throws{
        quickUnionRankPS()
    }
    
    func testQuickUnionRankPH() throws{
        quickUnionRankPH()
    }
    
    func checkSuccess(uf:UnionFind){
        XCTAssert(uf.isSame(e1: 4, e2: 5) == true, "cuowu")
        XCTAssert(uf.isSame(e1: 4, e2: 6) == false, "cuowu")
        XCTAssert(uf.isSame(e1: 8, e2: 11) == true, "cuowu")
    }
    
    func quickFind(){
        let uf = UnionFindByQuickFind(count: 12)
        createUnionFind(uf: uf)
        
        checkSuccess(uf: uf)
    }
    
    func quickUnion(){
        let uf = UnionFindByQuickUnion(count: 12)
        createUnionFind(uf: uf)
        
        checkSuccess(uf: uf)
    }
    
    func quickUnionSize(){
        let uf = UnionFindByQuickUnionUseSize(count: 12)
        createUnionFind(uf: uf)
        
        checkSuccess(uf: uf)
    }
    
    func quickUnionRank(){
        let uf = UnionFindByQuickUnionUseRank(count: 12)
        createUnionFind(uf: uf)
        
        checkSuccess(uf: uf)
    }
    
    func quickUnionRankPC(){
        let uf = UnionFindByQuickUnionUseRank_PC(count: 12)
        createUnionFind(uf: uf)
        
        checkSuccess(uf: uf)
    }
    
    func quickUnionRankPS(){
        let uf = UnionFindByQuickUnionUseRank_PS(count: 12)
        createUnionFind(uf: uf)
        
        checkSuccess(uf: uf)
    }
    
    func quickUnionRankPH(){
        let uf = UnionFindByQuickUnionUseRank_PH(count: 12)
        createUnionFind(uf: uf)
        
        checkSuccess(uf: uf)
    }
    
    
    func createUnionFind(uf:UnionFind){
        uf.union(e1: 0, e2: 1)
        uf.union(e1: 0, e2: 4)
        uf.union(e1: 0, e2: 3)
        uf.union(e1: 2, e2: 3)
        uf.union(e1: 5, e2: 3)
        
        uf.union(e1: 6, e2: 7)
        
        uf.union(e1: 8, e2: 9)
        uf.union(e1: 8, e2: 10)
        uf.union(e1: 11, e2: 9)
    }
    
    func createUnionFindRandom(uf:UnionFind){
        for _ in 0..<count {
            uf.union(e1: Int(arc4random_uniform(UInt32(count))), e2: Int(arc4random_uniform(UInt32(count))))
        }
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        
        self.measure {
            createUnionFindRandom(uf: UnionFindByQuickUnionUseSize(count: count))
        }
    }
    
    func testQFTime() throws {
        self.measure {
            // Put the code you want to measure the time of here.
            createUnionFindRandom(uf: UnionFindByQuickFind(count: count))
        }
    }
    
    func testQUTime() throws {
        self.measure {
            createUnionFindRandom(uf: UnionFindByQuickUnion(count: count))
        }
    }
    
    func testQURackTime() throws {
        self.measure {
            createUnionFindRandom(uf: UnionFindByQuickUnionUseRank(count: count))
        }
    }
    
    func testQURankPCTime() throws {
        self.measure {
            createUnionFindRandom(uf: UnionFindByQuickUnionUseRank_PC(count: count))
        }
    }
    
    func testQURankPSTime() throws {
        self.measure {
            createUnionFindRandom(uf: UnionFindByQuickUnionUseRank_PS(count: count))
        }
    }
    
    func testQURankPHTime() throws {
        self.measure {
            createUnionFindRandom(uf: UnionFindByQuickUnionUseRank_PH(count: count))
        }
    }
}
