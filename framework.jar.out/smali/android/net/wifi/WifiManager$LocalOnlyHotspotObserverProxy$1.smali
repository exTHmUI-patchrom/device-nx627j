.class Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;-><init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

.field final synthetic val$observer:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 2955
    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;->this$0:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;->val$observer:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 2958
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalOnlyHotspotObserverProxy: handle message what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;->this$0:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

    invoke-static {v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->access$200(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 2962
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 2963
    const-string v1, "WifiManager"

    const-string v2, "LocalOnlyHotspotObserverProxy: handle message post GC"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    return-void

    .line 2967
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    .line 2983
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalOnlyHotspotObserverProxy unhandled message.  type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2980
    :pswitch_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;->val$observer:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;->onStopped()V

    .line 2981
    goto :goto_0

    .line 2972
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2973
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_1

    .line 2974
    const-string v2, "WifiManager"

    const-string v3, "LocalOnlyHotspotObserverProxy: config cannot be null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    return-void

    .line 2977
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;->val$observer:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;->onStarted(Landroid/net/wifi/WifiConfiguration;)V

    .line 2978
    goto :goto_0

    .line 2969
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;->val$observer:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;

    new-instance v2, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;-><init>(Landroid/net/wifi/WifiManager;)V

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;->onRegistered(Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;)V

    .line 2970
    nop

    .line 2986
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
