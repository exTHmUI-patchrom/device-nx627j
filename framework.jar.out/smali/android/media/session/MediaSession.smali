.class public final Landroid/media/session/MediaSession;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSession$CallbackMessageHandler;,
        Landroid/media/session/MediaSession$Command;,
        Landroid/media/session/MediaSession$QueueItem;,
        Landroid/media/session/MediaSession$CallbackStub;,
        Landroid/media/session/MediaSession$Callback;,
        Landroid/media/session/MediaSession$Token;,
        Landroid/media/session/MediaSession$SessionFlags;
    }
.end annotation


# static fields
.field public static final FLAG_EXCLUSIVE_GLOBAL_PRIORITY:I = 0x10000

.field public static final FLAG_HANDLES_MEDIA_BUTTONS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_HANDLES_TRANSPORT_CONTROLS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INVALID_PID:I = -0x1

.field public static final INVALID_UID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MediaSession"


# instance fields
.field private mActive:Z

.field private final mBinder:Landroid/media/session/ISession;

.field private mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private final mCbStub:Landroid/media/session/MediaSession$CallbackStub;

.field private final mController:Landroid/media/session/MediaController;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxBitmapSize:I

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private final mSessionToken:Landroid/media/session/MediaSession$Token;

.field private mVolumeProvider:Landroid/media/VolumeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .line 151
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/session/MediaSession;->mActive:Z

    .line 166
    if-eqz p1, :cond_1

    .line 169
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/media/session/MediaSession;->mMaxBitmapSize:I

    .line 174
    new-instance v0, Landroid/media/session/MediaSession$CallbackStub;

    invoke-direct {v0, p0}, Landroid/media/session/MediaSession$CallbackStub;-><init>(Landroid/media/session/MediaSession;)V

    iput-object v0, p0, Landroid/media/session/MediaSession;->mCbStub:Landroid/media/session/MediaSession$CallbackStub;

    .line 175
    const-string/jumbo v0, "media_session"

    .line 176
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    .line 178
    .local v0, "manager":Landroid/media/session/MediaSessionManager;
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mCbStub:Landroid/media/session/MediaSession$CallbackStub;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/session/MediaSessionManager;->createSession(Landroid/media/session/MediaSession$CallbackStub;Ljava/lang/String;I)Landroid/media/session/ISession;

    move-result-object v1

    iput-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    .line 179
    new-instance v1, Landroid/media/session/MediaSession$Token;

    iget-object v2, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v2}, Landroid/media/session/ISession;->getController()Landroid/media/session/ISessionController;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    iput-object v1, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 180
    new-instance v1, Landroid/media/session/MediaController;

    iget-object v2, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {v1, p1, v2}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v1, p0, Landroid/media/session/MediaSession;->mController:Landroid/media/session/MediaController;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    nop

    .line 184
    return-void

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Remote error creating session."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 170
    .end local v0    # "manager":Landroid/media/session/MediaSessionManager;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tag cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1000(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaSession;->dispatchPrepareFromUri(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 78
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchPlay(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaSession;->dispatchPlayFromMediaId(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaSession;->dispatchPlayFromSearch(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaSession;->dispatchPlayFromUri(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;J)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "x2"    # J

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaSession;->dispatchSkipToItem(Landroid/media/session/MediaSessionManager$RemoteUserInfo;J)V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 78
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchPause(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 78
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchStop(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 78
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchNext(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 78
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchPrevious(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 78
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchFastForward(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 78
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchRewind(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;J)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "x2"    # J

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaSession;->dispatchSeekTo(Landroid/media/session/MediaSessionManager$RemoteUserInfo;J)V

    return-void
.end method

.method static synthetic access$2300(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/media/Rating;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "x2"    # Landroid/media/Rating;

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchRate(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/media/Rating;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaSession;->dispatchCustomAction(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "x2"    # I

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchAdjustVolume(Landroid/media/session/MediaSessionManager$RemoteUserInfo;I)V

    return-void
.end method

.method static synthetic access$2600(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "x2"    # I

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchSetVolumeTo(Landroid/media/session/MediaSessionManager$RemoteUserInfo;I)V

    return-void
.end method

.method static synthetic access$2900(Landroid/media/session/MediaSession;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .line 78
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .line 78
    iget-object v0, p0, Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSession;

    .line 78
    iget-object v0, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;J)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # J

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/session/MediaSession;->dispatchMediaButtonDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;J)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x4"    # Landroid/os/ResultReceiver;

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/session/MediaSession;->dispatchCommand(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$600(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "x2"    # Landroid/content/Intent;

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchMediaButton(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 78
    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchPrepare(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaSession;->dispatchPrepareFromMediaId(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/session/MediaSession;
    .param p1, "x1"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaSession;->dispatchPrepareFromSearch(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchAdjustVolume(Landroid/media/session/MediaSessionManager$RemoteUserInfo;I)V
    .locals 3
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "direction"    # I

    .line 648
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 649
    return-void
.end method

.method private dispatchCommand(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "resultCb"    # Landroid/os/ResultReceiver;

    .line 657
    new-instance v0, Landroid/media/session/MediaSession$Command;

    invoke-direct {v0, p2, p3, p4}, Landroid/media/session/MediaSession$Command;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 658
    .local v0, "cmd":Landroid/media/session/MediaSession$Command;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 659
    return-void
.end method

.method private dispatchCustomAction(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 634
    const/16 v0, 0x14

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 635
    return-void
.end method

.method private dispatchFastForward(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 2
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 618
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-direct {p0, p1, v1, v0, v0}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 619
    return-void
.end method

.method private dispatchMediaButton(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;)V
    .locals 2
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "mediaButtonIntent"    # Landroid/content/Intent;

    .line 638
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 639
    return-void
.end method

.method private dispatchMediaButtonDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;J)V
    .locals 7
    .param p1, "info"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "mediaButtonIntent"    # Landroid/content/Intent;
    .param p3, "delay"    # J

    .line 643
    const/16 v2, 0x17

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/session/MediaSession;->postToCallbackDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;J)V

    .line 645
    return-void
.end method

.method private dispatchNext(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 2
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 610
    const/4 v0, 0x0

    const/16 v1, 0xe

    invoke-direct {p0, p1, v1, v0, v0}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 611
    return-void
.end method

.method private dispatchPause(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 2
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 602
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-direct {p0, p1, v1, v0, v0}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 603
    return-void
.end method

.method private dispatchPlay(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 2
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 582
    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p0, p1, v1, v0, v0}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 583
    return-void
.end method

.method private dispatchPlayFromMediaId(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 586
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 587
    return-void
.end method

.method private dispatchPlayFromSearch(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 590
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 591
    return-void
.end method

.method private dispatchPlayFromUri(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 594
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 595
    return-void
.end method

.method private dispatchPrepare(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 2
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 566
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v0, v0}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 567
    return-void
.end method

.method private dispatchPrepareFromMediaId(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 570
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 571
    return-void
.end method

.method private dispatchPrepareFromSearch(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 574
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 575
    return-void
.end method

.method private dispatchPrepareFromUri(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 578
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 579
    return-void
.end method

.method private dispatchPrevious(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 2
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 614
    const/4 v0, 0x0

    const/16 v1, 0xf

    invoke-direct {p0, p1, v1, v0, v0}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 615
    return-void
.end method

.method private dispatchRate(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/media/Rating;)V
    .locals 2
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "rating"    # Landroid/media/Rating;

    .line 630
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 631
    return-void
.end method

.method private dispatchRewind(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 2
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 622
    const/4 v0, 0x0

    const/16 v1, 0x11

    invoke-direct {p0, p1, v1, v0, v0}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 623
    return-void
.end method

.method private dispatchSeekTo(Landroid/media/session/MediaSessionManager$RemoteUserInfo;J)V
    .locals 3
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "pos"    # J

    .line 626
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 627
    return-void
.end method

.method private dispatchSetVolumeTo(Landroid/media/session/MediaSessionManager$RemoteUserInfo;I)V
    .locals 3
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "volume"    # I

    .line 652
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 653
    return-void
.end method

.method private dispatchSkipToItem(Landroid/media/session/MediaSessionManager$RemoteUserInfo;J)V
    .locals 3
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "id"    # J

    .line 598
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 599
    return-void
.end method

.method private dispatchStop(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 2
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 606
    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-direct {p0, p1, v1, v0, v0}, Landroid/media/session/MediaSession;->postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 607
    return-void
.end method

.method public static isActiveState(I)Z
    .locals 1
    .param p0, "state"    # I

    .line 680
    packed-switch p0, :pswitch_data_0

    .line 690
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 688
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private postToCallback(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "data"    # Landroid/os/Bundle;

    .line 662
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/media/session/MediaSession;->postToCallbackDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;J)V

    .line 663
    return-void
.end method

.method private postToCallbackDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;J)V
    .locals 9
    .param p1, "caller"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "data"    # Landroid/os/Bundle;
    .param p5, "delay"    # J

    .line 667
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 668
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v1, :cond_0

    .line 669
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/media/session/MediaSession$CallbackMessageHandler;->post(Landroid/media/session/MediaSessionManager$RemoteUserInfo;ILjava/lang/Object;Landroid/os/Bundle;J)V

    .line 671
    :cond_0
    monitor-exit v0

    .line 672
    return-void

    .line 671
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->access$200(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->access$200(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 562
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getController()Landroid/media/session/MediaController;
    .locals 1

    .line 409
    iget-object v0, p0, Landroid/media/session/MediaSession;->mController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public final getCurrentControllerInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .locals 2

    .line 524
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->access$200(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->access$200(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    return-object v0

    .line 525
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be called inside of MediaSession.Callback methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    .line 399
    iget-object v0, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 355
    iget-boolean v0, p0, Landroid/media/session/MediaSession;->mActive:Z

    return v0
.end method

.method public notifyRemoteVolumeChanged(Landroid/media/VolumeProvider;)V
    .locals 3
    .param p1, "provider"    # Landroid/media/VolumeProvider;

    .line 538
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 543
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    :try_start_1
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getCurrentVolume()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/session/ISession;->setCurrentVolume(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 548
    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Error in notifyVolumeChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 543
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 540
    :cond_1
    :goto_1
    :try_start_2
    const-string v1, "MediaSession"

    const-string v2, "Received update from stale volume provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    monitor-exit v0

    return-void

    .line 543
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 3

    .line 384
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0}, Landroid/media/session/ISession;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Error releasing session: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1, p2}, Landroid/media/session/ISession;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Error sending event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActive(Z)V
    .locals 3
    .param p1, "active"    # Z

    .line 338
    iget-boolean v0, p0, Landroid/media/session/MediaSession;->mActive:Z

    if-ne v0, p1, :cond_0

    .line 339
    return-void

    .line 342
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setActive(Z)V

    .line 343
    iput-boolean p1, p0, Landroid/media/session/MediaSession;->mActive:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setActive."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setCallback(Landroid/media/session/MediaSession$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/media/session/MediaSession$Callback;

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    .line 197
    return-void
.end method

.method public setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/session/MediaSession$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 209
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v1}, Landroid/media/session/MediaSession$CallbackMessageHandler;->access$000(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/media/session/MediaSession$Callback;->access$102(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    .line 213
    iget-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 215
    :cond_0
    if-nez p1, :cond_1

    .line 216
    iput-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 217
    monitor-exit v0

    return-void

    .line 219
    :cond_1
    if-nez p2, :cond_2

    .line 220
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object p2, v1

    .line 222
    :cond_2
    invoke-static {p1, p0}, Landroid/media/session/MediaSession$Callback;->access$102(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    .line 223
    new-instance v1, Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Landroid/media/session/MediaSession$CallbackMessageHandler;-><init>(Landroid/media/session/MediaSession;Landroid/os/Looper;Landroid/media/session/MediaSession$Callback;)V

    .line 225
    .local v1, "msgHandler":Landroid/media/session/MediaSession$CallbackMessageHandler;
    iput-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 226
    .end local v1    # "msgHandler":Landroid/media/session/MediaSession$CallbackMessageHandler;
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 509
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Dead object in setExtras."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setFlags(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 267
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setFlags(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setFlags."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "mbr"    # Landroid/app/PendingIntent;

    .line 254
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setMediaButtonReceiver."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .line 435
    if-eqz p1, :cond_0

    .line 436
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    iget v1, p0, Landroid/media/session/MediaSession;->mMaxBitmapSize:I

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;I)V

    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    .line 439
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setMetadata(Landroid/media/MediaMetadata;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Dead object in setPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 3
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 418
    iput-object p1, p0, Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 420
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setPlaybackState(Landroid/media/session/PlaybackState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Dead object in setPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .locals 3
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .line 285
    if-eqz p1, :cond_0

    .line 289
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setPlaybackToLocal."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attributes cannot be null for local playback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPlaybackToRemote(Landroid/media/VolumeProvider;)V
    .locals 3
    .param p1, "volumeProvider"    # Landroid/media/VolumeProvider;

    .line 307
    if-eqz p1, :cond_0

    .line 310
    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    iput-object p1, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    .line 312
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    new-instance v0, Landroid/media/session/MediaSession$1;

    invoke-direct {v0, p0}, Landroid/media/session/MediaSession$1;-><init>(Landroid/media/session/MediaSession;)V

    invoke-virtual {p1, v0}, Landroid/media/VolumeProvider;->setCallback(Landroid/media/VolumeProvider$Callback;)V

    .line 321
    :try_start_1
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getVolumeControl()I

    move-result v1

    .line 322
    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getMaxVolume()I

    move-result v2

    .line 321
    invoke-interface {v0, v1, v2}, Landroid/media/session/ISession;->setPlaybackToRemote(II)V

    .line 323
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getCurrentVolume()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/session/ISession;->setCurrentVolume(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 326
    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setPlaybackToRemote."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 312
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "volumeProvider may not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQueue(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 458
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :goto_0
    invoke-interface {v0, v1}, Landroid/media/session/ISession;->setQueue(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    goto :goto_1

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Dead object in setQueue."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 473
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setQueueTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Dead object in setQueueTitle."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setRatingType(I)V
    .locals 3
    .param p1, "type"    # I

    .line 494
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setRatingType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Error in setRatingType."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 238
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v0, p1}, Landroid/media/session/ISession;->setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSession"

    const-string v2, "Failure in setLaunchPendingIntent."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
