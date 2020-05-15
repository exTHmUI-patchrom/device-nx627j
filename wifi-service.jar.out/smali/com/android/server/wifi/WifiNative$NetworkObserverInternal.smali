.class Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkObserverInternal"
.end annotation


# instance fields
.field private final mInterfaceId:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiNative;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNative;I)V
    .locals 0
    .param p2, "id"    # I

    .line 602
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 603
    iput p2, p0, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;->mInterfaceId:I

    .line 604
    return-void
.end method


# virtual methods
.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "unusedIsLinkUp"    # Z

    .line 618
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->access$500(Lcom/android/server/wifi/WifiNative;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->access$600(Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/WifiNative$IfaceManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;->mInterfaceId:I

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1200(Lcom/android/server/wifi/WifiNative$IfaceManager;I)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v1

    .line 620
    .local v1, "ifaceWithId":Lcom/android/server/wifi/WifiNative$Iface;
    if-nez v1, :cond_1

    .line 621
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v2}, Lcom/android/server/wifi/WifiNative;->access$800(Lcom/android/server/wifi/WifiNative;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    const-string v2, "WifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received iface link up/down notification on an invalid iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;->mInterfaceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    monitor-exit v0

    return-void

    .line 627
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v2}, Lcom/android/server/wifi/WifiNative;->access$600(Lcom/android/server/wifi/WifiNative;)Lcom/android/server/wifi/WifiNative$IfaceManager;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/server/wifi/WifiNative$IfaceManager;->access$1300(Lcom/android/server/wifi/WifiNative$IfaceManager;Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$Iface;

    move-result-object v2

    .line 628
    .local v2, "ifaceWithName":Lcom/android/server/wifi/WifiNative$Iface;
    if-eqz v2, :cond_3

    if-eq v2, v1, :cond_2

    goto :goto_0

    .line 635
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/WifiNative;->isInterfaceUp(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/android/server/wifi/WifiNative;->access$1400(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiNative$Iface;Z)V

    .line 636
    .end local v1    # "ifaceWithId":Lcom/android/server/wifi/WifiNative$Iface;
    .end local v2    # "ifaceWithName":Lcom/android/server/wifi/WifiNative$Iface;
    monitor-exit v0

    .line 637
    return-void

    .line 629
    .restart local v1    # "ifaceWithId":Lcom/android/server/wifi/WifiNative$Iface;
    .restart local v2    # "ifaceWithName":Lcom/android/server/wifi/WifiNative$Iface;
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative$NetworkObserverInternal;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-static {v3}, Lcom/android/server/wifi/WifiNative;->access$800(Lcom/android/server/wifi/WifiNative;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 630
    const-string v3, "WifiNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received iface link up/down notification on an invalid iface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_4
    monitor-exit v0

    return-void

    .line 636
    .end local v1    # "ifaceWithId":Lcom/android/server/wifi/WifiNative$Iface;
    .end local v2    # "ifaceWithName":Lcom/android/server/wifi/WifiNative$Iface;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
