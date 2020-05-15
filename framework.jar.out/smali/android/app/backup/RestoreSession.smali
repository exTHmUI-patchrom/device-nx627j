.class public Landroid/app/backup/RestoreSession;
.super Ljava/lang/Object;
.source "RestoreSession.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;,
        Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field mBinder:Landroid/app/backup/IRestoreSession;

.field final mContext:Landroid/content/Context;

.field mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "binder"    # Landroid/app/backup/IRestoreSession;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 274
    iput-object p1, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    .line 275
    iput-object p2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    .line 276
    return-void
.end method


# virtual methods
.method public endRestoreSession()V
    .locals 4

    .line 261
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    invoke-interface {v1}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :goto_0
    iput-object v0, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    .line 266
    goto :goto_1

    .line 265
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "RestoreSession"

    const-string v3, "Can\'t contact server to get available sets"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 267
    :goto_1
    return-void

    .line 265
    :goto_2
    iput-object v0, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    throw v1
.end method

.method public getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;)I
    .locals 1
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/RestoreSession;->getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result v0

    return v0
.end method

.method public getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .locals 6
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;
    .param p2, "monitor"    # Landroid/app/backup/BackupManagerMonitor;

    .line 55
    const/4 v0, -0x1

    .line 56
    .local v0, "err":I
    new-instance v1, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    .line 57
    .local v1, "obsWrapper":Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
    if-nez p2, :cond_0

    .line 58
    const/4 v2, 0x0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v2, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;

    invoke-direct {v2, p0, p2}, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/app/backup/BackupManagerMonitor;)V

    .line 61
    .local v2, "monitorWrapper":Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;
    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    invoke-interface {v3, v1, v2}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 64
    goto :goto_1

    .line 62
    :catch_0
    move-exception v3

    .line 63
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "RestoreSession"

    const-string v5, "Can\'t contact server to get available sets"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return v0
.end method

.method public restoreAll(JLandroid/app/backup/RestoreObserver;)I
    .locals 1
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/RestoreObserver;

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/backup/RestoreSession;->restoreAll(JLandroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result v0

    return v0
.end method

.method public restoreAll(JLandroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .locals 5
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/RestoreObserver;
    .param p4, "monitor"    # Landroid/app/backup/BackupManagerMonitor;

    .line 98
    const/4 v0, -0x1

    .line 99
    .local v0, "err":I
    iget-object v1, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "RestoreSession"

    const-string/jumbo v2, "restoreAll() called during active restore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v1, -0x1

    return v1

    .line 103
    :cond_0
    new-instance v1, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p3}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v1, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 104
    if-nez p4, :cond_1

    .line 105
    const/4 v1, 0x0

    goto :goto_0

    .line 106
    :cond_1
    new-instance v1, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;

    invoke-direct {v1, p0, p4}, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/app/backup/BackupManagerMonitor;)V

    .line 108
    .local v1, "monitorWrapper":Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    invoke-interface {v2, p1, p2, v3, v1}, Landroid/app/backup/IRestoreSession;->restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 111
    goto :goto_1

    .line 109
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RestoreSession"

    const-string v4, "Can\'t contact server to restore"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return v0
.end method

.method public restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/RestoreObserver;

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/backup/RestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result v0

    return v0
.end method

.method public restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/RestoreObserver;
    .param p3, "monitor"    # Landroid/app/backup/BackupManagerMonitor;

    .line 215
    const/4 v0, -0x1

    .line 216
    .local v0, "err":I
    iget-object v1, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    if-eqz v1, :cond_0

    .line 217
    const-string v1, "RestoreSession"

    const-string/jumbo v2, "restorePackage() called during active restore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v1, -0x1

    return v1

    .line 220
    :cond_0
    new-instance v1, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p2}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v1, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 221
    if-nez p3, :cond_1

    .line 222
    const/4 v1, 0x0

    goto :goto_0

    .line 223
    :cond_1
    new-instance v1, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;

    invoke-direct {v1, p0, p3}, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/app/backup/BackupManagerMonitor;)V

    .line 225
    .local v1, "monitorWrapper":Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    invoke-interface {v2, p1, v3, v1}, Landroid/app/backup/IRestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 228
    goto :goto_1

    .line 226
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RestoreSession"

    const-string v4, "Can\'t contact server to restore package"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return v0
.end method

.method public restoreSome(JLandroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;[Ljava/lang/String;)I
    .locals 8
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/RestoreObserver;
    .param p4, "monitor"    # Landroid/app/backup/BackupManagerMonitor;
    .param p5, "packages"    # [Ljava/lang/String;

    .line 155
    const/4 v0, -0x1

    .line 156
    .local v0, "err":I
    iget-object v1, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    if-eqz v1, :cond_0

    .line 157
    const-string v1, "RestoreSession"

    const-string/jumbo v2, "restoreAll() called during active restore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v1, -0x1

    return v1

    .line 160
    :cond_0
    new-instance v1, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p3}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v1, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 161
    if-nez p4, :cond_1

    .line 162
    const/4 v1, 0x0

    .line 163
    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;

    invoke-direct {v1, p0, p4}, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/app/backup/BackupManagerMonitor;)V

    goto :goto_0

    .line 165
    .local v6, "monitorWrapper":Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;
    :goto_1
    :try_start_0
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v5, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    move-wide v3, p1

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/app/backup/IRestoreSession;->restoreSome(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 168
    goto :goto_2

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RestoreSession"

    const-string v3, "Can\'t contact server to restore packages"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    return v0
.end method

.method public restoreSome(JLandroid/app/backup/RestoreObserver;[Ljava/lang/String;)I
    .locals 6
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/RestoreObserver;
    .param p4, "packages"    # [Ljava/lang/String;

    .line 192
    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/RestoreSession;->restoreSome(JLandroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
