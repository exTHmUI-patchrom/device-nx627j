.class public final synthetic Landroid/net/wifi/rtt/-$$Lambda$WifiRttManager$1$3uT7vOEOvW11feiFUB6LWvcBJEk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/wifi/rtt/RangingResultCallback;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/rtt/RangingResultCallback;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/rtt/-$$Lambda$WifiRttManager$1$3uT7vOEOvW11feiFUB6LWvcBJEk;->f$0:Landroid/net/wifi/rtt/RangingResultCallback;

    iput-object p2, p0, Landroid/net/wifi/rtt/-$$Lambda$WifiRttManager$1$3uT7vOEOvW11feiFUB6LWvcBJEk;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/rtt/-$$Lambda$WifiRttManager$1$3uT7vOEOvW11feiFUB6LWvcBJEk;->f$0:Landroid/net/wifi/rtt/RangingResultCallback;

    iget-object v1, p0, Landroid/net/wifi/rtt/-$$Lambda$WifiRttManager$1$3uT7vOEOvW11feiFUB6LWvcBJEk;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/net/wifi/rtt/WifiRttManager$1;->lambda$onRangingResults$1(Landroid/net/wifi/rtt/RangingResultCallback;Ljava/util/List;)V

    return-void
.end method
