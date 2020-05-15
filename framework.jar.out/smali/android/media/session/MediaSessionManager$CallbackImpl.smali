.class final Landroid/media/session/MediaSessionManager$CallbackImpl;
.super Landroid/media/session/ICallback$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackImpl"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/session/MediaSessionManager$Callback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSessionManager$Callback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/session/MediaSessionManager$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1043
    invoke-direct {p0}, Landroid/media/session/ICallback$Stub;-><init>()V

    .line 1044
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mCallback:Landroid/media/session/MediaSessionManager$Callback;

    .line 1045
    iput-object p2, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mHandler:Landroid/os/Handler;

    .line 1046
    return-void
.end method

.method static synthetic access$1300(Landroid/media/session/MediaSessionManager$CallbackImpl;)Landroid/media/session/MediaSessionManager$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/media/session/MediaSessionManager$CallbackImpl;

    .line 1039
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mCallback:Landroid/media/session/MediaSessionManager$Callback;

    return-object v0
.end method


# virtual methods
.method public onAddressedPlayerChangedToMediaButtonReceiver(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "mediaButtonReceiver"    # Landroid/content/ComponentName;

    .line 1083
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/session/MediaSessionManager$CallbackImpl$4;

    invoke-direct {v1, p0, p1}, Landroid/media/session/MediaSessionManager$CallbackImpl$4;-><init>(Landroid/media/session/MediaSessionManager$CallbackImpl;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1089
    return-void
.end method

.method public onAddressedPlayerChangedToMediaSession(Landroid/media/session/MediaSession$Token;)V
    .locals 2
    .param p1, "sessionToken"    # Landroid/media/session/MediaSession$Token;

    .line 1072
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/session/MediaSessionManager$CallbackImpl$3;

    invoke-direct {v1, p0, p1}, Landroid/media/session/MediaSessionManager$CallbackImpl$3;-><init>(Landroid/media/session/MediaSessionManager$CallbackImpl;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1078
    return-void
.end method

.method public onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "mediaButtonReceiver"    # Landroid/content/ComponentName;

    .line 1062
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/session/MediaSessionManager$CallbackImpl$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/session/MediaSessionManager$CallbackImpl$2;-><init>(Landroid/media/session/MediaSessionManager$CallbackImpl;Landroid/view/KeyEvent;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1068
    return-void
.end method

.method public onMediaKeyEventDispatchedToMediaSession(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "sessionToken"    # Landroid/media/session/MediaSession$Token;

    .line 1051
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/session/MediaSessionManager$CallbackImpl$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/session/MediaSessionManager$CallbackImpl$1;-><init>(Landroid/media/session/MediaSessionManager$CallbackImpl;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1057
    return-void
.end method
