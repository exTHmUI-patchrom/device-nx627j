.class public final Landroid/net/IpSecManager;
.super Ljava/lang/Object;
.source "IpSecManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecManager$IpSecTunnelInterface;,
        Landroid/net/IpSecManager$UdpEncapsulationSocket;,
        Landroid/net/IpSecManager$SecurityParameterIndex;,
        Landroid/net/IpSecManager$ResourceUnavailableException;,
        Landroid/net/IpSecManager$SpiUnavailableException;,
        Landroid/net/IpSecManager$Status;,
        Landroid/net/IpSecManager$PolicyDirection;
    }
.end annotation


# static fields
.field public static final DIRECTION_IN:I = 0x0

.field public static final DIRECTION_OUT:I = 0x1

.field public static final INVALID_RESOURCE_ID:I = -0x1

.field public static final INVALID_SECURITY_PARAMETER_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IpSecManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/net/IIpSecService;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 453
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/IIpSecService;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IIpSecService;

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    iput-object p1, p0, Landroid/net/IpSecManager;->mContext:Landroid/content/Context;

    .line 935
    const-string/jumbo v0, "missing service"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IIpSecService;

    iput-object v0, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    .line 936
    return-void
.end method

.method private static maybeHandleServiceSpecificException(Landroid/os/ServiceSpecificException;)V
    .locals 2
    .param p0, "sse"    # Landroid/os/ServiceSpecificException;

    .line 940
    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v1, Landroid/system/OsConstants;->EINVAL:I

    if-eq v0, v1, :cond_2

    .line 942
    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v1, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v0, v1, :cond_1

    .line 944
    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v1, Landroid/system/OsConstants;->EOPNOTSUPP:I

    if-eq v0, v1, :cond_0

    .line 947
    return-void

    .line 945
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 943
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 941
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;
    .locals 3
    .param p0, "sse"    # Landroid/os/ServiceSpecificException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 972
    invoke-static {p0}, Landroid/net/IpSecManager;->maybeHandleServiceSpecificException(Landroid/os/ServiceSpecificException;)V

    .line 974
    new-instance v0, Landroid/system/ErrnoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpSec encountered errno="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v0, v1, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 975
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method static rethrowUncheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "sse"    # Landroid/os/ServiceSpecificException;

    .line 957
    invoke-static {p0}, Landroid/net/IpSecManager;->maybeHandleServiceSpecificException(Landroid/os/ServiceSpecificException;)V

    .line 958
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public allocateSecurityParameterIndex(Ljava/net/InetAddress;)Landroid/net/IpSecManager$SecurityParameterIndex;
    .locals 4
    .param p1, "destinationAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 278
    :try_start_0
    new-instance v0, Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;Ljava/net/InetAddress;ILandroid/net/IpSecManager$1;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 284
    :catch_0
    move-exception v0

    .line 287
    .local v0, "unlikely":Landroid/net/IpSecManager$SpiUnavailableException;
    new-instance v1, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string v2, "No SPIs available"

    invoke-direct {v1, v2}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    .end local v0    # "unlikely":Landroid/net/IpSecManager$SpiUnavailableException;
    :catch_1
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowUncheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public allocateSecurityParameterIndex(Ljava/net/InetAddress;I)Landroid/net/IpSecManager$SecurityParameterIndex;
    .locals 3
    .param p1, "destinationAddress"    # Ljava/net/InetAddress;
    .param p2, "requestedSpi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 311
    if-eqz p2, :cond_0

    .line 315
    :try_start_0
    new-instance v0, Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;Ljava/net/InetAddress;ILandroid/net/IpSecManager$1;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowUncheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 312
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested SPI must be a valid (non-zero) SPI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public applyTransportModeTransform(Ljava/io/FileDescriptor;ILandroid/net/IpSecTransform;)V
    .locals 4
    .param p1, "socket"    # Ljava/io/FileDescriptor;
    .param p2, "direction"    # I
    .param p3, "transform"    # Landroid/net/IpSecTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    .line 452
    :try_start_1
    iget-object v2, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    invoke-virtual {p3}, Landroid/net/IpSecTransform;->getResourceId()I

    move-result v3

    invoke-interface {v2, v0, p2, v3}, Landroid/net/IIpSecService;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    if-eqz v0, :cond_0

    :try_start_2
    invoke-static {v1, v0}, Landroid/net/IpSecManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 457
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    nop

    .line 458
    return-void

    .line 453
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 451
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 453
    :goto_0
    if-eqz v0, :cond_1

    :try_start_4
    invoke-static {v1, v0}, Landroid/net/IpSecManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v2
    :try_end_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 455
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 453
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public applyTransportModeTransform(Ljava/net/DatagramSocket;ILandroid/net/IpSecTransform;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "direction"    # I
    .param p3, "transform"    # Landroid/net/IpSecTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/net/IpSecManager;->applyTransportModeTransform(Ljava/io/FileDescriptor;ILandroid/net/IpSecTransform;)V

    .line 403
    return-void
.end method

.method public applyTransportModeTransform(Ljava/net/Socket;ILandroid/net/IpSecTransform;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "direction"    # I
    .param p3, "transform"    # Landroid/net/IpSecTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-virtual {p1}, Ljava/net/Socket;->getSoLinger()I

    .line 368
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/net/IpSecManager;->applyTransportModeTransform(Ljava/io/FileDescriptor;ILandroid/net/IpSecTransform;)V

    .line 369
    return-void
.end method

.method public applyTunnelModeTransform(Landroid/net/IpSecManager$IpSecTunnelInterface;ILandroid/net/IpSecTransform;)V
    .locals 4
    .param p1, "tunnel"    # Landroid/net/IpSecManager$IpSecTunnelInterface;
    .param p2, "direction"    # I
    .param p3, "transform"    # Landroid/net/IpSecTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 917
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    .line 918
    invoke-virtual {p1}, Landroid/net/IpSecManager$IpSecTunnelInterface;->getResourceId()I

    move-result v1

    .line 919
    invoke-virtual {p3}, Landroid/net/IpSecTransform;->getResourceId()I

    move-result v2

    iget-object v3, p0, Landroid/net/IpSecManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 917
    invoke-interface {v0, v1, p2, v2, v3}, Landroid/net/IIpSecService;->applyTunnelModeTransform(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    nop

    .line 925
    return-void

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 920
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 921
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public createIpSecTunnelInterface(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)Landroid/net/IpSecManager$IpSecTunnelInterface;
    .locals 8
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "remoteAddress"    # Ljava/net/InetAddress;
    .param p3, "underlyingNetwork"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 889
    :try_start_0
    new-instance v7, Landroid/net/IpSecManager$IpSecTunnelInterface;

    iget-object v1, p0, Landroid/net/IpSecManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/net/IpSecManager$IpSecTunnelInterface;-><init>(Landroid/content/Context;Landroid/net/IIpSecService;Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;Landroid/net/IpSecManager$1;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public openUdpEncapsulationSocket()Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 705
    :try_start_0
    new-instance v0, Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager$1;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public openUdpEncapsulationSocket(I)Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .line 674
    if-eqz p1, :cond_0

    .line 678
    :try_start_0
    new-instance v0, Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager$1;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 675
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified port must be a valid port number!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeTransportModeTransforms(Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "socket"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    .line 512
    :try_start_1
    iget-object v2, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    invoke-interface {v2, v0}, Landroid/net/IIpSecService;->removeTransportModeTransforms(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    if-eqz v0, :cond_0

    :try_start_2
    invoke-static {v1, v0}, Landroid/net/IpSecManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 517
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    nop

    .line 518
    return-void

    .line 513
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 511
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 513
    :goto_0
    if-eqz v0, :cond_1

    :try_start_4
    invoke-static {v1, v0}, Landroid/net/IpSecManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v2
    :try_end_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 515
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v0

    .line 516
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 513
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 514
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowCheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public removeTransportModeTransforms(Ljava/net/DatagramSocket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/IpSecManager;->removeTransportModeTransforms(Ljava/io/FileDescriptor;)V

    .line 495
    return-void
.end method

.method public removeTransportModeTransforms(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    invoke-virtual {p1}, Ljava/net/Socket;->getSoLinger()I

    .line 477
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/IpSecManager;->removeTransportModeTransforms(Ljava/io/FileDescriptor;)V

    .line 478
    return-void
.end method

.method public removeTunnelModeTransform(Landroid/net/Network;Landroid/net/IpSecTransform;)V
    .locals 0
    .param p1, "net"    # Landroid/net/Network;
    .param p2, "transform"    # Landroid/net/IpSecTransform;

    .line 533
    return-void
.end method
