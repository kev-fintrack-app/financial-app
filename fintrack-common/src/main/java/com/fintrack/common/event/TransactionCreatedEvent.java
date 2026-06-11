package com.fintrack.common.event;

import java.math.BigDecimal;
import java.time.Instant;
import java.util.UUID;

public record TransactionCreatedEvent(
        UUID transactionId,
        UUID userId,
        BigDecimal amount,
        String currency,
        String category,
        Instant createdAt
) {}
