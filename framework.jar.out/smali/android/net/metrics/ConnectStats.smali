.class public Landroid/net/metrics/ConnectStats;
.super Ljava/lang/Object;
.source "ConnectStats.java"


# static fields
.field private static final EALREADY:I

.field private static final EINPROGRESS:I


# instance fields
.field public connectBlockingCount:I

.field public connectCount:I

.field public final errnos:Landroid/util/SparseIntArray;

.field public eventCount:I

.field public ipv6ConnectCount:I

.field public final latencies:Landroid/util/IntArray;

.field public final mLatencyTb:Lcom/android/internal/util/TokenBucket;

.field public final mMaxLatencyRecords:I

.field public final netId:I

.field public final transports:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget v0, Landroid/system/OsConstants;->EALREADY:I

    sput v0, Landroid/net/metrics/ConnectStats;->EALREADY:I

    .line 33
    sget v0, Landroid/system/OsConstants;->EINPROGRESS:I

    sput v0, Landroid/net/metrics/ConnectStats;->EINPROGRESS:I

    return-void
.end method

.method public constructor <init>(IJLcom/android/internal/util/TokenBucket;I)V
    .locals 1
    .param p1, "netId"    # I
    .param p2, "transports"    # J
    .param p4, "tb"    # Lcom/android/internal/util/TokenBucket;
    .param p5, "maxLatencyRecords"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    .line 42
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/metrics/ConnectStats;->eventCount:I

    .line 50
    iput v0, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    .line 52
    iput v0, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    .line 54
    iput v0, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    .line 57
    iput p1, p0, Landroid/net/metrics/ConnectStats;->netId:I

    .line 58
    iput-wide p2, p0, Landroid/net/metrics/ConnectStats;->transports:J

    .line 59
    iput-object p4, p0, Landroid/net/metrics/ConnectStats;->mLatencyTb:Lcom/android/internal/util/TokenBucket;

    .line 60
    iput p5, p0, Landroid/net/metrics/ConnectStats;->mMaxLatencyRecords:I

    .line 61
    return-void
.end method

.method private countConnect(ILjava/lang/String;)V
    .locals 1
    .param p1, "errno"    # I
    .param p2, "ipAddr"    # Ljava/lang/String;

    .line 76
    iget v0, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    .line 77
    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget v0, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    .line 80
    :cond_0
    invoke-static {p2}, Landroid/net/metrics/ConnectStats;->isIPv6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget v0, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    .line 83
    :cond_1
    return-void
.end method

.method private countError(I)V
    .locals 2
    .param p1, "errno"    # I

    .line 102
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 103
    .local v0, "newcount":I
    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    return-void
.end method

.method private countLatency(II)V
    .locals 2
    .param p1, "errno"    # I
    .param p2, "ms"    # I

    .line 86
    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->mLatencyTb:Lcom/android/internal/util/TokenBucket;

    invoke-virtual {v0}, Lcom/android/internal/util/TokenBucket;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    iget v1, p0, Landroid/net/metrics/ConnectStats;->mMaxLatencyRecords:I

    if-lt v0, v1, :cond_2

    .line 96
    return-void

    .line 98
    :cond_2
    iget-object v0, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    invoke-virtual {v0, p2}, Landroid/util/IntArray;->add(I)V

    .line 99
    return-void
.end method

.method private static isIPv6(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ipAddr"    # Ljava/lang/String;

    .line 117
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static isNonBlocking(I)Z
    .locals 1
    .param p0, "errno"    # I

    .line 113
    sget v0, Landroid/net/metrics/ConnectStats;->EINPROGRESS:I

    if-eq p0, v0, :cond_1

    sget v0, Landroid/net/metrics/ConnectStats;->EALREADY:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSuccess(I)Z
    .locals 1
    .param p0, "errno"    # I

    .line 107
    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/net/metrics/ConnectStats;->isNonBlocking(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method addEvent(IILjava/lang/String;)Z
    .locals 2
    .param p1, "errno"    # I
    .param p2, "latencyMs"    # I
    .param p3, "ipAddr"    # Ljava/lang/String;

    .line 64
    iget v0, p0, Landroid/net/metrics/ConnectStats;->eventCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/metrics/ConnectStats;->eventCount:I

    .line 65
    invoke-static {p1}, Landroid/net/metrics/ConnectStats;->isSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0, p1, p3}, Landroid/net/metrics/ConnectStats;->countConnect(ILjava/lang/String;)V

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/net/metrics/ConnectStats;->countLatency(II)V

    .line 68
    return v1

    .line 70
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/metrics/ConnectStats;->countError(I)V

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectStats("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "netId="

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/metrics/ConnectStats;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Landroid/net/metrics/ConnectStats;->transports:J

    invoke-static {v1, v2}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    .line 125
    .local v5, "t":I
    invoke-static {v5}, Landroid/net/NetworkCapabilities;->transportNameOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .end local v5    # "t":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    :cond_0
    const-string v1, "%d events, "

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Landroid/net/metrics/ConnectStats;->eventCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "%d success, "

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "%d blocking, "

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "%d IPv6 dst"

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    move v1, v3

    .line 131
    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 132
    iget-object v4, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/system/OsConstants;->errnoName(I)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "errno":Ljava/lang/String;
    iget-object v5, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 134
    .local v5, "count":I
    const-string v6, ", %s: %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .end local v4    # "errno":Ljava/lang/String;
    .end local v5    # "count":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    .end local v1    # "i":I
    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
