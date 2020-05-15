.class Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;
.super Ljava/lang/Object;
.source "RttMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/rtt/RttMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerPeerTypeInfo"
.end annotation


# instance fields
.field public measuredDistanceHistogram:Landroid/util/SparseIntArray;

.field public numCalls:I

.field public numIndividualCalls:I

.field public numRequestsHistogram:Landroid/util/SparseIntArray;

.field public perUidInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wifi/rtt/RttMetrics$PerUidInfo;",
            ">;"
        }
    .end annotation
.end field

.field public requestGapHistogram:Landroid/util/SparseIntArray;

.field public statusHistogram:Landroid/util/SparseIntArray;

.field final synthetic this$0:Lcom/android/server/wifi/rtt/RttMetrics;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/rtt/RttMetrics;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->this$0:Lcom/android/server/wifi/rtt/RttMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->perUidInfo:Landroid/util/SparseArray;

    .line 109
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->numRequestsHistogram:Landroid/util/SparseIntArray;

    .line 110
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->requestGapHistogram:Landroid/util/SparseIntArray;

    .line 111
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->statusHistogram:Landroid/util/SparseIntArray;

    .line 112
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->measuredDistanceHistogram:Landroid/util/SparseIntArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/rtt/RttMetrics;Lcom/android/server/wifi/rtt/RttMetrics$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/rtt/RttMetrics;
    .param p2, "x1"    # Lcom/android/server/wifi/rtt/RttMetrics$1;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;-><init>(Lcom/android/server/wifi/rtt/RttMetrics;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->numCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numIndividualCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->numIndividualCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", perUidInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->perUidInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", numRequestsHistogram="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->numRequestsHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestGapHistogram="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->requestGapHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statusHistogram="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->statusHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", measuredDistanceHistogram="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/RttMetrics$PerPeerTypeInfo;->measuredDistanceHistogram:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
