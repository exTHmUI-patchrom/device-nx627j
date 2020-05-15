.class public final Landroid/net/IpSecManager$IpSecTunnelInterface;
.super Ljava/lang/Object;
.source "IpSecManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpSecTunnelInterface"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInterfaceName:Ljava/lang/String;

.field private final mLocalAddress:Ljava/net/InetAddress;

.field private final mOpPackageName:Ljava/lang/String;

.field private final mRemoteAddress:Ljava/net/InetAddress;

.field private mResourceId:I

.field private final mService:Landroid/net/IIpSecService;

.field private final mUnderlyingNetwork:Landroid/net/Network;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/net/IIpSecService;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IIpSecService;
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "remoteAddress"    # Ljava/net/InetAddress;
    .param p5, "underlyingNetwork"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 731
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    .line 786
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mOpPackageName:Ljava/lang/String;

    .line 787
    iput-object p2, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mService:Landroid/net/IIpSecService;

    .line 788
    iput-object p3, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mLocalAddress:Ljava/net/InetAddress;

    .line 789
    iput-object p4, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mRemoteAddress:Ljava/net/InetAddress;

    .line 790
    iput-object p5, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mUnderlyingNetwork:Landroid/net/Network;

    .line 793
    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mService:Landroid/net/IIpSecService;

    .line 795
    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 796
    invoke-virtual {p4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iget-object v6, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mOpPackageName:Ljava/lang/String;

    .line 794
    move-object v4, p5

    invoke-interface/range {v1 .. v6}, Landroid/net/IIpSecService;->createTunnelInterface(Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTunnelInterfaceResponse;

    move-result-object v0

    .line 800
    .local v0, "result":Landroid/net/IpSecTunnelInterfaceResponse;
    iget v1, v0, Landroid/net/IpSecTunnelInterfaceResponse;->status:I

    packed-switch v1, :pswitch_data_0

    .line 807
    new-instance v1, Ljava/lang/RuntimeException;

    goto :goto_0

    .line 804
    :pswitch_0
    new-instance v1, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string v2, "No more tunnel interfaces may be allocated by this requester."

    invoke-direct {v1, v2}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 802
    :pswitch_1
    nop

    .line 810
    iget v1, v0, Landroid/net/IpSecTunnelInterfaceResponse;->resourceId:I

    iput v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    .line 811
    iget-object v1, v0, Landroid/net/IpSecTunnelInterfaceResponse;->interfaceName:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mInterfaceName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    .end local v0    # "result":Landroid/net/IpSecTunnelInterfaceResponse;
    nop

    .line 815
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "constructor"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 816
    return-void

    .line 807
    .restart local v0    # "result":Landroid/net/IpSecTunnelInterfaceResponse;
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown status returned by IpSecService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/IpSecTunnelInterfaceResponse;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 812
    .end local v0    # "result":Landroid/net/IpSecTunnelInterfaceResponse;
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/net/IIpSecService;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;Landroid/net/IpSecManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/net/IIpSecService;
    .param p3, "x2"    # Ljava/net/InetAddress;
    .param p4, "x3"    # Ljava/net/InetAddress;
    .param p5, "x4"    # Landroid/net/Network;
    .param p6, "x5"    # Landroid/net/IpSecManager$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 723
    invoke-direct/range {p0 .. p5}, Landroid/net/IpSecManager$IpSecTunnelInterface;-><init>(Landroid/content/Context;Landroid/net/IIpSecService;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)V

    return-void
.end method


# virtual methods
.method public addAddress(Ljava/net/InetAddress;I)V
    .locals 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mService:Landroid/net/IIpSecService;

    iget v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v3, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/net/IIpSecService;->addAddressToTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    nop

    .line 759
    return-void

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 754
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 755
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public close()V
    .locals 5

    .line 828
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mService:Landroid/net/IIpSecService;

    iget v2, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    iget-object v3, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mOpPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/net/IIpSecService;->deleteTunnelInterface(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    :goto_0
    iput v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    .line 837
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 838
    goto :goto_1

    .line 836
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 831
    :catch_0
    move-exception v1

    .line 834
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "IpSecManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 839
    :goto_1
    return-void

    .line 829
    :catch_1
    move-exception v1

    .line 830
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 836
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    iput v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    .line 837
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 844
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 847
    :cond_0
    invoke-virtual {p0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->close()V

    .line 848
    return-void
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .line 736
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 853
    iget v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    return v0
.end method

.method public removeAddress(Ljava/net/InetAddress;I)V
    .locals 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 773
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mService:Landroid/net/IIpSecService;

    iget v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v3, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mOpPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/net/IIpSecService;->removeAddressFromTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    nop

    .line 780
    return-void

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 775
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IpSecTunnelInterface{ifname="

    .line 859
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mInterfaceName:Ljava/lang/String;

    .line 860
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",resourceId="

    .line 861
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecManager$IpSecTunnelInterface;->mResourceId:I

    .line 862
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 863
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    return-object v0
.end method
