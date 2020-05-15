.class Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;
.super Ljava/lang/Object;
.source "RttServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/rtt/RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RttRequesterInfo"
.end annotation


# instance fields
.field public lastRangingExecuted:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/rtt/RttServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/rtt/RttServiceImpl$1;

    .line 1204
    invoke-direct {p0}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RttRequesterInfo: lastRangingExecuted="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequesterInfo;->lastRangingExecuted:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1209
    return-object v0
.end method
