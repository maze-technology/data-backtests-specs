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
    @required
    id: Long

    @required
    strategy: Document

    @required
    OHLCVDatasetsFindAggregatedRequest: Document

    @required
    status: BacktestStatus

    @required
    progression: Float

    @required
    result: BacktestResult

    @required
    createdAt: Timestamp
}

structure BacktestCreate {
    @required
    strategy: Document

    @required
    OHLCVDatasetsFindAggregatedRequest: Document
}

structure BacktestResult {
    @required
    startAt: Timestamp

    @required
    endEnd: Timestamp

    @required
    createdAt: Timestamp
}

structure AddBacktestRequest {
    @required
    backtest: BacktestCreate
}

structure AddBacktestResponse {
    @required
    backtest: Backtest
}

structure RunBacktestRequest {
    @required
    backtest: Backtest
}

structure RunBacktestResponse {
    @required
    backtest: Backtest
}
