.class Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalOnlyHotspotCallbackProxy"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;

.field private final mMessenger:Landroid/os/Messenger;

.field private final mWifiManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/WifiManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
    .locals 2
    .param p1, "manager"    # Landroid/net/wifi/WifiManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    .line 2808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2809
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mWifiManager:Ljava/lang/ref/WeakReference;

    .line 2810
    iput-object p2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mLooper:Landroid/os/Looper;

    .line 2812
    new-instance v0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;

    invoke-direct {v0, p0, p2, p3}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;-><init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 2851
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mMessenger:Landroid/os/Messenger;

    .line 2852
    return-void
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

    .line 2793
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mWifiManager:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public getMessenger()Landroid/os/Messenger;
    .locals 1

    .line 2855
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public notifyFailed(I)V
    .locals 2
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2865
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2866
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2867
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2868
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 2869
    return-void
.end method
