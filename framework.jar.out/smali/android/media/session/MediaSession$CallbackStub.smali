.class public Landroid/media/session/MediaSession$CallbackStub;
.super Landroid/media/session/ISessionCallback$Stub;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackStub"
.end annotation


# instance fields
.field private mMediaSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSession;)V
    .locals 1
    .param p1, "session"    # Landroid/media/session/MediaSession;

    .line 1056
    invoke-direct {p0}, Landroid/media/session/ISessionCallback$Stub;-><init>()V

    .line 1057
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    .line 1058
    return-void
.end method

.method private static createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1062
    new-instance v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 1063
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, p0, p1, p2, v1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;IILandroid/os/IBinder;)V

    .line 1062
    return-object v0
.end method


# virtual methods
.method public onAdjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "direction"    # I

    .line 1278
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1279
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1280
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1, p5}, Landroid/media/session/MediaSession;->access$2500(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;I)V

    .line 1283
    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "command"    # Ljava/lang/String;
    .param p6, "args"    # Landroid/os/Bundle;
    .param p7, "cb"    # Landroid/os/ResultReceiver;

    .line 1069
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1070
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1071
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1, p5, p6, p7}, Landroid/media/session/MediaSession;->access$500(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1074
    :cond_0
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "action"    # Ljava/lang/String;
    .param p6, "args"    # Landroid/os/Bundle;

    .line 1268
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1269
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1270
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1, p5, p6}, Landroid/media/session/MediaSession;->access$2400(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1273
    :cond_0
    return-void
.end method

.method public onFastForward(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1232
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1233
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1234
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/session/MediaSession;->access$2000(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    .line 1236
    :cond_0
    return-void
.end method

.method public onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "mediaButtonIntent"    # Landroid/content/Intent;
    .param p5, "sequenceNumber"    # I
    .param p6, "cb"    # Landroid/os/ResultReceiver;

    .line 1079
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1081
    .local v0, "session":Landroid/media/session/MediaSession;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1082
    :try_start_0
    invoke-static {p1, p2, p3, v1}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v2

    invoke-static {v0, v2, p4}, Landroid/media/session/MediaSession;->access$600(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1086
    :catchall_0
    move-exception v2

    if-eqz p6, :cond_0

    .line 1087
    invoke-virtual {p6, p5, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    throw v2

    .line 1086
    :cond_1
    :goto_0
    if-eqz p6, :cond_2

    .line 1087
    invoke-virtual {p6, p5, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1090
    :cond_2
    return-void
.end method

.method public onMediaButtonFromController(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/content/Intent;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "mediaButtonIntent"    # Landroid/content/Intent;

    .line 1095
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1096
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1097
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1, p5}, Landroid/media/session/MediaSession;->access$600(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;)V

    .line 1100
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1214
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1215
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1216
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/session/MediaSession;->access$1800(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    .line 1218
    :cond_0
    return-void
.end method

.method public onPause(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1196
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1197
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1198
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/session/MediaSession;->access$1600(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    .line 1200
    :cond_0
    return-void
.end method

.method public onPlay(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1146
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1147
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1148
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/session/MediaSession;->access$1100(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    .line 1150
    :cond_0
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "mediaId"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 1156
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1157
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1158
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1, p5, p6}, Landroid/media/session/MediaSession;->access$1200(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1161
    :cond_0
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "query"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 1167
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1168
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1169
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1, p5, p6}, Landroid/media/session/MediaSession;->access$1300(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1172
    :cond_0
    return-void
.end method

.method public onPlayFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 1177
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1178
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1179
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1, p5, p6}, Landroid/media/session/MediaSession;->access$1400(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1182
    :cond_0
    return-void
.end method

.method public onPrepare(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1105
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1106
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1107
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/session/MediaSession;->access$700(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    .line 1109
    :cond_0
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "mediaId"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 1115
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1116
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1117
    nop

    .line 1118
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    .line 1117
    invoke-static {v0, v1, p5, p6}, Landroid/media/session/MediaSession;->access$800(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1120
    :cond_0
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "query"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 1126
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1127
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1128
    nop

    .line 1129
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    .line 1128
    invoke-static {v0, v1, p5, p6}, Landroid/media/session/MediaSession;->access$900(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1131
    :cond_0
    return-void
.end method

.method public onPrepareFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 1136
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1137
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1138
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1, p5, p6}, Landroid/media/session/MediaSession;->access$1000(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1141
    :cond_0
    return-void
.end method

.method public onPrevious(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1223
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1224
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1225
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/session/MediaSession;->access$1900(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    .line 1227
    :cond_0
    return-void
.end method

.method public onRate(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/media/Rating;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "rating"    # Landroid/media/Rating;

    .line 1259
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1260
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1261
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1, p5}, Landroid/media/session/MediaSession;->access$2300(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/media/Rating;)V

    .line 1263
    :cond_0
    return-void
.end method

.method public onRewind(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1241
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1242
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1243
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/session/MediaSession;->access$2100(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    .line 1245
    :cond_0
    return-void
.end method

.method public onSeekTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "pos"    # J

    .line 1250
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1251
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1252
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1, p5, p6}, Landroid/media/session/MediaSession;->access$2200(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;J)V

    .line 1254
    :cond_0
    return-void
.end method

.method public onSetVolumeTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "value"    # I

    .line 1288
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1289
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1290
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1, p5}, Landroid/media/session/MediaSession;->access$2600(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;I)V

    .line 1293
    :cond_0
    return-void
.end method

.method public onSkipToTrack(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "id"    # J

    .line 1187
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1188
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1189
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1, p5, p6}, Landroid/media/session/MediaSession;->access$1500(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;J)V

    .line 1191
    :cond_0
    return-void
.end method

.method public onStop(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1205
    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1206
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1207
    invoke-static {p1, p2, p3, p4}, Landroid/media/session/MediaSession$CallbackStub;->createRemoteUserInfo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/session/MediaSession;->access$1700(Landroid/media/session/MediaSession;Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    .line 1209
    :cond_0
    return-void
.end method
