.class public Landroid/media/MediaSession2;
.super Ljava/lang/Object;
.source "MediaSession2.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaSession2$CommandButton;,
        Landroid/media/MediaSession2$ControllerInfo;,
        Landroid/media/MediaSession2$Builder;,
        Landroid/media/MediaSession2$BuilderBase;,
        Landroid/media/MediaSession2$SessionCallback;,
        Landroid/media/MediaSession2$OnDataSourceMissingHelper;,
        Landroid/media/MediaSession2$ErrorCode;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_ACTION_ABORTED:I = 0xa

.field public static final ERROR_CODE_APP_ERROR:I = 0x1

.field public static final ERROR_CODE_AUTHENTICATION_EXPIRED:I = 0x3

.field public static final ERROR_CODE_CONCURRENT_STREAM_LIMIT:I = 0x5

.field public static final ERROR_CODE_CONTENT_ALREADY_PLAYING:I = 0x8

.field public static final ERROR_CODE_END_OF_QUEUE:I = 0xb

.field public static final ERROR_CODE_NOT_AVAILABLE_IN_REGION:I = 0x7

.field public static final ERROR_CODE_NOT_SUPPORTED:I = 0x2

.field public static final ERROR_CODE_PARENTAL_CONTROL_RESTRICTED:I = 0x6

.field public static final ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED:I = 0x4

.field public static final ERROR_CODE_SETUP_REQUIRED:I = 0xc

.field public static final ERROR_CODE_SKIP_LIMIT_REACHED:I = 0x9

.field public static final ERROR_CODE_UNKNOWN_ERROR:I


# instance fields
.field private final mProvider:Landroid/media/update/MediaSession2Provider;


# direct methods
.method public constructor <init>(Landroid/media/update/MediaSession2Provider;)V
    .locals 0
    .param p1, "provider"    # Landroid/media/update/MediaSession2Provider;

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    iput-object p1, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    .line 888
    return-void
.end method


