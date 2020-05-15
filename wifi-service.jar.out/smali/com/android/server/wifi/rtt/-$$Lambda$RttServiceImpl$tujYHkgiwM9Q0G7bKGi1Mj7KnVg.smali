.class public final synthetic Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$tujYHkgiwM9Q0G7bKGi1Mj7KnVg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/rtt/RttServiceImpl;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$tujYHkgiwM9Q0G7bKGi1Mj7KnVg;->f$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    iput p2, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$tujYHkgiwM9Q0G7bKGi1Mj7KnVg;->f$1:I

    iput-object p3, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$tujYHkgiwM9Q0G7bKGi1Mj7KnVg;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$tujYHkgiwM9Q0G7bKGi1Mj7KnVg;->f$0:Lcom/android/server/wifi/rtt/RttServiceImpl;

    iget v1, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$tujYHkgiwM9Q0G7bKGi1Mj7KnVg;->f$1:I

    iget-object v2, p0, Lcom/android/server/wifi/rtt/-$$Lambda$RttServiceImpl$tujYHkgiwM9Q0G7bKGi1Mj7KnVg;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/rtt/RttServiceImpl;->lambda$onRangingResults$5(Lcom/android/server/wifi/rtt/RttServiceImpl;ILjava/util/List;)V

    return-void
.end method
