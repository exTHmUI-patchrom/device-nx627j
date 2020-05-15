.class public final Landroid/media/session/MediaSessionManager;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSessionManager$CallbackImpl;,
        Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;,
        Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;,
        Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;,
        Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;,
        Landroid/media/session/MediaSessionManager$RemoteUserInfo;,
        Landroid/media/session/MediaSessionManager$Callback;,
        Landroid/media/session/MediaSessionManager$OnMediaKeyListener;,
        Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;,
        Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;,
        Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    }
.end annotation


# static fields
.field public static final RESULT_MEDIA_KEY_HANDLED:I = 0x1

.field public static final RESULT_MEDIA_KEY_NOT_HANDLED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SessionManager"


# instance fields
.field private mCallback:Landroid/media/session/MediaSessionManager$CallbackImpl;

.field private mContext:Landroid/content/Context;

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;",
            "Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mOnMediaKeyListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

.field private mOnVolumeKeyLongPressListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

.field private final mService:Landroid/media/session/ISessionManager;

.field private final mSessionTokensListener:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;",
            "Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mSessionTokensListener:Landroid/util/ArrayMap;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    .line 97
    iput-object p1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    .line 98
    const-string/jumbo v0, "media_session"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 99
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    .line 100
    return-void
.end method

.method static synthetic access$1000(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .line 63
    invoke-static {p0}, Landroid/media/session/MediaSessionManager;->toTokenList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private dispatchMediaKeyEventInternal(ZLandroid/view/KeyEvent;Z)V
    .locals 3
    .param p1, "asSystemService"    # Z
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
    .param p3, "needWakeLock"    # Z

    .line 324
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/media/session/ISessionManager;->dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Failed to send key event."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private dispatchVolumeKeyEventInternal(ZLandroid/view/KeyEvent;IZ)V
    .locals 6
    .param p1, "asSystemService"    # Z
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
    .param p3, "stream"    # I
    .param p4, "musicOnly"    # Z

    .line 360
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionManager;->dispatchVolumeKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Failed to send volume key event."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private static toTokenList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/SessionToken2;",
            ">;"
        }
    .end annotation

    .line 598
    .local p0, "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .local v0, "tokens":Ljava/util/List;, "Ljava/util/List<Landroid/media/SessionToken2;>;"
    if-eqz p0, :cond_1

    .line 600
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 601
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Landroid/media/SessionToken2;->fromBundle(Landroid/os/Bundle;)Landroid/media/SessionToken2;

    move-result-object v2

    .line 602
    .local v2, "token":Landroid/media/SessionToken2;
    if-eqz v2, :cond_0

    .line 603
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    .end local v2    # "token":Landroid/media/SessionToken2;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "sessionListener"    # Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .param p2, "notificationListener"    # Landroid/content/ComponentName;

    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 182
    return-void
.end method