# virtual methods
.method public addPlaylistItem(ILandroid/media/MediaItem2;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # Landroid/media/MediaItem2;

    .line 1300
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaSession2Provider;->addPlaylistItem_impl(ILandroid/media/MediaItem2;)V

    .line 1301
    return-void
.end method

.method public clearOnDataSourceMissingHelper()V
    .locals 1

    .line 1193
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->clearOnDataSourceMissingHelper_impl()V

    .line 1194
    return-void
.end method

.method public close()V
    .locals 1

    .line 919
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->close_impl()V

    .line 920
    return-void
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1123
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->getBufferedPosition_impl()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferingState()I
    .locals 1

    .line 1135
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectedControllers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaSession2$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 952
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->getConnectedControllers_impl()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaItem()Landroid/media/MediaItem2;
    .locals 1

    .line 1333
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->getCurrentPlaylistItem_impl()Landroid/media/MediaItem2;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1114
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->getCurrentPosition_impl()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 1145
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getPlayer()Landroid/media/MediaPlayerBase;
    .locals 1

    .line 926
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->getPlayer_impl()Landroid/media/MediaPlayerBase;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerState()I
    .locals 1

    .line 1104
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->getPlayerState_impl()I

    move-result v0

    return v0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;"
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->getPlaylist_impl()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistAgent()Landroid/media/MediaPlaylistAgent;
    .locals 1

    .line 933
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->getPlaylistAgent_impl()Landroid/media/MediaPlaylistAgent;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Landroid/media/MediaMetadata2;
    .locals 1

    .line 1285
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->getPlaylistMetadata_impl()Landroid/media/MediaMetadata2;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Landroid/media/update/MediaSession2Provider;
    .locals 1

    .line 894
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1355
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->getRepeatMode_impl()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .line 1380
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->getShuffleMode_impl()I

    move-result v0

    return v0
.end method

.method public getToken()Landroid/media/SessionToken2;
    .locals 1

    .line 948
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->getToken_impl()Landroid/media/SessionToken2;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeProvider()Landroid/media/VolumeProvider2;
    .locals 1

    .line 940
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->getVolumeProvider_impl()Landroid/media/VolumeProvider2;

    move-result-object v0

    return-object v0
.end method

.method public notifyError(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1095
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaSession2Provider;->notifyError_impl(ILandroid/os/Bundle;)V

    .line 1096
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1040
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->pause_impl()V

    .line 1041
    return-void
.end method

.method public play()V
    .locals 1

    .line 1031
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->play_impl()V

    .line 1032
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 1062
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->prepare_impl()V

    .line 1063
    return-void
.end method

.method public removePlaylistItem(Landroid/media/MediaItem2;)V
    .locals 1
    .param p1, "item"    # Landroid/media/MediaItem2;

    .line 1312
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider;->removePlaylistItem_impl(Landroid/media/MediaItem2;)V

    .line 1313
    return-void
.end method

.method public replacePlaylistItem(ILandroid/media/MediaItem2;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # Landroid/media/MediaItem2;

    .line 1323
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaSession2Provider;->replacePlaylistItem_impl(ILandroid/media/MediaItem2;)V

    .line 1324
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "pos"    # J

    .line 1071
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaSession2Provider;->seekTo_impl(J)V

    .line 1072
    return-void
.end method

.method public sendCustomCommand(Landroid/media/MediaSession2$ControllerInfo;Landroid/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p2, "command"    # Landroid/media/SessionCommand2;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "receiver"    # Landroid/os/ResultReceiver;

    .line 1022
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/update/MediaSession2Provider;->sendCustomCommand_impl(Landroid/media/MediaSession2$ControllerInfo;Landroid/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1023
    return-void
.end method

.method public sendCustomCommand(Landroid/media/SessionCommand2;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "command"    # Landroid/media/SessionCommand2;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1008
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaSession2Provider;->sendCustomCommand_impl(Landroid/media/SessionCommand2;Landroid/os/Bundle;)V

    .line 1009
    return-void
.end method

.method public setAllowedCommands(Landroid/media/MediaSession2$ControllerInfo;Landroid/media/SessionCommandGroup2;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .param p2, "commands"    # Landroid/media/SessionCommandGroup2;

    .line 998
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaSession2Provider;->setAllowedCommands_impl(Landroid/media/MediaSession2$ControllerInfo;Landroid/media/SessionCommandGroup2;)V

    .line 999
    return-void
.end method

.method public setAudioFocusRequest(Landroid/media/AudioFocusRequest;)V
    .locals 0
    .param p1, "afr"    # Landroid/media/AudioFocusRequest;

    .line 963
    return-void
.end method

.method public setCustomLayout(Landroid/media/MediaSession2$ControllerInfo;Ljava/util/List;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/MediaSession2$ControllerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaSession2$ControllerInfo;",
            "Ljava/util/List<",
            "Landroid/media/MediaSession2$CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 987
    .local p2, "layout":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaSession2$CommandButton;>;"
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaSession2Provider;->setCustomLayout_impl(Landroid/media/MediaSession2$ControllerInfo;Ljava/util/List;)V

    .line 988
    return-void
.end method

.method public setOnDataSourceMissingHelper(Landroid/media/MediaSession2$OnDataSourceMissingHelper;)V
    .locals 1
    .param p1, "helper"    # Landroid/media/MediaSession2$OnDataSourceMissingHelper;

    .line 1184
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider;->setOnDataSourceMissingHelper_impl(Landroid/media/MediaSession2$OnDataSourceMissingHelper;)V

    .line 1185
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .line 1153
    return-void
.end method

.method public setPlaylist(Ljava/util/List;Landroid/media/MediaMetadata2;)V
    .locals 1
    .param p2, "metadata"    # Landroid/media/MediaMetadata2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;",
            "Landroid/media/MediaMetadata2;",
            ")V"
        }
    .end annotation

    .line 1236
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaItem2;>;"
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaSession2Provider;->setPlaylist_impl(Ljava/util/List;Landroid/media/MediaMetadata2;)V

    .line 1237
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "repeatMode"    # I

    .line 1368
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider;->setRepeatMode_impl(I)V

    .line 1369
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .param p1, "shuffleMode"    # I

    .line 1392
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider;->setShuffleMode_impl(I)V

    .line 1393
    return-void
.end method

.method public skipBackward()V
    .locals 0

    .line 1086
    return-void
.end method

.method public skipForward()V
    .locals 0

    .line 1079
    return-void
.end method

.method public skipToNextItem()V
    .locals 1

    .line 1276
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->skipToNextItem_impl()V

    .line 1277
    return-void
.end method

.method public skipToPlaylistItem(Landroid/media/MediaItem2;)V
    .locals 1
    .param p1, "item"    # Landroid/media/MediaItem2;

    .line 1250
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider;->skipToPlaylistItem_impl(Landroid/media/MediaItem2;)V

    .line 1251
    return-void
.end method

.method public skipToPreviousItem()V
    .locals 1

    .line 1263
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->skipToPreviousItem_impl()V

    .line 1264
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1049
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider;->stop_impl()V

    .line 1050
    return-void
.end method

.method public updatePlayer(Landroid/media/MediaPlayerBase;Landroid/media/MediaPlaylistAgent;Landroid/media/VolumeProvider2;)V
    .locals 1
    .param p1, "player"    # Landroid/media/MediaPlayerBase;
    .param p2, "playlistAgent"    # Landroid/media/MediaPlaylistAgent;
    .param p3, "volumeProvider"    # Landroid/media/VolumeProvider2;

    .line 914
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/update/MediaSession2Provider;->updatePlayer_impl(Landroid/media/MediaPlayerBase;Landroid/media/MediaPlaylistAgent;Landroid/media/VolumeProvider2;)V

    .line 915
    return-void
.end method

.method public updatePlaylistMetadata(Landroid/media/MediaMetadata2;)V
    .locals 1
    .param p1, "metadata"    # Landroid/media/MediaMetadata2;

    .line 1342
    iget-object v0, p0, Landroid/media/MediaSession2;->mProvider:Landroid/media/update/MediaSession2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider;->updatePlaylistMetadata_impl(Landroid/media/MediaMetadata2;)V

    .line 1343
    return-void
.end method
