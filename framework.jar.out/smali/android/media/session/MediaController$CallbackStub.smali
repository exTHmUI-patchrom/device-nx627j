.class final Landroid/media/session/MediaController$CallbackStub;
.super Landroid/media/session/ISessionControllerCallback$Stub;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackStub"
.end annotation


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/session/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 1063
    invoke-direct {p0}, Landroid/media/session/ISessionControllerCallback$Stub;-><init>()V

    .line 1064
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    .line 1065
    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1077
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1078
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 1079
    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Landroid/media/session/MediaController;->access$600(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1081
    :cond_0
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1119
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1120
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 1121
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->access$600(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1123
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .line 1093
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1094
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 1095
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->access$600(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1097
    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .line 1085
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1086
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 1087
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->access$600(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1089
    :cond_0
    return-void
.end method

.method public onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 4
    .param p1, "parceledQueue"    # Landroid/content/pm/ParceledListSlice;

    .line 1101
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1102
    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 1103
    .local v1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    :goto_0
    iget-object v2, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 1104
    .local v2, "controller":Landroid/media/session/MediaController;
    if-eqz v2, :cond_1

    .line 1105
    const/4 v3, 0x5

    invoke-static {v2, v3, v1, v0}, Landroid/media/session/MediaController;->access$600(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1107
    :cond_1
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1111
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1112
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 1113
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/session/MediaController;->access$600(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1115
    :cond_0
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 3

    .line 1069
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1070
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 1071
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/media/session/MediaController;->access$600(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1073
    :cond_0
    return-void
.end method

.method public onVolumeInfoChanged(Landroid/media/session/ParcelableVolumeInfo;)V
    .locals 8
    .param p1, "pvi"    # Landroid/media/session/ParcelableVolumeInfo;

    .line 1127
    iget-object v0, p0, Landroid/media/session/MediaController$CallbackStub;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 1128
    .local v0, "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_0

    .line 1129
    new-instance v7, Landroid/media/session/MediaController$PlaybackInfo;

    iget v2, p1, Landroid/media/session/ParcelableVolumeInfo;->volumeType:I

    iget-object v3, p1, Landroid/media/session/ParcelableVolumeInfo;->audioAttrs:Landroid/media/AudioAttributes;

    iget v4, p1, Landroid/media/session/ParcelableVolumeInfo;->controlType:I

    iget v5, p1, Landroid/media/session/ParcelableVolumeInfo;->maxVolume:I

    iget v6, p1, Landroid/media/session/ParcelableVolumeInfo;->currentVolume:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(ILandroid/media/AudioAttributes;III)V

    .line 1131
    .local v1, "info":Landroid/media/session/MediaController$PlaybackInfo;
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/media/session/MediaController;->access$600(Landroid/media/session/MediaController;ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 1133
    .end local v1    # "info":Landroid/media/session/MediaController$PlaybackInfo;
    :cond_0
    return-void
.end method
