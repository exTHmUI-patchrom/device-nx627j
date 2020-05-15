.class public final synthetic Landroid/net/wifi/rtt/-$$Lambda$WifiRttManager$1$j3tVizFtxt_z0tTXfTNSFM4Loi8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/wifi/rtt/RangingResultCallback;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/rtt/RangingResultCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/rtt/-$$Lambda$WifiRttManager$1$j3tVizFtxt_z0tTXfTNSFM4Loi8;->f$0:Landroid/net/wifi/rtt/RangingResultCallback;

    iput p2, p0, Landroid/net/wifi/rtt/-$$Lambda$WifiRttManager$1$j3tVizFtxt_z0tTXfTNSFM4Loi8;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/rtt/-$$Lambda$WifiRttManager$1$j3tVizFtxt_z0tTXfTNSFM4Loi8;->f$0:Landroid/net/wifi/rtt/RangingResultCallback;

    iget v1, p0, Landroid/net/wifi/rtt/-$$Lambda$WifiRttManager$1$j3tVizFtxt_z0tTXfTNSFM4Loi8;->f$1:I

    invoke-static {v0, v1}, Landroid/net/wifi/rtt/WifiRttManager$1;->lambda$onRangingFailure$0(Landroid/net/wifi/rtt/RangingResultCallback;I)V

    return-void
.end method
