//
//  MovieAppTests.swift
//  MovieAppTests
//
//  Created by Gregori Farias on 17/4/24.
//

import XCTest
@testable import MovieApp

class MovieDownloadManagerTests: XCTestCase {
    
    var movieDownloadManager: MovieDownloadManager!
    
    override func setUp() {
        super.setUp()
        movieDownloadManager = MovieDownloadManager()
    }
    
    override func tearDown() {
        movieDownloadManager = nil
        super.tearDown()
    }
    
    func testGetNowPlaying() {
        let expectation = XCTestExpectation(description: "Download Now Playing Movies")
        
        movieDownloadManager.getNowPlaying()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            XCTAssertFalse(self.movieDownloadManager.movies.isEmpty, "Now Playing movies should be fetched")
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10)
    }
    
    func testGetUpcoming() {
        let expectation = XCTestExpectation(description: "Download Upcoming Movies")
        
        movieDownloadManager.getUpcoming()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            XCTAssertFalse(self.movieDownloadManager.movies.isEmpty, "Upcoming movies should be fetched")
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10)
    }
    
    func testGetPopular() {
        let expectation = XCTestExpectation(description: "Download Popular Movies")
        
        movieDownloadManager.getPopular()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            XCTAssertFalse(self.movieDownloadManager.movies.isEmpty, "Popular movies should be fetched")
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10)
    }
    
}
