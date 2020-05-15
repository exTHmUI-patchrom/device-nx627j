.class public Landroid/net/IpSecTransform$Builder;
.super Ljava/lang/Object;
.source "IpSecTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfig:Landroid/net/IpSecConfig;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iput-object p1, p0, Landroid/net/IpSecTransform$Builder;->mContext:Landroid/content/Context;

    .line 509
    new-instance v0, Landroid/net/IpSecConfig;

    invoke-direct {v0}, Landroid/net/IpSecConfig;-><init>()V

    iput-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    .line 510
    return-void
.end method


# virtual methods
.method public buildTransportModeTransform(Ljava/net/InetAddress;Landroid/net/IpSecManager$SecurityParameterIndex;)Landroid/net/IpSecTransform;
    .locals 3
    .param p1, "sourceAddress"    # Ljava/net/InetAddress;
    .param p2, "spi"    # Landroid/net/IpSecManager$SecurityParameterIndex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-virtual {p2}, Landroid/net/IpSecManager$SecurityParameterIndex;->getResourceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 458
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/IpSecConfig;->setMode(I)V

    .line 459
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/IpSecConfig;->setSourceAddress(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {p2}, Landroid/net/IpSecManager$SecurityParameterIndex;->getResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/IpSecConfig;->setSpiResourceId(I)V

    .line 462
    new-instance v0, Landroid/net/IpSecTransform;

    iget-object v1, p0, Landroid/net/IpSecTransform$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-direct {v0, v1, v2}, Landroid/net/IpSecTransform;-><init>(Landroid/content/Context;Landroid/net/IpSecConfig;)V

    invoke-static {v0}, Landroid/net/IpSecTransform;->access$300(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform;

    move-result-object v0

    return-object v0

    .line 456
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid SecurityParameterIndex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buildTunnelModeTransform(Ljava/net/InetAddress;Landroid/net/IpSecManager$SecurityParameterIndex;)Landroid/net/IpSecTransform;
    .locals 3
    .param p1, "sourceAddress"    # Ljava/net/InetAddress;
    .param p2, "spi"    # Landroid/net/IpSecManager$SecurityParameterIndex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-virtual {p2}, Landroid/net/IpSecManager$SecurityParameterIndex;->getResourceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 495
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/IpSecConfig;->setMode(I)V

    .line 496
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/IpSecConfig;->setSourceAddress(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {p2}, Landroid/net/IpSecManager$SecurityParameterIndex;->getResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/IpSecConfig;->setSpiResourceId(I)V

    .line 498
    new-instance v0, Landroid/net/IpSecTransform;

    iget-object v1, p0, Landroid/net/IpSecTransform$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-direct {v0, v1, v2}, Landroid/net/IpSecTransform;-><init>(Landroid/content/Context;Landroid/net/IpSecConfig;)V

    invoke-static {v0}, Landroid/net/IpSecTransform;->access$300(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform;

    move-result-object v0

    return-object v0

    .line 493
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid SecurityParameterIndex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAuthenticatedEncryption(Landroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform$Builder;
    .locals 1
    .param p1, "algo"    # Landroid/net/IpSecAlgorithm;

    .line 395
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v0, p1}, Landroid/net/IpSecConfig;->setAuthenticatedEncryption(Landroid/net/IpSecAlgorithm;)V

    .line 397
    return-object p0
.end method

.method public setAuthentication(Landroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform$Builder;
    .locals 1
    .param p1, "algo"    # Landroid/net/IpSecAlgorithm;

    .line 375
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v0, p1}, Landroid/net/IpSecConfig;->setAuthentication(Landroid/net/IpSecAlgorithm;)V

    .line 377
    return-object p0
.end method

.method public setEncryption(Landroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform$Builder;
    .locals 1
    .param p1, "algo"    # Landroid/net/IpSecAlgorithm;

    .line 360
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v0, p1}, Landroid/net/IpSecConfig;->setEncryption(Landroid/net/IpSecAlgorithm;)V

    .line 362
    return-object p0
.end method

.method public setIpv4Encapsulation(Landroid/net/IpSecManager$UdpEncapsulationSocket;I)Landroid/net/IpSecTransform$Builder;
    .locals 2
    .param p1, "localSocket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .param p2, "remotePort"    # I

    .line 416
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/IpSecConfig;->setEncapType(I)V

    .line 418
    invoke-virtual {p1}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->getResourceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 421
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {p1}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->getResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/IpSecConfig;->setEncapSocketResourceId(I)V

    .line 422
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v0, p2}, Landroid/net/IpSecConfig;->setEncapRemotePort(I)V

    .line 423
    return-object p0

    .line 419
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UdpEncapsulationSocket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
