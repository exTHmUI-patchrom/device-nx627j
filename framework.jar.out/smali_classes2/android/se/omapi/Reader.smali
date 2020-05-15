.class public final Landroid/se/omapi/Reader;
.super Ljava/lang/Object;
.source "Reader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OMAPI.Reader"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mReader:Landroid/se/omapi/ISecureElementReader;

.field private final mService:Landroid/se/omapi/SEService;


# direct methods
.method constructor <init>(Landroid/se/omapi/SEService;Ljava/lang/String;Landroid/se/omapi/ISecureElementReader;)V
    .locals 2
    .param p1, "service"    # Landroid/se/omapi/SEService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "reader"    # Landroid/se/omapi/ISecureElementReader;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/Reader;->mLock:Ljava/lang/Object;

    .line 50
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 53
    iput-object p2, p0, Landroid/se/omapi/Reader;->mName:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    .line 55
    iput-object p3, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    .line 56
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public closeSessions()V
    .locals 2

    .line 143
    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string v0, "OMAPI.Reader"

    const-string/jumbo v1, "service is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Landroid/se/omapi/Reader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementReader;->closeSessions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    goto :goto_0

    .line 151
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 150
    :catch_0
    move-exception v1

    .line 151
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Landroid/se/omapi/Reader;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSEService()Landroid/se/omapi/SEService;
    .locals 1

    .line 135
    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    return-object v0
.end method

.method public isSecureElementPresent()Z
    .locals 3

    .line 118
    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementReader;->isSecureElementPresent()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error in isSecureElementPresent()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service is not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openSession()Landroid/se/omapi/Session;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Landroid/se/omapi/Reader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Landroid/se/omapi/Reader;->mReader:Landroid/se/omapi/ISecureElementReader;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementReader;->openSession()Landroid/se/omapi/ISecureElementSession;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .local v1, "session":Landroid/se/omapi/ISecureElementSession;
    nop

    .line 102
    nop

    .line 104
    if-eqz v1, :cond_0

    .line 107
    :try_start_1
    new-instance v2, Landroid/se/omapi/Session;

    iget-object v3, p0, Landroid/se/omapi/Reader;->mService:Landroid/se/omapi/SEService;

    invoke-direct {v2, v3, v1, p0}, Landroid/se/omapi/Session;-><init>(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementSession;Landroid/se/omapi/Reader;)V

    monitor-exit v0

    return-object v2

    .line 105
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "service session is null."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    .end local v1    # "session":Landroid/se/omapi/ISecureElementSession;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 100
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service is not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
