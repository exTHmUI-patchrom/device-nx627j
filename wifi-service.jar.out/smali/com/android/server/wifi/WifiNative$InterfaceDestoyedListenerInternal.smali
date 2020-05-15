.class Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;
.super Ljava/lang/Object;
.source "WifiNative.java"

# interfaces
.implements Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceDestoyedListenerInternal"
.end annotation


# instance fields
.field private final mInterfaceId:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiNative;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNative;I)V
    .locals 0
    .param p2, "ifaceId"    # I

    .line 486
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput p2, p0, Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;->mInterfaceId:I

    .line 488
    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->access$500(Lcom/android/server/wifi/WifiNative;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->access$600(Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/WifiNative$IfaceManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;->mInterfaceId:I

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$700(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v1

    .line 494
    .local v1, "iface":Lcom/android/server/wifi/WifiNative$Iface;
    if-nez v1, :cond_1

    .line 495
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v2}, Lcom/android/server/wifi/WifiNative;->access$800(Lcom/android/server/wifi/WifiNative;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received iface destroyed notification on an invalid iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    monitor-exit v0

    return-void

    .line 501
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative$InterfaceDestoyedListenerInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiNative;->access$900(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$Iface;)V

    .line 502
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully torn down "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v1    # "iface":Lcom/android/server/wifi/WifiNative$Iface;
    monitor-exit v0

    .line 504
    return-void

    .line 503
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
