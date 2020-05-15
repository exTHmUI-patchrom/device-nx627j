.class public final Landroid/net/metrics/DnsEvent;
.super Ljava/lang/Object;
.source "DnsEvent.java"


# static fields
.field private static final SIZE_LIMIT:I = 0x4e20


# instance fields
.field public eventCount:I

.field public eventTypes:[B

.field public latenciesMs:[I

.field public final netId:I

.field public returnCodes:[B

.field public successCount:I

.field public final transports:J


# direct methods
.method public constructor <init>(IJI)V
    .locals 1
    .param p1, "netId"    # I
    .param p2, "transports"    # J
    .param p4, "initialCapacity"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    .line 55
    iput-wide p2, p0, Landroid/net/metrics/DnsEvent;->transports:J

    .line 56
    new-array v0, p4, [B

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    .line 57
    new-array v0, p4, [B

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    .line 58
    new-array v0, p4, [I

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    .line 59
    return-void
.end method


# virtual methods
.method addResult(BBI)Z
    .locals 6
    .param p1, "eventType"    # B
    .param p2, "returnCode"    # B
    .param p3, "latencyMs"    # I

    .line 62
    const/4 v0, 0x1

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 63
    .local v1, "isSuccess":Z
    :goto_0
    iget v2, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    const/16 v3, 0x4e20

    if-lt v2, v3, :cond_1

    .line 65
    return v1

    .line 67
    :cond_1
    iget v2, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    iget-object v3, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    array-length v3, v3

    if-ne v2, v3, :cond_2

    .line 68
    const-wide v2, 0x3ff6666666666666L    # 1.4

    iget v4, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p0, v2}, Landroid/net/metrics/DnsEvent;->resize(I)V

    .line 70
    :cond_2
    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    iget v3, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    aput-byte p1, v2, v3

    .line 71
    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    iget v3, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    aput-byte p2, v2, v3

    .line 72
    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    iget v3, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    aput p3, v2, v3

    .line 73
    iget v2, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    .line 74
    if-eqz v1, :cond_3

    .line 75
    iget v2, p0, Landroid/net/metrics/DnsEvent;->successCount:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/net/metrics/DnsEvent;->successCount:I

    .line 77
    :cond_3
    return v1
.end method

.method public resize(I)V
    .locals 1
    .param p1, "newLength"    # I

    .line 81
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    .line 82
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    .line 83
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DnsEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "netId="

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Landroid/net/metrics/DnsEvent;->transports:J

    invoke-static {v1, v2}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    .line 91
    .local v5, "t":I
    invoke-static {v5}, Landroid/net/NetworkCapabilities;->transportNameOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .end local v5    # "t":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    :cond_0
    const-string v1, "%d events, "

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "%d success)"

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/net/metrics/DnsEvent;->successCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
