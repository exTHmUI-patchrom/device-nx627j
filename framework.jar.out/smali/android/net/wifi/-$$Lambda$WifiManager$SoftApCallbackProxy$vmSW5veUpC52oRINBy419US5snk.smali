.class public final synthetic Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$vmSW5veUpC52oRINBy419US5snk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$vmSW5veUpC52oRINBy419US5snk;->f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    iput p2, p0, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$vmSW5veUpC52oRINBy419US5snk;->f$1:I

    iput p3, p0, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$vmSW5veUpC52oRINBy419US5snk;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$vmSW5veUpC52oRINBy419US5snk;->f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    iget v1, p0, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$vmSW5veUpC52oRINBy419US5snk;->f$1:I

    iget v2, p0, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$vmSW5veUpC52oRINBy419US5snk;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onStateChanged$0(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;II)V

    return-void
.end method
