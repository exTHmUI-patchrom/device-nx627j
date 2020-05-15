.class public Lcom/android/server/wifi/hotspot2/ANQPRequestManager;
.super Ljava/lang/Object;
.source "ANQPRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;
    }
.end annotation


# static fields
.field public static final BASE_HOLDOFF_TIME_MILLISECONDS:I = 0x2710
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MAX_HOLDOFF_COUNT:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final R1_ANQP_BASE_SET:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final R2_ANQP_BASE_SET:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ANQPRequestManager"


# instance fields
.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mHoldOffInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPasspointHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

.field private final mPendingQueries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->R1_ANQP_BASE_SET:Ljava/util/List;

    .line 77
    new-array v0, v6, [Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->R2_ANQP_BASE_SET:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/PasspointEventHandler;Lcom/android/server/wifi/Clock;)V
    .locals 1
    .param p1, "handler"    # Lcom/android/server/wifi/hotspot2/PasspointEventHandler;
    .param p2, "clock"    # Lcom/android/server/wifi/Clock;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mPasspointHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    .line 100
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mPendingQueries:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mHoldOffInfo:Ljava/util/Map;

    .line 103
    return-void
.end method

.method private canSendRequestNow(J)Z
    .locals 9
    .param p1, "bssid"    # J

    .line 161
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    .line 162
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mHoldOffInfo:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;

    .line 163
    .local v2, "info":Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;
    if-eqz v2, :cond_0

    iget-wide v3, v2, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->holdOffExpirationTime:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 164
    const-string v3, "ANQPRequestManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to send ANQP request to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " for another "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->holdOffExpirationTime:J

    sub-long/2addr v5, v0

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v3, 0x0

    return v3

    .line 169
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method private static getRequestElementIDs(ZZ)Ljava/util/List;
    .locals 2
    .param p0, "rcOIs"    # Z
    .param p1, "hsReleaseR2"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v0, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;>;"
    sget-object v1, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->R1_ANQP_BASE_SET:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    if-eqz p0, :cond_0

    .line 203
    sget-object v1, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    if-eqz p1, :cond_1

    .line 207
    sget-object v1, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->R2_ANQP_BASE_SET:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_1
    return-object v0
.end method

.method private updateHoldOffInfo(J)V
    .locals 6
    .param p1, "bssid"    # J

    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mHoldOffInfo:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;

    .line 179
    .local v0, "info":Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;
    if-nez v0, :cond_0

    .line 180
    new-instance v1, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;-><init>(Lcom/android/server/wifi/hotspot2/ANQPRequestManager;Lcom/android/server/wifi/hotspot2/ANQPRequestManager$1;)V

    move-object v0, v1

    .line 181
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mHoldOffInfo:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    const/16 v3, 0x2710

    iget v4, v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->holdOffCount:I

    const/4 v5, 0x1

    shl-int v4, v5, v4

    mul-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->holdOffExpirationTime:J

    .line 185
    iget v1, v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->holdOffCount:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 186
    iget v1, v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->holdOffCount:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->holdOffCount:I

    .line 188
    :cond_1
    return-void
.end method


# virtual methods
.method public onRequestCompleted(JZ)Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;
    .locals 2
    .param p1, "bssid"    # J
    .param p3, "success"    # Z

    .line 147
    if-eqz p3, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mHoldOffInfo:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mPendingQueries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;

    return-object v0
.end method

.method public requestANQPElements(JLcom/android/server/wifi/hotspot2/ANQPNetworkKey;ZZ)Z
    .locals 3
    .param p1, "bssid"    # J
    .param p3, "anqpNetworkKey"    # Lcom/android/server/wifi/hotspot2/ANQPNetworkKey;
    .param p4, "rcOIs"    # Z
    .param p5, "hsReleaseR2"    # Z

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->canSendRequestNow(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 123
    return v1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mPasspointHandler:Lcom/android/server/wifi/hotspot2/PasspointEventHandler;

    invoke-static {p4, p5}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->getRequestElementIDs(ZZ)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/wifi/hotspot2/PasspointEventHandler;->requestANQP(JLjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    return v1

    .line 133
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->updateHoldOffInfo(J)V

    .line 135
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->mPendingQueries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v0, 0x1

    return v0
.end method
