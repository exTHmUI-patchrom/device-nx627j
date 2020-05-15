.class public Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
.super Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;,
        Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadStatusListener;
    }
.end annotation


# instance fields
.field private final mDownloadCallbackDeathRecipients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadProgressListenerBinderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/telephony/mbms/DownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadStatusListenerBinderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/telephony/mbms/DownloadStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadStatusListenerBinderMap:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadProgressListenerBinderMap:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    .line 49
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadStatusListenerBinderMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    .line 49
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    .line 49
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadProgressListenerBinderMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadProgressListener;)I
    .locals 1
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/DownloadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public final addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I
    .locals 6
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/IDownloadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 375
    .local v0, "uid":I
    if-eqz p1, :cond_2

    .line 378
    if-eqz p2, :cond_1

    .line 382
    new-instance v1, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$5;

    invoke-direct {v1, p0, p2, v0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$5;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IDownloadProgressListener;ILandroid/telephony/mbms/DownloadRequest;)V

    .line 389
    .local v1, "exposedCallback":Landroid/telephony/mbms/DownloadProgressListener;
    invoke-virtual {p0, p1, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadProgressListener;)I

    move-result v2

    .line 391
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 392
    new-instance v3, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;

    invoke-direct {v3, p0, v0, p1, p2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;ILandroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)V

    .line 400
    .local v3, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    iget-object v4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 402
    iget-object v4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadProgressListenerBinderMap:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .end local v3    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :cond_0
    return v2

    .line 379
    .end local v1    # "exposedCallback":Landroid/telephony/mbms/DownloadProgressListener;
    .end local v2    # "result":I
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Callback must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Download request must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStatusListener;)I
    .locals 1
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/DownloadStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public final addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I
    .locals 6
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/IDownloadStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 262
    .local v0, "uid":I
    if-eqz p1, :cond_2

    .line 265
    if-eqz p2, :cond_1

    .line 269
    new-instance v1, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;

    invoke-direct {v1, p0, p2, v0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$3;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IDownloadStatusListener;ILandroid/telephony/mbms/DownloadRequest;)V

    .line 276
    .local v1, "exposedCallback":Landroid/telephony/mbms/DownloadStatusListener;
    invoke-virtual {p0, p1, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStatusListener;)I

    move-result v2

    .line 278
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 279
    new-instance v3, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;

    invoke-direct {v3, p0, v0, p1, p2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;ILandroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)V

    .line 287
    .local v3, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    iget-object v4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 289
    iget-object v4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadStatusListenerBinderMap:Ljava/util/Map;

    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .end local v3    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :cond_0
    return v2

    .line 266
    .end local v1    # "exposedCallback":Landroid/telephony/mbms/DownloadStatusListener;
    .end local v2    # "result":I
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Callback must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Download request must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I
    .locals 1
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public dispose(I)V
    .locals 0
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    return-void
.end method

.method public download(Landroid/telephony/mbms/DownloadRequest;)I
    .locals 1
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public final initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I
    .locals 5
    .param p1, "subscriptionId"    # I
    .param p2, "callback"    # Landroid/telephony/mbms/IMbmsDownloadSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    if-eqz p2, :cond_1

    .line 127
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 129
    .local v0, "uid":I
    new-instance v1, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;

    invoke-direct {v1, p0, p2, v0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IMbmsDownloadSessionCallback;II)V

    invoke-virtual {p0, p1, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->initialize(ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)I

    move-result v1

    .line 162
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 163
    invoke-interface {p2}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;

    invoke-direct {v3, p0, v0, p1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;-><init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;II)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 171
    :cond_0
    return v1

    .line 124
    .end local v0    # "uid":I
    .end local v1    # "result":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)I
    .locals 1
    .param p1, "subscriptionId"    # I
    .param p2, "callback"    # Landroid/telephony/mbms/MbmsDownloadSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public listPendingDownloads(I)Ljava/util/List;
    .locals 1
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAppCallbackDied(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "subscriptionId"    # I

    .line 551
    return-void
.end method

.method public removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadProgressListener;)I
    .locals 1
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/DownloadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public final removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I
    .locals 4
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/IDownloadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    if-eqz p1, :cond_3

    .line 439
    if-eqz p2, :cond_2

    .line 443
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    .line 444
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    .line 445
    .local v0, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    if-eqz v0, :cond_1

    .line 449
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 451
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadProgressListenerBinderMap:Ljava/util/Map;

    .line 452
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadProgressListener;

    .line 453
    .local v1, "exposedCallback":Landroid/telephony/mbms/DownloadProgressListener;
    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {p0, p1, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadProgressListener;)I

    move-result v2

    return v2

    .line 454
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown listener"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 446
    .end local v1    # "exposedCallback":Landroid/telephony/mbms/DownloadProgressListener;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    .end local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Download request must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStatusListener;)I
    .locals 1
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/DownloadStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public final removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I
    .locals 4
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/IDownloadStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    if-eqz p1, :cond_3

    .line 326
    if-eqz p2, :cond_2

    .line 330
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadCallbackDeathRecipients:Ljava/util/Map;

    .line 331
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    .line 332
    .local v0, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    if-eqz v0, :cond_1

    .line 336
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 338
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->mDownloadStatusListenerBinderMap:Ljava/util/Map;

    .line 339
    invoke-interface {p2}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadStatusListener;

    .line 340
    .local v1, "exposedCallback":Landroid/telephony/mbms/DownloadStatusListener;
    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {p0, p1, v1}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStatusListener;)I

    move-result v2

    return v2

    .line 341
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown listener"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    .end local v1    # "exposedCallback":Landroid/telephony/mbms/DownloadStatusListener;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    .end local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Download request must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestDownloadState(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I
    .locals 1
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method public requestUpdateFileServices(ILjava/util/List;)I
    .locals 1
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    .local p2, "serviceClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I
    .locals 1
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public setTempFileRootDirectory(ILjava/lang/String;)I
    .locals 1
    .param p1, "subscriptionId"    # I
    .param p2, "rootDirectoryPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    const/4 v0, 0x0

    return v0
.end method
