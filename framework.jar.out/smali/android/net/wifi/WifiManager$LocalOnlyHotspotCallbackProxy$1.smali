.class Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

.field final synthetic val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 2812
    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->this$0:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2815
    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalOnlyHotspotCallbackProxy: handle message what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->this$0:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

    invoke-static {v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->access$100(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 2819
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 2820
    const-string v1, "WifiManager"

    const-string v2, "LocalOnlyHotspotCallbackProxy: handle message post GC"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    return-void

    .line 2824
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2846
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalOnlyHotspotCallbackProxy unhandled message.  type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2839
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2840
    .local v1, "reasonCode":I
    const-string v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalOnlyHotspotCallbackProxy: failed to start.  reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    iget-object v2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    .line 2843
    const-string v2, "WifiManager"

    const-string v3, "done with the callback..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    goto :goto_0

    .line 2835
    .end local v1    # "reasonCode":I
    :pswitch_1
    const-string v1, "WifiManager"

    const-string v2, "LocalOnlyHotspotCallbackProxy: hotspot stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStopped()V

    .line 2837
    goto :goto_0

    .line 2826
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2827
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_1

    .line 2828
    const-string v2, "WifiManager"

    const-string v3, "LocalOnlyHotspotCallbackProxy: config cannot be null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    iget-object v2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    .line 2830
    return-void

    .line 2832
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    new-instance v3, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v3, v0, v1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    .line 2833
    nop

    .line 2849
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
