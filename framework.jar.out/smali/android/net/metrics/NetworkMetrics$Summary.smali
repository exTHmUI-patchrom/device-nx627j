.class public Landroid/net/metrics/NetworkMetrics$Summary;
.super Ljava/lang/Object;
.source "NetworkMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/NetworkMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Summary"
.end annotation


# instance fields
.field public final connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final netId:I

.field public final roundTripTimeUs:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final sentAckTimeDiffenceMs:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

.field public final transports:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 1
    .param p1, "netId"    # I
    .param p2, "transports"    # J

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 117
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 119
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 121
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 123
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 125
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->roundTripTimeUs:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 128
    new-instance v0, Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-direct {v0}, Landroid/net/metrics/NetworkMetrics$Metrics;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->sentAckTimeDiffenceMs:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 131
    iput p1, p0, Landroid/net/metrics/NetworkMetrics$Summary;->netId:I

    .line 132
    iput-wide p2, p0, Landroid/net/metrics/NetworkMetrics$Summary;->transports:J

    .line 133
    return-void
.end method


# virtual methods
.method merge(Landroid/net/metrics/NetworkMetrics$Summary;)V
    .locals 2
    .param p1, "that"    # Landroid/net/metrics/NetworkMetrics$Summary;

    .line 136
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-object v1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->merge(Landroid/net/metrics/NetworkMetrics$Metrics;)V

    .line 137
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-object v1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->merge(Landroid/net/metrics/NetworkMetrics$Metrics;)V

    .line 138
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-object v1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->merge(Landroid/net/metrics/NetworkMetrics$Metrics;)V

    .line 139
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-object v1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->merge(Landroid/net/metrics/NetworkMetrics$Metrics;)V

    .line 140
    iget-object v0, p0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-object v1, p1, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v0, v1}, Landroid/net/metrics/NetworkMetrics$Metrics;->merge(Landroid/net/metrics/NetworkMetrics$Metrics;)V

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 145
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 146
    .local v0, "j":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/metrics/NetworkMetrics$Summary;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 147
    iget-wide v1, p0, Landroid/net/metrics/NetworkMetrics$Summary;->transports:J

    invoke-static {v1, v2}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    .line 148
    .local v5, "t":I
    invoke-static {v5}, Landroid/net/NetworkCapabilities;->transportNameOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 147
    .end local v5    # "t":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    :cond_0
    const-string v1, "dns avg=%dms max=%dms err=%.1f%% tot=%d"

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 151
    invoke-virtual {v5}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v5, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-wide v5, v5, Landroid/net/metrics/NetworkMetrics$Metrics;->max:D

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 152
    invoke-virtual {v5}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/net/metrics/NetworkMetrics$Summary;->dnsErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget v5, v5, Landroid/net/metrics/NetworkMetrics$Metrics;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    .line 150
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 153
    const-string v1, "connect avg=%dms max=%dms err=%.1f%% tot=%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 154
    invoke-virtual {v4}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v4, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectLatencies:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-wide v4, v4, Landroid/net/metrics/NetworkMetrics$Metrics;->max:D

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    iget-object v4, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 155
    invoke-virtual {v4}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v4

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v7

    iget-object v4, p0, Landroid/net/metrics/NetworkMetrics$Summary;->connectErrorRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget v4, v4, Landroid/net/metrics/NetworkMetrics$Metrics;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    .line 153
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 156
    const-string/jumbo v1, "tcp avg_loss=%.1f%% total_sent=%d total_lost=%d"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    .line 157
    invoke-virtual {v4}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v4

    mul-double/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v4, p0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget v4, v4, Landroid/net/metrics/NetworkMetrics$Metrics;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    iget-object v4, p0, Landroid/net/metrics/NetworkMetrics$Summary;->tcpLossRate:Landroid/net/metrics/NetworkMetrics$Metrics;

    iget-wide v4, v4, Landroid/net/metrics/NetworkMetrics$Metrics;->sum:D

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    .line 156
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 158
    const-string/jumbo v1, "tcp rtt=%dms"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/net/metrics/NetworkMetrics$Summary;->roundTripTimeUs:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v4}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v4

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v7

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 159
    const-string/jumbo v1, "tcp sent-ack_diff=%dms"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/net/metrics/NetworkMetrics$Summary;->sentAckTimeDiffenceMs:Landroid/net/metrics/NetworkMetrics$Metrics;

    invoke-virtual {v4}, Landroid/net/metrics/NetworkMetrics$Metrics;->average()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 160
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
