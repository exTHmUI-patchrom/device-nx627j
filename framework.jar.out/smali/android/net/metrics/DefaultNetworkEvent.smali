.class public Landroid/net/metrics/DefaultNetworkEvent;
.super Ljava/lang/Object;
.source "DefaultNetworkEvent.java"


# instance fields
.field public final creationTimeMs:J

.field public durationMs:J

.field public finalScore:I

.field public initialScore:I

.field public ipv4:Z

.field public ipv6:Z

.field public netId:I

.field public previousTransports:I

.field public transports:I

.field public validatedMs:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "timeMs"    # J

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    .line 54
    iput-wide p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->creationTimeMs:J

    .line 55
    return-void
.end method

.method private ipSupport()Ljava/lang/String;
    .locals 1

    .line 82
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "IPv4v6"

    return-object v0

    .line 85
    :cond_0
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "IPv6"

    return-object v0

    .line 88
    :cond_1
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    if-eqz v0, :cond_2

    .line 89
    const-string v0, "IPv4"

    return-object v0

    .line 91
    :cond_2
    const-string v0, "NONE"

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .line 64
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string v2, "DefaultNetworkEvent("

    const-string v3, ")"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 65
    .local v0, "j":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 66
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    .line 67
    .local v5, "t":I
    invoke-static {v5}, Landroid/net/NetworkCapabilities;->transportNameOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 66
    .end local v5    # "t":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/net/metrics/DefaultNetworkEvent;->ipSupport()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 70
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->initialScore:I

    if-lez v1, :cond_1

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initial_score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->initialScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 73
    :cond_1
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    if-lez v1, :cond_2

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final_score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 76
    :cond_2
    const-string v1, "duration=%.0fs"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    iget-wide v5, p0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 77
    const-string/jumbo v1, "validation=%04.1f%%"

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    iget-wide v6, p0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 78
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateDuration(J)V
    .locals 2
    .param p1, "timeMs"    # J

    .line 59
    iget-wide v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->creationTimeMs:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    .line 60
    return-void
.end method
