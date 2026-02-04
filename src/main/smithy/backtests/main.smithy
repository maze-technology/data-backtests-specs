$version: "2"

namespace tech.maze.dtos.backtests.main.proto

use smithy.api#Document
use smithy.api#Timestamp

enum BacktestStatus {
    INIT
    PENDING
    ERROR
    SUCCESS
}

structure Backtest {
    id: Long
    strategy: AlgoTraderStrategy
    OHLCVDatasetsFindAggregatedRequest: Document
    status: BacktestStatus
    progression: Float
    result: BacktestResult
    createdAt: Timestamp
}

structure BacktestCreate {
    strategy: AlgoTraderStrategy
    OHLCVDatasetsFindAggregatedRequest: Document
}

structure BacktestResult {
    startAt: Timestamp
    endEnd: Timestamp
    createdAt: Timestamp
}

structure AddBacktestRequest {
    backtest: BacktestCreate
}

structure AddBacktestResponse {
    backtest: Backtest
}

structure RunBacktestRequest {
    backtest: Backtest
}

structure RunBacktestResponse {
    backtest: Backtest
}
