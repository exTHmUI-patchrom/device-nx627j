.class Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;
.super Landroid/os/Handler;
.source "WifiAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;Landroid/os/Binder;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

.field final synthetic val$attachCallback:Landroid/net/wifi/aware/AttachCallback;

.field final synthetic val$identityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;Landroid/os/Looper;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 508
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    iput-object p3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$attachCallback:Landroid/net/wifi/aware/AttachCallback;

    iput-object p4, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$identityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 516
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->access$000(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 517
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_0

    .line 518
    const-string v1, "WifiAwareManager"

    const-string v2, "WifiAwareEventCallbackProxy: handleMessage post GC"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void

    .line 522
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 532
    :pswitch_0
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$identityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;

    if-nez v1, :cond_1

    .line 533
    const-string v1, "WifiAwareManager"

    const-string v2, "CALLBACK_IDENTITY_CHANGED: null listener."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$identityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v1, v2}, Landroid/net/wifi/aware/IdentityChangedListener;->onIdentityChanged([B)V

    goto :goto_0

    .line 528
    :pswitch_1
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    invoke-static {v1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->access$000(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 529
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$attachCallback:Landroid/net/wifi/aware/AttachCallback;

    invoke-virtual {v1}, Landroid/net/wifi/aware/AttachCallback;->onAttachFailed()V

    .line 530
    goto :goto_0

    .line 524
    :pswitch_2
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$attachCallback:Landroid/net/wifi/aware/AttachCallback;

    new-instance v2, Landroid/net/wifi/aware/WifiAwareSession;

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    .line 525
    invoke-static {v3}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->access$100(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Landroid/os/Binder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v2, v0, v3, v4}, Landroid/net/wifi/aware/WifiAwareSession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Binder;I)V

    .line 524
    invoke-virtual {v1, v2}, Landroid/net/wifi/aware/AttachCallback;->onAttached(Landroid/net/wifi/aware/WifiAwareSession;)V

    .line 526
    nop

    .line 539
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
