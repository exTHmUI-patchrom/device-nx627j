.class public Landroid/widget/VideoView2;
.super Landroid/media/update/ViewGroupHelper;
.source "VideoView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/VideoView2$OnCustomActionListener;,
        Landroid/widget/VideoView2$OnFullScreenRequestListener;,
        Landroid/widget/VideoView2$OnViewTypeChangedListener;,
        Landroid/widget/VideoView2$ViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/update/ViewGroupHelper<",
        "Landroid/media/update/VideoView2Provider;",
        ">;"
    }
.end annotation


# static fields
.field public static final VIEW_TYPE_SURFACEVIEW:I = 0x1

.field public static final VIEW_TYPE_TEXTUREVIEW:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/VideoView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/VideoView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/VideoView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 146
    new-instance v1, Landroid/widget/-$$Lambda$VideoView2$uEOuYyXshHhDohoRHf3tK3H7V00;

    invoke-direct {v1, p2, p3, p4}, Landroid/widget/-$$Lambda$VideoView2$uEOuYyXshHhDohoRHf3tK3H7V00;-><init>(Landroid/util/AttributeSet;II)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/update/ViewGroupHelper;-><init>(Landroid/media/update/ViewGroupHelper$ProviderCreator;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 151
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0, p2, p3, p4}, Landroid/media/update/VideoView2Provider;->initialize(Landroid/util/AttributeSet;II)V

    .line 152
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/util/AttributeSet;IILandroid/media/update/ViewGroupHelper;Landroid/media/update/ViewGroupProvider;Landroid/media/update/ViewGroupProvider;)Landroid/media/update/VideoView2Provider;
    .locals 7
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "defStyleAttr"    # I
    .param p2, "defStyleRes"    # I
    .param p3, "instance"    # Landroid/media/update/ViewGroupHelper;
    .param p4, "superProvider"    # Landroid/media/update/ViewGroupProvider;
    .param p5, "privateProvider"    # Landroid/media/update/ViewGroupProvider;

    .line 147
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Landroid/widget/VideoView2;

    move-object v2, p4

    move-object v3, p5

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/media/update/StaticProvider;->createVideoView2(Landroid/widget/VideoView2;Landroid/media/update/ViewGroupProvider;Landroid/media/update/ViewGroupProvider;Landroid/util/AttributeSet;II)Landroid/media/update/VideoView2Provider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMediaControlView2()Landroid/widget/MediaControlView2;
    .locals 1

    .line 170
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0}, Landroid/media/update/VideoView2Provider;->getMediaControlView2_impl()Landroid/widget/MediaControlView2;

    move-result-object v0

    return-object v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .line 206
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0}, Landroid/media/update/VideoView2Provider;->getMediaController_impl()Landroid/media/session/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public getMediaMetadata()Landroid/media/MediaMetadata2;
    .locals 1

    .line 192
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0}, Landroid/media/update/VideoView2Provider;->getMediaMetadata_impl()Landroid/media/MediaMetadata2;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSessionToken()Landroid/media/SessionToken2;
    .locals 1

    .line 217
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0}, Landroid/media/update/VideoView2Provider;->getMediaSessionToken_impl()Landroid/media/SessionToken2;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 358
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0}, Landroid/media/update/VideoView2Provider;->getViewType_impl()I

    move-result v0

    return v0
.end method

.method public isSubtitleEnabled()Z
    .locals 1

    .line 236
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0}, Landroid/media/update/VideoView2Provider;->isSubtitleEnabled_impl()Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 445
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    move-object v1, v0

    check-cast v1, Landroid/media/update/VideoView2Provider;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/media/update/VideoView2Provider;->onLayout_impl(ZIIII)V

    .line 446
    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 1
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .line 278
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/VideoView2Provider;->setAudioAttributes_impl(Landroid/media/AudioAttributes;)V

    .line 279
    return-void
.end method

.method public setAudioFocusRequest(I)V
    .locals 1
    .param p1, "focusGain"    # I

    .line 269
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/VideoView2Provider;->setAudioFocusRequest_impl(I)V

    .line 270
    return-void
.end method

.method public setCustomActions(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/widget/VideoView2$OnCustomActionListener;)V
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/widget/VideoView2$OnCustomActionListener;
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

    .line 373
    .local p1, "actionList":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/PlaybackState$CustomAction;>;"
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/update/VideoView2Provider;->setCustomActions_impl(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/widget/VideoView2$OnCustomActionListener;)V

    .line 374
    return-void
.end method

.method public setDataSource(Landroid/media/DataSourceDesc;)V
    .locals 1
    .param p1, "dataSource"    # Landroid/media/DataSourceDesc;

    .line 335
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/VideoView2Provider;->setDataSource_impl(Landroid/media/DataSourceDesc;)V

    .line 336
    return-void
.end method

.method public setFullScreenRequestListener(Landroid/widget/VideoView2$OnFullScreenRequestListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/VideoView2$OnFullScreenRequestListener;

    .line 393
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/VideoView2Provider;->setFullScreenRequestListener_impl(Landroid/widget/VideoView2$OnFullScreenRequestListener;)V

    .line 394
    return-void
.end method

.method public setMediaControlView2(Landroid/widget/MediaControlView2;J)V
    .locals 1
    .param p1, "mediaControlView"    # Landroid/widget/MediaControlView2;
    .param p2, "intervalMs"    # J

    .line 162
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/update/VideoView2Provider;->setMediaControlView2_impl(Landroid/widget/MediaControlView2;J)V

    .line 163
    return-void
.end method

.method public setMediaItem(Landroid/media/MediaItem2;)V
    .locals 1
    .param p1, "mediaItem"    # Landroid/media/MediaItem2;

    .line 326
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/VideoView2Provider;->setMediaItem_impl(Landroid/media/MediaItem2;)V

    .line 327
    return-void
.end method

.method public setMediaMetadata(Landroid/media/MediaMetadata2;)V
    .locals 1
    .param p1, "metadata"    # Landroid/media/MediaMetadata2;

    .line 181
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/VideoView2Provider;->setMediaMetadata_impl(Landroid/media/MediaMetadata2;)V

    .line 182
    return-void
.end method

.method public setOnViewTypeChangedListener(Landroid/widget/VideoView2$OnViewTypeChangedListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/VideoView2$OnViewTypeChangedListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 384
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/VideoView2Provider;->setOnViewTypeChangedListener_impl(Landroid/widget/VideoView2$OnViewTypeChangedListener;)V

    .line 385
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 250
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/VideoView2Provider;->setSpeed_impl(F)V

    .line 251
    return-void
.end method

.method public setSubtitleEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 227
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/VideoView2Provider;->setSubtitleEnabled_impl(Z)V

    .line 228
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 289
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/VideoView2Provider;->setVideoPath_impl(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 300
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/VideoView2Provider;->setVideoUri_impl(Landroid/net/Uri;)V

    .line 301
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
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

    .line 316
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/VideoView2Provider;->setVideoUri_impl(Landroid/net/Uri;Ljava/util/Map;)V

    .line 317
    return-void
.end method

.method public setViewType(I)V
    .locals 1
    .param p1, "viewType"    # I

    .line 348
    iget-object v0, p0, Landroid/widget/VideoView2;->mProvider:Landroid/media/update/ViewGroupProvider;

    check-cast v0, Landroid/media/update/VideoView2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/VideoView2Provider;->setViewType_impl(I)V

    .line 349
    return-void
.end method
