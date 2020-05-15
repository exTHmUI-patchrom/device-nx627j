.class public final Landroid/se/omapi/Session;
.super Ljava/lang/Object;
.source "Session.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OMAPI.Session"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mReader:Landroid/se/omapi/Reader;

.field private final mService:Landroid/se/omapi/SEService;

.field private final mSession:Landroid/se/omapi/ISecureElementSession;


# direct methods
.method constructor <init>(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementSession;Landroid/se/omapi/Reader;)V
    .locals 2
    .param p1, "service"    # Landroid/se/omapi/SEService;
    .param p2, "session"    # Landroid/se/omapi/ISecureElementSession;
    .param p3, "reader"    # Landroid/se/omapi/Reader;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/Session;->mLock:Ljava/lang/Object;

    .line 52
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 55
    iput-object p1, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    .line 56
    iput-object p3, p0, Landroid/se/omapi/Session;->mReader:Landroid/se/omapi/Reader;

    .line 57
    iput-object p2, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

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

    .line 94
    iget-object v0, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-string v0, "OMAPI.Session"

    const-string/jumbo v1, "service not connected to system"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/se/omapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementSession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "OMAPI.Session"

    const-string v3, "Error closing session"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public closeChannels()V
    .locals 4

    .line 125
    iget-object v0, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const-string v0, "OMAPI.Session"

    const-string/jumbo v1, "service not connected to system"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Landroid/se/omapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementSession;->closeChannels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    goto :goto_0

    .line 136
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "OMAPI.Session"

    const-string v3, "Error closing channels"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getATR()[B
    .locals 3

    .line 79
    iget-object v0, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementSession;->getAtr()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReader()Landroid/se/omapi/Reader;
    .locals 1

    .line 66
    iget-object v0, p0, Landroid/se/omapi/Session;->mReader:Landroid/se/omapi/Reader;

    return-object v0
.end method

.method public isClosed()Z
    .locals 2

    .line 114
    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementSession;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    return v1
.end method

.method public openBasicChannel([B)Landroid/se/omapi/Channel;
    .locals 1
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/se/omapi/Session;->openBasicChannel([BB)Landroid/se/omapi/Channel;

    move-result-object v0

    return-object v0
.end method

.method public openBasicChannel([BB)Landroid/se/omapi/Channel;
    .locals 4
    .param p1, "aid"    # [B
    .param p2, "p2"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Landroid/se/omapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    iget-object v2, p0, Landroid/se/omapi/Session;->mReader:Landroid/se/omapi/Reader;

    .line 208
    invoke-virtual {v2}, Landroid/se/omapi/Reader;->getSEService()Landroid/se/omapi/SEService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/se/omapi/SEService;->getListener()Landroid/se/omapi/ISecureElementListener;

    move-result-object v2

    .line 207
    invoke-interface {v1, p1, p2, v2}, Landroid/se/omapi/ISecureElementSession;->openBasicChannel([BBLandroid/se/omapi/ISecureElementListener;)Landroid/se/omapi/ISecureElementChannel;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .local v1, "channel":Landroid/se/omapi/ISecureElementChannel;
    if-nez v1, :cond_0

    .line 210
    const/4 v2, 0x0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 212
    :cond_0
    :try_start_2
    new-instance v2, Landroid/se/omapi/Channel;

    iget-object v3, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-direct {v2, v3, p0, v1}, Landroid/se/omapi/Channel;-><init>(Landroid/se/omapi/SEService;Landroid/se/omapi/Session;Landroid/se/omapi/ISecureElementChannel;)V
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-object v2

    .line 224
    .end local v1    # "channel":Landroid/se/omapi/ISecureElementChannel;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 214
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 216
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 217
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_2
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 202
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openLogicalChannel([B)Landroid/se/omapi/Channel;
    .locals 1
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/se/omapi/Session;->openLogicalChannel([BB)Landroid/se/omapi/Channel;

    move-result-object v0

    return-object v0
.end method

.method public openLogicalChannel([BB)Landroid/se/omapi/Channel;
    .locals 4
    .param p1, "aid"    # [B
    .param p2, "p2"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Landroid/se/omapi/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-object v1, p0, Landroid/se/omapi/Session;->mSession:Landroid/se/omapi/ISecureElementSession;

    iget-object v2, p0, Landroid/se/omapi/Session;->mReader:Landroid/se/omapi/Reader;

    .line 315
    invoke-virtual {v2}, Landroid/se/omapi/Reader;->getSEService()Landroid/se/omapi/SEService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/se/omapi/SEService;->getListener()Landroid/se/omapi/ISecureElementListener;

    move-result-object v2

    .line 312
    invoke-interface {v1, p1, p2, v2}, Landroid/se/omapi/ISecureElementSession;->openLogicalChannel([BBLandroid/se/omapi/ISecureElementListener;)Landroid/se/omapi/ISecureElementChannel;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .local v1, "channel":Landroid/se/omapi/ISecureElementChannel;
    if-nez v1, :cond_0

    .line 317
    const/4 v2, 0x0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 319
    :cond_0
    :try_start_2
    new-instance v2, Landroid/se/omapi/Channel;

    iget-object v3, p0, Landroid/se/omapi/Session;->mService:Landroid/se/omapi/SEService;

    invoke-direct {v2, v3, p0, v1}, Landroid/se/omapi/Channel;-><init>(Landroid/se/omapi/SEService;Landroid/se/omapi/Session;Landroid/se/omapi/ISecureElementChannel;)V
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-object v2

    .line 331
    .end local v1    # "channel":Landroid/se/omapi/ISecureElementChannel;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 320
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 321
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 323
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 324
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    :cond_2
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 308
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
