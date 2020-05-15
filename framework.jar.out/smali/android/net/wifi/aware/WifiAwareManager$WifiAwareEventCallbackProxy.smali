.class Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;
.super Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;
.source "WifiAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiAwareEventCallbackProxy"
.end annotation


# static fields
.field private static final CALLBACK_CONNECT_FAIL:I = 0x1

.field private static final CALLBACK_CONNECT_SUCCESS:I = 0x0

.field private static final CALLBACK_IDENTITY_CHANGED:I = 0x2


# instance fields
.field private final mAwareManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Landroid/os/Binder;

.field private final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;Landroid/os/Binder;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
    .locals 1
    .param p1, "mgr"    # Landroid/net/wifi/aware/WifiAwareManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "binder"    # Landroid/os/Binder;
    .param p4, "attachCallback"    # Landroid/net/wifi/aware/AttachCallback;
    .param p5, "identityChangedListener"    # Landroid/net/wifi/aware/IdentityChangedListener;

    .line 502
    invoke-direct {p0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;-><init>()V

    .line 503
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    .line 504
    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mLooper:Landroid/os/Looper;

    .line 505
    iput-object p3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mBinder:Landroid/os/Binder;

    .line 508
    new-instance v0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;

    invoke-direct {v0, p0, p2, p4, p5}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;Landroid/os/Looper;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 541
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    .line 484
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Landroid/os/Binder;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    .line 484
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mBinder:Landroid/os/Binder;

    return-object v0
.end method


# virtual methods
.method public onConnectFail(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 556
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 557
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 558
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 559
    return-void
.end method

.method public onConnectSuccess(I)V
    .locals 2
    .param p1, "clientId"    # I

    .line 547
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 548
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 549
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 550
    return-void
.end method

.method public onIdentityChanged([B)V
    .locals 2
    .param p1, "mac"    # [B

    .line 565
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 566
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 567
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 568
    return-void
.end method
