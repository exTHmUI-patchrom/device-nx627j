.class public final Landroid/net/IpSecManager$SecurityParameterIndex;
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
    name = "SecurityParameterIndex"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mDestinationAddress:Ljava/net/InetAddress;

.field private mResourceId:I

.field private final mService:Landroid/net/IIpSecService;

.field private mSpi:I


# direct methods
.method private constructor <init>(Landroid/net/IIpSecService;Ljava/net/InetAddress;I)V
    .locals 5
    .param p1, "service"    # Landroid/net/IIpSecService;
    .param p2, "destinationAddress"    # Ljava/net/InetAddress;
    .param p3, "spi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    .line 203
    iput-object p1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    .line 204
    iput-object p2, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mDestinationAddress:Ljava/net/InetAddress;

    .line 206
    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    .line 208
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 207
    invoke-interface {v1, v2, p3, v3}, Landroid/net/IIpSecService;->allocateSecurityParameterIndex(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;

    move-result-object v1

    .line 210
    .local v1, "result":Landroid/net/IpSecSpiResponse;
    if-eqz v1, :cond_2

    .line 214
    iget v2, v1, Landroid/net/IpSecSpiResponse;->status:I

    .line 215
    .local v2, "status":I
    packed-switch v2, :pswitch_data_0

    .line 224
    new-instance v0, Ljava/lang/RuntimeException;

    goto :goto_0

    .line 222
    :pswitch_0
    new-instance v0, Landroid/net/IpSecManager$SpiUnavailableException;

    const-string v3, "Requested SPI is unavailable"

    invoke-direct {v0, v3, p3}, Landroid/net/IpSecManager$SpiUnavailableException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 219
    :pswitch_1
    new-instance v0, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string v3, "No more SPIs may be allocated by this requester."

    invoke-direct {v0, v3}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :pswitch_2
    nop

    .line 227
    iget v3, v1, Landroid/net/IpSecSpiResponse;->spi:I

    iput v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    .line 228
    iget v3, v1, Landroid/net/IpSecSpiResponse;->resourceId:I

    iput v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    .line 230
    iget v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    if-eqz v3, :cond_1

    .line 234
    iget v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v0, :cond_0

    .line 240
    .end local v1    # "result":Landroid/net/IpSecSpiResponse;
    .end local v2    # "status":I
    nop

    .line 241
    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "open"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 242
    return-void

    .line 235
    .restart local v1    # "result":Landroid/net/IpSecSpiResponse;
    .restart local v2    # "status":I
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Resource ID returned by IpSecService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid SPI returned by IpSecService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown status returned by IpSecService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    .end local v2    # "status":I
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Received null response from IpSecService"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 238
    .end local v1    # "result":Landroid/net/IpSecSpiResponse;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/net/IIpSecService;Ljava/net/InetAddress;ILandroid/net/IpSecManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/IIpSecService;
    .param p2, "x1"    # Ljava/net/InetAddress;
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/net/IpSecManager$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;Ljava/net/InetAddress;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 177
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    iget v2, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    invoke-interface {v1, v2}, Landroid/net/IIpSecService;->releaseSecurityParameterIndex(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    iput v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    .line 186
    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 187
    goto :goto_1

    .line 185
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 180
    :catch_0
    move-exception v1

    .line 183
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

    .line 188
    :goto_1
    return-void

    .line 178
    :catch_1
    move-exception v1

    .line 179
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    iput v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    .line 186
    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

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

    .line 193
    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 198
    return-void
.end method

.method public getResourceId()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 247
    iget v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    return v0
.end method

.method public getSpi()I
    .locals 1

    .line 164
    iget v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecurityParameterIndex{spi="

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",resourceId="

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    return-object v0
.end method
