.class public Lcom/android/server/wifi/hotspot2/ANQPData;
.super Ljava/lang/Object;
.source "ANQPData.java"


# static fields
.field public static final DATA_LIFETIME_MILLISECONDS:J = 0x36ee80L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mANQPElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mExpiryTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/Clock;Ljava/util/Map;)V
    .locals 4
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/Clock;",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    .line 45
    if-eqz p2, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiryTime:J

    .line 49
    return-void
.end method


# virtual methods
.method public expired(J)Z
    .locals 2
    .param p1, "at"    # J

    .line 67
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiryTime:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getElements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " elements, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    .line 75
    .local v1, "now":J
    const-string v3, " expires in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiryTime:J

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired(J)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x78

    goto :goto_0

    :cond_0
    const/16 v3, 0x2d

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
