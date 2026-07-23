USE FinTrack
GO

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'idx_transactions_user_date' AND object_id = OBJECT_ID('Transactions'))
BEGIN
  CREATE INDEX idx_transactions_user_date ON Transactions (userId, date DESC)
END
GO

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'idx_budgets_user_month' AND object_id = OBJECT_ID('Budgets'))
BEGIN
  CREATE INDEX idx_budgets_user_month ON Budgets (userId, month, year)
END
GO

PRINT 'Indexes created successfully.'
GO