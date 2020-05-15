.class Landroid/media/MediaPlayer2Impl$24$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/SubtitleController$Anchor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer2Impl$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaPlayer2Impl$24;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer2Impl$24;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/MediaPlayer2Impl$24;

    .line 2126
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$24$1;->this$1:Landroid/media/MediaPlayer2Impl$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubtitleLooper()Landroid/os/Looper;
    .locals 1

    .line 2133
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .locals 0
    .param p1, "subtitleWidget"    # Landroid/media/SubtitleTrack$RenderingWidget;

    .line 2129
    return-void
.end method