.method public addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V
    .locals 5
    .param p1, "sessionListener"    # Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .param p2, "notificationListener"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .line 225
    if-eqz p1, :cond_2

    .line 228
    if-nez p4, :cond_0

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p4, v0

    goto :goto_0

    .line 231
    :cond_0
    move-object v0, p4

    .line 231
    .end local p4    # "handler":Landroid/os/Handler;
    .local v0, "handler":Landroid/os/Handler;
    :goto_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object p4, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 233
    const-string p4, "SessionManager"

    const-string v2, "Attempted to add session listener twice, ignoring."

    invoke-static {p4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    monitor-exit v1

    return-void

    .line 236
    :cond_1
    new-instance p4, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-direct {p4, v2, p1, v0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;-><init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .local p4, "wrapper":Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    :try_start_1
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-static {p4}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$000(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/IActiveSessionsListener$Stub;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/media/session/ISessionManager;->addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V

    .line 240
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    goto :goto_1

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SessionManager"

    const-string v4, "Error in addOnActiveSessionsChangedListener."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local p4    # "wrapper":Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    :goto_1
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception p4

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p4

    .line 226
    .end local v0    # "handler":Landroid/os/Handler;
    .local p4, "handler":Landroid/os/Handler;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V
    .locals 1
    .param p1, "sessionListener"    # Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .param p2, "notificationListener"    # Landroid/content/ComponentName;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 202
    nop

    .line 203
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 202
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    .line 204
    return-void
.end method

.method public addOnSessionTokensChangedListener(ILjava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;

    .line 550
    if-eqz p2, :cond_2

    .line 553
    if-eqz p3, :cond_1

    .line 556
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mSessionTokensListener:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 558
    const-string v1, "SessionManager"

    const-string v2, "Attempted to add session listener twice, ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    monitor-exit v0

    return-void

    .line 561
    :cond_0
    new-instance v1, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2, p3}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    .local v1, "wrapper":Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;
    :try_start_1
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->access$200(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)Landroid/media/ISessionTokensListener$Stub;

    move-result-object v3

    iget-object v4, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4}, Landroid/media/session/ISessionManager;->addSessionTokensListener(Landroid/media/ISessionTokensListener;ILjava/lang/String;)V

    .line 565
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mSessionTokensListener:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    goto :goto_0

    .line 566
    :catch_0
    move-exception v2

    .line 567
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "SessionManager"

    const-string v4, "Error in addSessionTokensListener."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    .end local v1    # "wrapper":Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 554
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addOnSessionTokensChangedListener(Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;

    .line 532
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/media/session/MediaSessionManager;->addOnSessionTokensChangedListener(ILjava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;)V

    .line 533
    return-void
.end method

.method public createSession(Landroid/media/session/MediaSession$CallbackStub;Ljava/lang/String;I)Landroid/media/session/ISession;
    .locals 2
    .param p1, "cbStub"    # Landroid/media/session/MediaSession$CallbackStub;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/media/session/ISessionManager;->createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;I)Landroid/media/session/ISession;

    move-result-object v0

    return-object v0
.end method

.method public createSession2(Landroid/media/SessionToken2;)Z
    .locals 4
    .param p1, "token"    # Landroid/media/SessionToken2;

    .line 421
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 422
    return v0

    .line 425
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-virtual {p1}, Landroid/media/SessionToken2;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/session/ISessionManager;->createSession2(Landroid/os/Bundle;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SessionManager"

    const-string v3, "Cannot communicate with the service."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public destroySession2(Landroid/media/SessionToken2;)V
    .locals 3
    .param p1, "token"    # Landroid/media/SessionToken2;

    .line 437
    if-nez p1, :cond_0

    .line 438
    return-void

    .line 441
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-virtual {p1}, Landroid/media/SessionToken2;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionManager;->destroySession2(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Cannot communicate with the service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public dispatchAdjustVolume(III)V
    .locals 3
    .param p1, "suggestedStream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .line 381
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/media/session/ISessionManager;->dispatchAdjustVolume(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Failed to send adjust volume."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 294
    return-void
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventInternal(ZLandroid/view/KeyEvent;Z)V

    .line 305
    return-void
.end method

.method public dispatchMediaKeyEventAsSystemService(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 318
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventInternal(ZLandroid/view/KeyEvent;Z)V

    .line 319
    return-void
.end method

.method public dispatchVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I
    .param p3, "musicOnly"    # Z

    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventInternal(ZLandroid/view/KeyEvent;IZ)V

    .line 339
    return-void
.end method

.method public dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "streamType"    # I

    .line 354
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventInternal(ZLandroid/view/KeyEvent;IZ)V

    .line 355
    return-void
.end method

.method public getActiveSessionTokens()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/SessionToken2;",
            ">;"
        }
    .end annotation

    .line 461
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    .line 463
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 461
    invoke-interface {v0, v1, v2, v3}, Landroid/media/session/ISessionManager;->getSessionTokens(ZZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 464
    .local v0, "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {v0}, Landroid/media/session/MediaSessionManager;->toTokenList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 465
    .end local v0    # "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Cannot communicate with the service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "notificationListener"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 7
    .param p1, "notificationListener"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaController;>;"
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionManager;->getSessions(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 153
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 154
    new-instance v4, Landroid/media/session/MediaController;

    iget-object v5, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    .line 155
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v6}, Landroid/media/session/ISessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/ISessionController;)V

    .line 156
    .local v4, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v4    # "controller":Landroid/media/session/MediaController;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SessionManager"

    const-string v3, "Failed to get active sessions: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-object v0
.end method

.method public getAllSessionTokens()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/SessionToken2;",
            ">;"
        }
    .end annotation

    .line 509
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    .line 511
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 509
    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v1}, Landroid/media/session/ISessionManager;->getSessionTokens(ZZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 512
    .local v0, "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {v0}, Landroid/media/session/MediaSessionManager;->toTokenList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 513
    .end local v0    # "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Cannot communicate with the service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getSessionServiceTokens()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/SessionToken2;",
            ">;"
        }
    .end annotation

    .line 484
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    .line 486
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 484
    invoke-interface {v0, v1, v2, v3}, Landroid/media/session/ISessionManager;->getSessionTokens(ZZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 487
    .local v0, "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {v0}, Landroid/media/session/MediaSessionManager;->toTokenList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 488
    .end local v0    # "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Cannot communicate with the service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public isGlobalPriorityActive()Z
    .locals 3

    .line 618
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v0}, Landroid/media/session/ISessionManager;->isGlobalPriorityActive()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Failed to check if the global priority is active."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isTrustedForMediaControl(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Z
    .locals 5
    .param p1, "userInfo"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 401
    if-eqz p1, :cond_1

    .line 404
    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 405
    return v1

    .line 408
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    .line 409
    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPid()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result v4

    .line 408
    invoke-interface {v0, v2, v3, v4}, Landroid/media/session/ISessionManager;->isTrusted(Ljava/lang/String;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SessionManager"

    const-string v3, "Cannot communicate with the service."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1

    .line 402
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "userInfo may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 254
    if-eqz p1, :cond_1

    .line 257
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 259
    .local v1, "wrapper":Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    if-eqz v1, :cond_0

    .line 261
    :try_start_1
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$000(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/IActiveSessionsListener$Stub;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/media/session/ISessionManager;->removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :try_start_2
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$100(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 266
    :goto_0
    goto :goto_2

    .line 265
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 262
    :catch_0
    move-exception v2

    .line 263
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "SessionManager"

    const-string v4, "Error in removeOnActiveSessionsChangedListener."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    .end local v2    # "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$100(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V

    goto :goto_0

    :goto_1
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$100(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V

    throw v2

    .line 268
    .end local v1    # "wrapper":Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    :cond_0
    :goto_2
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 255
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeOnSessionTokensChangedListener(Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;

    .line 580
    if-eqz p1, :cond_1

    .line 583
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mSessionTokensListener:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 585
    .local v1, "wrapper":Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;
    if-eqz v1, :cond_0

    .line 587
    :try_start_1
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->access$200(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)Landroid/media/ISessionTokensListener$Stub;

    move-result-object v3

    iget-object v4, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/media/session/ISessionManager;->removeSessionTokensListener(Landroid/media/ISessionTokensListener;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 591
    :try_start_2
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->access$300(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 588
    :catch_0
    move-exception v2

    .line 589
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "SessionManager"

    const-string v4, "Error in removeSessionTokensListener."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 591
    .end local v2    # "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->access$300(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)V

    .line 592
    :goto_0
    goto :goto_2

    .line 591
    :goto_1
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->access$300(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)V

    throw v2

    .line 594
    .end local v1    # "wrapper":Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;
    :cond_0
    :goto_2
    monitor-exit v0

    .line 595
    return-void

    .line 594
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 581
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallback(Landroid/media/session/MediaSessionManager$Callback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/session/MediaSessionManager$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 705
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    if-nez p1, :cond_0

    .line 708
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mCallback:Landroid/media/session/MediaSessionManager$CallbackImpl;

    .line 709
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v2, v1}, Landroid/media/session/ISessionManager;->setCallback(Landroid/media/session/ICallback;)V

    goto :goto_0

    .line 720
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 717
    :catch_0
    move-exception v1

    goto :goto_1

    .line 711
    :cond_0
    if-nez p2, :cond_1

    .line 712
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object p2, v1

    .line 714
    :cond_1
    new-instance v1, Landroid/media/session/MediaSessionManager$CallbackImpl;

    invoke-direct {v1, p1, p2}, Landroid/media/session/MediaSessionManager$CallbackImpl;-><init>(Landroid/media/session/MediaSessionManager$Callback;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mCallback:Landroid/media/session/MediaSessionManager$CallbackImpl;

    .line 715
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mCallback:Landroid/media/session/MediaSessionManager$CallbackImpl;

    invoke-interface {v1, v2}, Landroid/media/session/ISessionManager;->setCallback(Landroid/media/session/ICallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    :goto_0
    goto :goto_2

    .line 717
    :goto_1
    nop

    .line 718
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "SessionManager"

    const-string v3, "Failed to set media key callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 720
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 721
    return-void

    .line 720
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setOnMediaKeyListener(Landroid/media/session/MediaSessionManager$OnMediaKeyListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnMediaKeyListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 675
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    if-nez p1, :cond_0

    .line 678
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    .line 679
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v2, v1}, Landroid/media/session/ISessionManager;->setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V

    goto :goto_0

    .line 690
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 687
    :catch_0
    move-exception v1

    goto :goto_1

    .line 681
    :cond_0
    if-nez p2, :cond_1

    .line 682
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object p2, v1

    .line 684
    :cond_1
    new-instance v1, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    invoke-direct {v1, p1, p2}, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;-><init>(Landroid/media/session/MediaSessionManager$OnMediaKeyListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    .line 685
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    invoke-interface {v1, v2}, Landroid/media/session/ISessionManager;->setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    :goto_0
    goto :goto_2

    .line 687
    :goto_1
    nop

    .line 688
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "SessionManager"

    const-string v3, "Failed to set media key listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 691
    return-void

    .line 690
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setOnVolumeKeyLongPressListener(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 640
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    if-nez p1, :cond_0

    .line 643
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mOnVolumeKeyLongPressListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    .line 644
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v2, v1}, Landroid/media/session/ISessionManager;->setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V

    goto :goto_0

    .line 656
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 653
    :catch_0
    move-exception v1

    goto :goto_1

    .line 646
    :cond_0
    if-nez p2, :cond_1

    .line 647
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object p2, v1

    .line 649
    :cond_1
    new-instance v1, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    invoke-direct {v1, p1, p2}, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;-><init>(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mOnVolumeKeyLongPressListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    .line 651
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mOnVolumeKeyLongPressListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    invoke-interface {v1, v2}, Landroid/media/session/ISessionManager;->setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    :goto_0
    goto :goto_2

    .line 653
    :goto_1
    nop

    .line 654
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "SessionManager"

    const-string v3, "Failed to set volume key long press listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 657
    return-void

    .line 656
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .locals 3
    .param p1, "rvc"    # Landroid/media/IRemoteVolumeController;

    .line 280
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v0, p1}, Landroid/media/session/ISessionManager;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SessionManager"

    const-string v2, "Error in setRemoteVolumeController."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
