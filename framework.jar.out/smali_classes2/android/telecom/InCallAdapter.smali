.class public final Landroid/telecom/InCallAdapter;
.super Ljava/lang/Object;
.source "InCallAdapter.java"


# instance fields
.field private final mAdapter:Lcom/android/internal/telecom/IInCallAdapter;


# direct methods
.method public constructor <init>(Lcom/android/internal/telecom/IInCallAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/internal/telecom/IInCallAdapter;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    .line 49
    return-void
.end method


# virtual methods
.method public answerCall(Ljava/lang/String;I)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .line 59
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->answerCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 62
    :goto_0
    return-void
.end method

.method public conference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "otherCallId"    # Ljava/lang/String;

    .line 247
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->conference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 250
    :goto_0
    return-void
.end method

.method public deflectCall(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;

    .line 72
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->deflectCall(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 75
    :goto_0
    return-void
.end method

.method public disconnectCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .line 98
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->disconnectCall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    :goto_0
    return-void
.end method

.method public handoverTo(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "destAcct"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "videoState"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 466
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telecom/IInCallAdapter;->handoverTo(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 469
    :goto_0
    return-void
.end method

.method public holdCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .line 110
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->holdCall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    :goto_0
    return-void
.end method

.method public mergeConference(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .line 271
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->mergeConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 274
    :goto_0
    return-void
.end method

.method public mute(Z)V
    .locals 1
    .param p1, "shouldMute"    # Z

    .line 134
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->mute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 137
    :goto_0
    return-void
.end method

.method public phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "setDefault"    # Z

    .line 234
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IInCallAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 237
    :goto_0
    return-void
.end method

.method public playDtmfTone(Ljava/lang/String;C)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .line 177
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 180
    :goto_0
    return-void
.end method

.method public postDialContinue(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .line 219
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->postDialContinue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 222
    :goto_0
    return-void
.end method

.method public pullExternalCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .line 293
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->pullExternalCall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 296
    :goto_0
    return-void
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 351
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 352
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telecom/IInCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 356
    :goto_0
    return-void
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 367
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 368
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telecom/IInCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 372
    :goto_0
    return-void
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 335
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 337
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telecom/IInCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 340
    :goto_0
    return-void
.end method

.method public putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 321
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 324
    :goto_0
    return-void
.end method

.method public rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectWithMessage"    # Z
    .param p3, "textMessage"    # Ljava/lang/String;

    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IInCallAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    :goto_0
    return-void
.end method

.method public removeExtras(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 381
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 384
    :goto_0
    return-void
.end method

.method public requestBluetoothAudio(Ljava/lang/String;)V
    .locals 2
    .param p1, "bluetoothAddress"    # Ljava/lang/String;

    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IInCallAdapter;->setAudioRoute(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 164
    :goto_0
    return-void
.end method

.method public respondToRttRequest(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "accept"    # Z

    .line 428
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IInCallAdapter;->respondToRttRequest(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 431
    :goto_0
    return-void
.end method

.method public ringOnActivityStart()V
    .locals 1

    .line 474
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0}, Lcom/android/internal/telecom/IInCallAdapter;->ringOnActivityStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 477
    :goto_0
    return-void
.end method

.method public sendCallEvent(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "targetSdkVer"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 308
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telecom/IInCallAdapter;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 311
    :goto_0
    return-void
.end method

.method public sendRttRequest(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .line 415
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->sendRttRequest(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 418
    :goto_0
    return-void
.end method

.method public setAudioRoute(I)V
    .locals 2
    .param p1, "route"    # I

    .line 146
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/IInCallAdapter;->setAudioRoute(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 149
    :goto_0
    return-void
.end method

.method public setRttMode(Ljava/lang/String;I)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 449
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->setRttMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 452
    :goto_0
    return-void
.end method

.method public splitFromConference(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .line 261
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->splitFromConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 264
    :goto_0
    return-void
.end method

.method public stopDtmfTone(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .line 193
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 196
    :goto_0
    return-void
.end method

.method public stopRtt(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .line 438
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->stopRtt(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 441
    :goto_0
    return-void
.end method

.method public swapConference(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .line 281
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->swapConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 284
    :goto_0
    return-void
.end method

.method public turnProximitySensorOff(Z)V
    .locals 1
    .param p1, "screenOnImmediately"    # Z

    .line 405
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->turnOffProximitySensor(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 408
    :goto_0
    return-void
.end method

.method public turnProximitySensorOn()V
    .locals 1

    .line 391
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0}, Lcom/android/internal/telecom/IInCallAdapter;->turnOnProximitySensor()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 394
    :goto_0
    return-void
.end method

.method public unholdCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .line 122
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->unholdCall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 125
    :goto_0
    return-void
.end method
