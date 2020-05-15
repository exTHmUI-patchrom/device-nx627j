.class Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDrmInfoHandlerDelegate"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnDrmInfoListener:Landroid/media/MediaPlayer$OnDrmInfoListener;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$OnDrmInfoListener;Landroid/os/Handler;)V
    .locals 0
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "listener"    # Landroid/media/MediaPlayer$OnDrmInfoListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 4504
    iput-object p1, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4505
    iput-object p2, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 4506
    iput-object p3, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mOnDrmInfoListener:Landroid/media/MediaPlayer$OnDrmInfoListener;

    .line 4509
    if-eqz p4, :cond_0

    .line 4510
    iput-object p4, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 4519
    :cond_0
    return-void
.end method

.method static synthetic access$3300(Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    .line 4499
    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;)Landroid/media/MediaPlayer$OnDrmInfoListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    .line 4499
    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mOnDrmInfoListener:Landroid/media/MediaPlayer$OnDrmInfoListener;

    return-object v0
.end method


# virtual methods
.method notifyClient(Landroid/media/MediaPlayer$DrmInfo;)V
    .locals 2
    .param p1, "drmInfo"    # Landroid/media/MediaPlayer$DrmInfo;

    .line 4522
    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4523
    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate$1;

    invoke-direct {v1, p0, p1}, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate$1;-><init>(Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;Landroid/media/MediaPlayer$DrmInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4531
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mOnDrmInfoListener:Landroid/media/MediaPlayer$OnDrmInfoListener;

    iget-object v1, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, p1}, Landroid/media/MediaPlayer$OnDrmInfoListener;->onDrmInfo(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$DrmInfo;)V

    .line 4533
    :goto_0
    return-void
.end method
