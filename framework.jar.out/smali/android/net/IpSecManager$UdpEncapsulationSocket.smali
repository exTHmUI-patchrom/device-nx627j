.class public final Landroid/net/IpSecManager$UdpEncapsulationSocket;
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
    name = "UdpEncapsulationSocket"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mPfd:Landroid/os/ParcelFileDescriptor;

.field private final mPort:I

.field private mResourceId:I

.field private final mService:Landroid/net/IIpSecService;


# direct methods
.method private constructor <init>(Landroid/net/IIpSecService;I)V
    .locals 4
    .param p1, "service"    # Landroid/net/IIpSecService;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    .line 554
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 558
    iput-object p1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mService:Landroid/net/IIpSecService;

    .line 560
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mService:Landroid/net/IIpSecService;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 561
    invoke-interface {v0, p2, v1}, Landroid/net/IIpSecService;->openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;

    move-result-object v0

    .line 562
    .local v0, "result":Landroid/net/IpSecUdpEncapResponse;
    iget v1, v0, Landroid/net/IpSecUdpEncapResponse;->status:I

    packed-switch v1, :pswitch_data_0

    .line 569
    new-instance v1, Ljava/lang/RuntimeException;

    goto :goto_0

    .line 566
    :pswitch_0
    new-instance v1, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string v2, "No more Sockets may be allocated by this requester."

    invoke-direct {v1, v2}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 564
    :pswitch_1
    nop

    .line 572
    iget v1, v0, Landroid/net/IpSecUdpEncapResponse;->resourceId:I

    iput v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    .line 573
    iget v1, v0, Landroid/net/IpSecUdpEncapResponse;->port:I

    iput v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    .line 574
    iget-object v1, v0, Landroid/net/IpSecUdpEncapResponse;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .end local v0    # "result":Landroid/net/IpSecUdpEncapResponse;
    nop

    .line 578
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "constructor"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 579
    return-void

    .line 569
    .restart local v0    # "result":Landroid/net/IpSecUdpEncapResponse;
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown status returned by IpSecService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/IpSecUdpEncapResponse;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 575
    .end local v0    # "result":Landroid/net/IpSecUdpEncapResponse;
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/IIpSecService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/net/IpSecManager$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-direct {p0, p1, p2}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mService:Landroid/net/IIpSecService;

    iget v2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    invoke-interface {v1, v2}, Landroid/net/IIpSecService;->closeUdpEncapsulationSocket(I)V

    .line 605
    iput v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :goto_0
    iput v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    .line 614
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 615
    goto :goto_1

    .line 613
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 608
    :catch_0
    move-exception v1

    .line 611
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 618
    :goto_1
    :try_start_2
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 622
    nop

    .line 623
    return-void

    .line 619
    :catch_1
    move-exception v0

    .line 620
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to close UDP Encapsulation Socket with Port= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IpSecManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    throw v0

    .line 606
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 607
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 613
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    iput v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    .line 614
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

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

    .line 628
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 631
    :cond_0
    invoke-virtual {p0}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->close()V

    .line 632
    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 583
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    .line 584
    const/4 v0, 0x0

    return-object v0

    .line 586
    :cond_0
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 591
    iget v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    return v0
.end method

.method public getResourceId()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 637
    iget v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UdpEncapsulationSocket{port="

    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    .line 644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",resourceId="

    .line 645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    .line 646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    return-object v0
.end method
