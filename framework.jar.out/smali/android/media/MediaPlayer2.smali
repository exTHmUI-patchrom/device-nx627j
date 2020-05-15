.class public abstract Landroid/media/MediaPlayer2;
.super Landroid/media/MediaPlayerBase;
.source "MediaPlayer2.java"

# interfaces
.implements Landroid/media/SubtitleController$Listener;
.implements Landroid/media/AudioRouting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer2$MetricsConstants;,
        Landroid/media/MediaPlayer2$ProvisioningServerErrorException;,
        Landroid/media/MediaPlayer2$ProvisioningNetworkErrorException;,
        Landroid/media/MediaPlayer2$NoDrmSchemeException;,
        Landroid/media/MediaPlayer2$DrmInfo;,
        Landroid/media/MediaPlayer2$PrepareDrmStatusCode;,
        Landroid/media/MediaPlayer2$DrmEventCallback;,
        Landroid/media/MediaPlayer2$OnDrmConfigHelper;,
        Landroid/media/MediaPlayer2$CallStatus;,
        Landroid/media/MediaPlayer2$CallCompleted;,
        Landroid/media/MediaPlayer2$MediaInfo;,
        Landroid/media/MediaPlayer2$MediaError;,
        Landroid/media/MediaPlayer2$OnSubtitleDataListener;,
        Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;,
        Landroid/media/MediaPlayer2$TrackInfo;,
        Landroid/media/MediaPlayer2$SeekMode;,
        Landroid/media/MediaPlayer2$PlaybackRateAudioMode;,
        Landroid/media/MediaPlayer2$MediaPlayer2State;
    }
.end annotation


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field public static final CALL_COMPLETED_ATTACH_AUX_EFFECT:I = 0x1

.field public static final CALL_COMPLETED_DESELECT_TRACK:I = 0x2

.field public static final CALL_COMPLETED_LOOP_CURRENT:I = 0x3

.field public static final CALL_COMPLETED_NOTIFY_WHEN_COMMAND_LABEL_REACHED:I = 0x3eb

.field public static final CALL_COMPLETED_PAUSE:I = 0x4

.field public static final CALL_COMPLETED_PLAY:I = 0x5

.field public static final CALL_COMPLETED_PREPARE:I = 0x6

.field public static final CALL_COMPLETED_RELEASE_DRM:I = 0xc

.field public static final CALL_COMPLETED_RESTORE_DRM_KEYS:I = 0xd

.field public static final CALL_COMPLETED_SEEK_TO:I = 0xe

.field public static final CALL_COMPLETED_SELECT_TRACK:I = 0xf

.field public static final CALL_COMPLETED_SET_AUDIO_ATTRIBUTES:I = 0x10

.field public static final CALL_COMPLETED_SET_AUDIO_SESSION_ID:I = 0x11

.field public static final CALL_COMPLETED_SET_AUX_EFFECT_SEND_LEVEL:I = 0x12

.field public static final CALL_COMPLETED_SET_BUFFERING_PARAMS:I = 0x3e9

.field public static final CALL_COMPLETED_SET_DATA_SOURCE:I = 0x13

.field public static final CALL_COMPLETED_SET_NEXT_DATA_SOURCE:I = 0x16

.field public static final CALL_COMPLETED_SET_NEXT_DATA_SOURCES:I = 0x17

.field public static final CALL_COMPLETED_SET_PLAYBACK_PARAMS:I = 0x18

.field public static final CALL_COMPLETED_SET_PLAYBACK_SPEED:I = 0x19

.field public static final CALL_COMPLETED_SET_PLAYER_VOLUME:I = 0x1a

.field public static final CALL_COMPLETED_SET_SURFACE:I = 0x1b

.field public static final CALL_COMPLETED_SET_SYNC_PARAMS:I = 0x1c

.field public static final CALL_COMPLETED_SET_VIDEO_SCALING_MODE:I = 0x3ea

.field public static final CALL_COMPLETED_SKIP_TO_NEXT:I = 0x1d

.field public static final CALL_STATUS_BAD_VALUE:I = 0x2

.field public static final CALL_STATUS_ERROR_IO:I = 0x4

.field public static final CALL_STATUS_ERROR_UNKNOWN:I = -0x80000000

.field public static final CALL_STATUS_INVALID_OPERATION:I = 0x1

.field public static final CALL_STATUS_NO_DRM_SCHEME:I = 0x5

.field public static final CALL_STATUS_NO_ERROR:I = 0x0

.field public static final CALL_STATUS_PERMISSION_DENIED:I = 0x3

.field public static final MEDIAPLAYER2_STATE_ERROR:I = 0x5

.field public static final MEDIAPLAYER2_STATE_IDLE:I = 0x1

.field public static final MEDIAPLAYER2_STATE_PAUSED:I = 0x3

.field public static final MEDIAPLAYER2_STATE_PLAYING:I = 0x4

