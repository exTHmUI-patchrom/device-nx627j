.class public final synthetic Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$RttServiceSynchronized$1$X3EitWNHg38OS5b_JDpRvNEeXDk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized$1;

.field private final synthetic f$1:Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;

.field private final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized$1;Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$RttServiceSynchronized$1$X3EitWNHg38OS5b_JDpRvNEeXDk;->f$0:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized$1;

    iput-object p2, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$RttServiceSynchronized$1$X3EitWNHg38OS5b_JDpRvNEeXDk;->f$1:Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;

    iput-object p3, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$RttServiceSynchronized$1$X3EitWNHg38OS5b_JDpRvNEeXDk;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$RttServiceSynchronized$1$X3EitWNHg38OS5b_JDpRvNEeXDk;->f$0:Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized$1;

    iget-object v1, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$RttServiceSynchronized$1$X3EitWNHg38OS5b_JDpRvNEeXDk;->f$1:Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;

    iget-object v2, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$RttServiceSynchronized$1$X3EitWNHg38OS5b_JDpRvNEeXDk;->f$2:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized$1;->lambda$macAddress$0(Lcom/android/server/wifi/rtt/RttServiceImpl$RttServiceSynchronized$1;Lcom/android/server/wifi/rtt/RttServiceImpl$RttRequestInfo;Ljava/util/Map;)V

    return-void
.end method
