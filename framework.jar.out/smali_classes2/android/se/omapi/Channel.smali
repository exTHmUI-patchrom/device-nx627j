.class public final Landroid/se/omapi/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# static fields
.field private static final TAG:Ljava/lang/String; = "OMAPI.Channel"


# instance fields
.field private final mChannel:Landroid/se/omapi/ISecureElementChannel;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/se/omapi/SEService;

.field private mSession:Landroid/se/omapi/Session;


# direct methods
.method constructor <init>(Landroid/se/omapi/SEService;Landroid/se/omapi/Session;Landroid/se/omapi/ISecureElementChannel;)V
    .locals 2
    .param p1, "service"    # Landroid/se/omapi/SEService;
    .param p2, "session"    # Landroid/se/omapi/Session;
    .param p3, "channel"    # Landroid/se/omapi/ISecureElementChannel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/Channel;->mLock:Ljava/lang/Object;

    .line 52
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 55
    iput-object p1, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    .line 56
    iput-object p2, p0, Landroid/se/omapi/Channel;->mSession:Landroid/se/omapi/Session;

    .line 57
    iput-object p3, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    .line 58
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 67
    invoke-virtual {p0}, Landroid/se/omapi/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Landroid/se/omapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "OMAPI.Channel"

    const-string v3, "Error closing channel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 76
    :cond_0
    :goto_2
    return-void
.end method

.method public getSelectResponse()[B
    .locals 3

    .line 201
    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementChannel;->getSelectResponse()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .local v0, "response":[B
    nop

    .line 209
    nop

    .line 212
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 215
    :cond_0
    return-object v0

    .line 208
    .end local v0    # "response":[B
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSession()Landroid/se/omapi/Session;
    .locals 1

    .line 187
    iget-object v0, p0, Landroid/se/omapi/Channel;->mSession:Landroid/se/omapi/Session;

    return-object v0
.end method

.method public isBasicChannel()Z
    .locals 3

    .line 104
    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementChannel;->isBasicChannel()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 4

    .line 85
    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 86
    const-string v0, "OMAPI.Channel"

    const-string/jumbo v2, "service not connected to system"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v1

    .line 90
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementChannel;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "OMAPI.Channel"

    const-string v3, "Exception in isClosed()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return v1
.end method

.method public selectNext()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :try_start_1
    iget-object v1, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementChannel;->selectNext()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transmit([B)[B
    .locals 4
    .param p1, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Landroid/se/omapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v1, p1}, Landroid/se/omapi/ISecureElementChannel;->transmit([B)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .local v1, "response":[B
    if-eqz v1, :cond_0

    .line 172
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 170
    :cond_0
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error in communicating with Secure Element"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    .end local v1    # "response":[B
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 174
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 164
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