.field public static final MEDIAPLAYER2_STATE_PREPARED:I = 0x2

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SYSTEM:I = -0x80000000

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field public static final MEDIA_INFO_AUDIO_NOT_PLAYING:I = 0x324

.field public static final MEDIA_INFO_AUDIO_RENDERING_START:I = 0x4

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_BUFFERING_UPDATE:I = 0x2c0

.field public static final MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NETWORK_BANDWIDTH:I = 0x2bf

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_PLAYBACK_COMPLETE:I = 0x5

.field public static final MEDIA_INFO_PLAYLIST_END:I = 0x6

.field public static final MEDIA_INFO_PREPARED:I = 0x64

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_VIDEO_NOT_PLAYING:I = 0x325

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final MEDIA_MIMETYPE_TEXT_CEA_608:Ljava/lang/String; = "text/cea-608"

.field public static final MEDIA_MIMETYPE_TEXT_CEA_708:Ljava/lang/String; = "text/cea-708"

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final MEDIA_MIMETYPE_TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field public static final PLAYBACK_RATE_AUDIO_MODE_DEFAULT:I = 0x0

.field public static final PLAYBACK_RATE_AUDIO_MODE_RESAMPLE:I = 0x2

.field public static final PLAYBACK_RATE_AUDIO_MODE_STRETCH:I = 0x1

.field public static final PREPARE_DRM_STATUS_PREPARATION_ERROR:I = 0x3

.field public static final PREPARE_DRM_STATUS_PROVISIONING_NETWORK_ERROR:I = 0x1

.field public static final PREPARE_DRM_STATUS_PROVISIONING_SERVER_ERROR:I = 0x2

.field public static final PREPARE_DRM_STATUS_SUCCESS:I = 0x0

.field public static final SEEK_CLOSEST:I = 0x3

.field public static final SEEK_CLOSEST_SYNC:I = 0x2

.field public static final SEEK_NEXT_SYNC:I = 0x1

.field public static final SEEK_PREVIOUS_SYNC:I = 0x0

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 514
    invoke-direct {p0}, Landroid/media/MediaPlayerBase;-><init>()V

    return-void
.end method

.method public static final create()Landroid/media/MediaPlayer2;
    .locals 1

    .line 466
    new-instance v0, Landroid/media/MediaPlayer2Impl;

    invoke-direct {v0}, Landroid/media/MediaPlayer2Impl;-><init>()V

    return-object v0
.end method

