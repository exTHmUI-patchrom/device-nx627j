.class Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;
.super Ljava/lang/Object;
.source "RttMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/rtt/RttMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerUidInfo"
.end annotation


# instance fields
.field public lastRequestMs:J

.field public numRequests:I

.field final synthetic this$0:Lcom/android/server/wifi/rtt/RttMetrics;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/rtt/RttMetrics;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;->this$0:Lcom/android/server/wifi/rtt/RttMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/rtt/RttMetrics;Lcom/android/server/wifi/rtt/RttMetrics$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/rtt/RttMetrics;
    .param p2, "x1"    # Lcom/android/server/wifi/rtt/RttMetrics$1;

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;-><init>(Lcom/android/server/wifi/rtt/RttMetrics;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;->numRequests:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastRequestMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;->lastRequestMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
