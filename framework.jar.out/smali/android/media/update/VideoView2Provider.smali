.class public interface abstract Landroid/media/update/VideoView2Provider;
.super Ljava/lang/Object;
.source "VideoView2Provider.java"

# interfaces
.implements Landroid/media/update/ViewGroupProvider;


# virtual methods
.method public abstract getMediaControlView2_impl()Landroid/widget/MediaControlView2;
.end method

.method public abstract getMediaController_impl()Landroid/media/session/MediaController;
.end method

.method public abstract getMediaMetadata_impl()Landroid/media/MediaMetadata2;
.end method

.method public abstract getMediaSessionToken_impl()Landroid/media/SessionToken2;
.end method

.method public abstract getViewType_impl()I
.end method

.method public abstract initialize(Landroid/util/AttributeSet;II)V
.end method

.method public abstract isSubtitleEnabled_impl()Z
.end method

.method public abstract setAudioAttributes_impl(Landroid/media/AudioAttributes;)V
.end method

.method public abstract setAudioFocusRequest_impl(I)V
.end method

.method public abstract setCustomActions_impl(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/widget/VideoView2$OnCustomActionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/widget/VideoView2$OnCustomActionListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setDataSource_impl(Landroid/media/DataSourceDesc;)V
.end method

.method public abstract setFullScreenRequestListener_impl(Landroid/widget/VideoView2$OnFullScreenRequestListener;)V
.end method

.method public abstract setMediaControlView2_impl(Landroid/widget/MediaControlView2;J)V
.end method

.method public abstract setMediaItem_impl(Landroid/media/MediaItem2;)V
.end method

.method public abstract setMediaMetadata_impl(Landroid/media/MediaMetadata2;)V
.end method

.method public abstract setOnViewTypeChangedListener_impl(Landroid/widget/VideoView2$OnViewTypeChangedListener;)V
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end method

.method public abstract setSpeed_impl(F)V
.end method

.method public abstract setSubtitleEnabled_impl(Z)V
.end method

.method public abstract setVideoPath_impl(Ljava/lang/String;)V
.end method

.method public abstract setVideoUri_impl(Landroid/net/Uri;)V
.end method

.method public abstract setVideoUri_impl(Landroid/net/Uri;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setViewType_impl(I)V
.end method