.method private static final decodeMediaPlayer2Uri(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "location"    # Ljava/lang/String;

    .line 470
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 471
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "mediaplayer2"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 472
    new-array v1, v2, [Ljava/lang/String;

    aput-object p0, v1, v3

    return-object v1

    .line 475
    :cond_0
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 476
    .local v1, "uris":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 477
    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v3

    return-object v2

    .line 480
    :cond_1
    const-string/jumbo v4, "key"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 481
    .local v4, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v5, "value"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 482
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 483
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v3

    return-object v2

    .line 486
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v2, "ls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    nop

    .line 488
    .local v3, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 489
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 493
    .end local v3    # "i":I
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method private static final encodeMediaPlayer2Uri(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .line 497
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 498
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v1, "mediaplayer2"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 499
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 502
    :cond_0
    const/4 v1, 0x0

    .line 502
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 503
    const-string/jumbo v2, "key"

    aget-object v3, p1, v1

    .line 504
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "value"

    aget-object v4, p2, v1

    .line 505
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 500
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
.end method

.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .line 1554
    return-void
.end method

.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1591
    return-void
.end method

.method public abstract addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 1610
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1573
    return-void
.end method

.method public abstract attachAuxEffect(I)V
.end method

.method public abstract clearDrmEventCallback()V
.end method

.method public abstract clearMediaPlayer2EventCallback()V
.end method

.method public abstract clearPendingCommands()V
.end method

.method public abstract close()V
.end method

.method public abstract deselectTrack(I)V
.end method

.method public easyPlaybackParams(FI)Landroid/media/PlaybackParams;
    .locals 1
    .param p1, "rate"    # F
    .param p2, "audioMode"    # I

    .line 1204
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    return-object v0
.end method

.method public abstract getAudioAttributes()Landroid/media/AudioAttributes;
.end method

.method public abstract getAudioSessionId()I
.end method

.method public abstract getBufferedPosition()J
.end method

.method public getBufferingParams()Landroid/media/BufferingParams;
    .locals 1

    .line 1119
    new-instance v0, Landroid/media/BufferingParams$Builder;

    invoke-direct {v0}, Landroid/media/BufferingParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/BufferingParams$Builder;->build()Landroid/media/BufferingParams;

    move-result-object v0

    return-object v0
.end method

.method public abstract getBufferingState()I
.end method

.method public abstract getCurrentDataSource()Landroid/media/DataSourceDesc;
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDrmInfo()Landroid/media/MediaPlayer2$DrmInfo;
.end method

.method public abstract getDrmKeyRequest([B[BLjava/lang/String;ILjava/util/Map;)Landroid/media/MediaDrm$KeyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation
.end method

.method public abstract getDrmPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation
.end method

.method public abstract getDuration()J
.end method

.method public getMaxPlayerVolume()F
    .locals 1

    .line 760
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public abstract getMediaPlayer2State()I
.end method

.method public getMediaTimeProvider()Landroid/media/MediaTimeProvider;
    .locals 1

    .line 1702
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .locals 1
    .param p1, "update_only"    # Z
    .param p2, "apply_filter"    # Z

    .line 1354
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getMetrics()Landroid/os/PersistableBundle;
.end method

.method public abstract getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 720
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public abstract getPlayerState()I
.end method

.method public abstract getPlayerVolume()F
.end method

.method public abstract getPreferredDevice()Landroid/media/AudioDeviceInfo;
.end method

.method public abstract getRoutedDevice()Landroid/media/AudioDeviceInfo;
.end method

.method public abstract getSelectedTrack(I)I
.end method

.method public abstract getSyncParams()Landroid/media/SyncParams;
.end method

.method public abstract getTimestamp()Landroid/media/MediaTimestamp;
.end method

.method public abstract getTrackInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaPlayer2$TrackInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "request"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .line 810
    return-void
.end method

.method public isLooping()Z
    .locals 1

    .line 1406
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isPlaying()Z
.end method

.method public isReversePlaybackSupported()Z
    .locals 1

    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public abstract loopCurrent(Z)V
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 1

    .line 793
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyAt(J)V
    .locals 0
    .param p1, "mediaTimeUs"    # J

    .line 1397
    return-void
.end method

.method public notifyWhenCommandLabelReached(Ljava/lang/Object;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/Object;

    .line 824
    return-void
.end method

.method public onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V
    .locals 0
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    .line 1551
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract prepare()V
.end method

.method public abstract prepareDrm(Ljava/util/UUID;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;,
            Landroid/media/ResourceBusyException;,
            Landroid/media/MediaPlayer2$ProvisioningNetworkErrorException;,
            Landroid/media/MediaPlayer2$ProvisioningServerErrorException;
        }
    .end annotation
.end method

.method public abstract provideDrmKeyResponse([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public abstract registerPlayerEventCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaPlayerBase$PlayerEventCallback;)V
.end method

.method public abstract releaseDrm()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation
.end method

.method public abstract removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
.end method

.method public abstract reset()V
.end method

.method public abstract restoreDrmKeys([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "msec"    # J

    .line 589
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaPlayer2;->seekTo(JI)V

    .line 590
    return-void
.end method

.method public abstract seekTo(JI)V
.end method

.method public abstract selectTrack(I)V
.end method

.method public abstract setAudioAttributes(Landroid/media/AudioAttributes;)V
.end method

.method public abstract setAudioSessionId(I)V
.end method

.method public abstract setAuxEffectSendLevel(F)V
.end method

.method public setBufferingParams(Landroid/media/BufferingParams;)V
    .locals 0
    .param p1, "params"    # Landroid/media/BufferingParams;

    .line 1137
    return-void
.end method

.method public abstract setDataSource(Landroid/media/DataSourceDesc;)V
.end method

.method public abstract setDisplay(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setDrmEventCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$DrmEventCallback;)V
.end method

.method public abstract setDrmPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation
.end method

.method public abstract setMediaPlayer2EventCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;)V
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1377
    .local p1, "allow":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "block":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setNextDataSource(Landroid/media/DataSourceDesc;)V
.end method

.method public abstract setNextDataSources(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/DataSourceDesc;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOnDrmConfigHelper(Landroid/media/MediaPlayer2$OnDrmConfigHelper;)V
.end method

.method public setOnSubtitleDataListener(Landroid/media/MediaPlayer2$OnSubtitleDataListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer2$OnSubtitleDataListener;

    .line 1845
    return-void
.end method

.method public abstract setPlaybackParams(Landroid/media/PlaybackParams;)V
.end method

.method public abstract setPlaybackSpeed(F)V
.end method

.method public abstract setPlayerVolume(F)V
.end method

.method public abstract setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
.end method

.method public abstract setScreenOnWhilePlaying(Z)V
.end method

.method public setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/SubtitleController;
    .param p2, "anchor"    # Landroid/media/SubtitleController$Anchor;

    .line 1547
    return-void
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract setSyncParams(Landroid/media/SyncParams;)V
.end method

.method public setVideoScalingMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 906
    return-void
.end method

.method public abstract setWakeMode(Landroid/content/Context;I)V
.end method

.method public abstract skipToNext()V
.end method

.method public stop()V
    .locals 0

    .line 921
    return-void
.end method

.method public abstract unregisterPlayerEventCallback(Landroid/media/MediaPlayerBase$PlayerEventCallback;)V
.end method
