.class public Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
.super Ljava/lang/Object;
.source "WifiAwareDiscoverySessionState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiAwareDiscSessState"

.field private static final VDBG:Z = false

.field private static sNextPeerIdToBeAllocated:I


# instance fields
.field private mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

.field private final mCreationTime:J

.field mDbg:Z

.field private mIsPublishSession:Z

.field private mIsRangingEnabled:Z

.field private final mPeerInfoByRequestorInstanceId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPubSubId:B

.field private mSessionId:I

.field private final mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/16 v0, 0x64

    sput v0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->sNextPeerIdToBeAllocated:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/aware/WifiAwareNativeApi;IBLandroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;ZZJ)V
    .locals 1
    .param p1, "wifiAwareNativeApi"    # Lcom/android/server/wifi/aware/WifiAwareNativeApi;
    .param p2, "sessionId"    # I
    .param p3, "pubSubId"    # B
    .param p4, "callback"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .param p5, "isPublishSession"    # Z
    .param p6, "isRangingEnabled"    # Z
    .param p7, "creationTime"    # J

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mDbg:Z

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPeerInfoByRequestorInstanceId:Landroid/util/SparseArray;

    .line 76
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    .line 77
    iput p2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mSessionId:I

    .line 78
    iput-byte p3, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:B

    .line 79
    iput-object p4, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 80
    iput-boolean p5, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mIsPublishSession:Z

    .line 81
    iput-boolean p6, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mIsRangingEnabled:Z

    .line 82
    iput-wide p7, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCreationTime:J

    .line 83
    return-void
.end method

.method private getPeerIdOrAddIfNew(I[B)I
    .locals 3
    .param p1, "requestorInstanceId"    # I
    .param p2, "peerMac"    # [B

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPeerInfoByRequestorInstanceId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPeerInfoByRequestorInstanceId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;

    .line 295
    .local v1, "peerInfo":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;
    iget v2, v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;->mInstanceId:I

    if-ne v2, p1, :cond_0

    iget-object v2, v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;->mMac:[B

    invoke-static {p2, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPeerInfoByRequestorInstanceId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    return v2

    .line 293
    .end local v1    # "peerInfo":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v0    # "i":I
    :cond_1
    sget v0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->sNextPeerIdToBeAllocated:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->sNextPeerIdToBeAllocated:I

    .line 302
    .local v0, "newPeerId":I
    new-instance v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;

    invoke-direct {v1, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;-><init>(I[B)V

    .line 303
    .local v1, "newPeerInfo":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPeerInfoByRequestorInstanceId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 316
    const-string v0, "AwareSessionState:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsPublishSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mIsPublishSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPubSubId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPeerInfoByRequestorInstanceId: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPeerInfoByRequestorInstanceId:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public getCallback()Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCreationTime:J

    return-wide v0
.end method

.method public getPeerInfo(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;
    .locals 1
    .param p1, "peerId"    # I

    .line 114
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPeerInfoByRequestorInstanceId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;

    return-object v0
.end method

.method public getPubSubId()I
    .locals 1

    .line 90
    iget-byte v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:B

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mSessionId:I

    return v0
.end method

.method public isPubSubIdSession(I)Z
    .locals 1
    .param p1, "pubSubId"    # I

    .line 139
    iget-byte v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:B

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPublishSession()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mIsPublishSession:Z

    return v0
.end method

.method public isRangingEnabled()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mIsRangingEnabled:Z

    return v0
.end method

.method public onMatch(I[B[B[BII)V
    .locals 5
    .param p1, "requestorInstanceId"    # I
    .param p2, "peerMac"    # [B
    .param p3, "serviceSpecificInfo"    # [B
    .param p4, "matchFilter"    # [B
    .param p5, "rangingIndication"    # I
    .param p6, "rangeMm"    # I

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getPeerIdOrAddIfNew(I[B)I

    move-result v0

    .line 262
    .local v0, "peerId":I
    if-nez p5, :cond_0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    invoke-interface {v1, v0, p3, p4}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onMatch(I[B[B)V

    goto :goto_0

    .line 267
    :catch_0
    move-exception v1

    goto :goto_1

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    invoke-interface {v1, v0, p3, p4, p6}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onMatchWithDistance(I[B[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    goto :goto_2

    .line 267
    :goto_1
    nop

    .line 268
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareDiscSessState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMatch: RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public onMessageReceived(I[B[B)V
    .locals 5
    .param p1, "requestorInstanceId"    # I
    .param p2, "peerMac"    # [B
    .param p3, "message"    # [B

    .line 283
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getPeerIdOrAddIfNew(I[B)I

    move-result v0

    .line 286
    .local v0, "peerId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    invoke-interface {v1, v0, p3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onMessageReceived(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareDiscSessState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageReceived: RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public sendMessage(SI[BI)Z
    .locals 13
    .param p1, "transactionId"    # S
    .param p2, "peerId"    # I
    .param p3, "message"    # [B
    .param p4, "messageId"    # I

    move-object v1, p0

    .line 214
    move/from16 v9, p4

    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPeerInfoByRequestorInstanceId:Landroid/util/SparseArray;

    move v10, p2

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;

    .line 215
    .local v11, "peerInfo":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;
    const/4 v12, 0x0

    const/4 v0, 0x1

    if-nez v11, :cond_0

    .line 216
    const-string v2, "WifiAwareDiscSessState"

    const-string v3, "sendMessage: attempting to send a message to an address which didn\'t match/contact us"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :try_start_0
    iget-object v2, v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    invoke-interface {v2, v9, v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onMessageSendFail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareDiscSessState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage: RemoteException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return v12

    .line 226
    :cond_0
    iget-object v2, v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-byte v4, v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:B

    iget v5, v11, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;->mInstanceId:I

    iget-object v6, v11, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState$PeerInfo;->mMac:[B

    move v3, p1

    move-object/from16 v7, p3

    move v8, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->sendMessage(SBI[B[BI)Z

    move-result v2

    .line 228
    .local v2, "success":Z
    if-nez v2, :cond_1

    .line 230
    :try_start_1
    iget-object v3, v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    invoke-interface {v3, v9, v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onMessageSendFail(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    goto :goto_1

    .line 231
    :catch_1
    move-exception v0

    .line 232
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "WifiAwareDiscSessState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMessage: RemoteException="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return v12

    .line 237
    :cond_1
    return v2
.end method

.method public terminate()V
    .locals 3

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 124
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mIsPublishSession:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-byte v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:B

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->stopPublish(SB)Z

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-byte v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:B

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->stopSubscribe(SB)Z

    .line 129
    :goto_0
    return-void
.end method

.method public updatePublish(SLandroid/net/wifi/aware/PublishConfig;)Z
    .locals 5
    .param p1, "transactionId"    # S
    .param p2, "config"    # Landroid/net/wifi/aware/PublishConfig;

    .line 150
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mIsPublishSession:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 151
    const-string v0, "WifiAwareDiscSessState"

    const-string v2, "A SUBSCRIBE session is being used to publish"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    invoke-interface {v0, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiAwareDiscSessState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePublish: RemoteException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-byte v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:B

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->publish(SBLandroid/net/wifi/aware/PublishConfig;)Z

    move-result v0

    .line 161
    .local v0, "success":Z
    if-nez v0, :cond_1

    .line 163
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    invoke-interface {v2, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    goto :goto_1

    .line 164
    :catch_1
    move-exception v1

    .line 165
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareDiscSessState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePublish onSessionConfigFail(): RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return v0
.end method

.method public updateSubscribe(SLandroid/net/wifi/aware/SubscribeConfig;)Z
    .locals 5
    .param p1, "transactionId"    # S
    .param p2, "config"    # Landroid/net/wifi/aware/SubscribeConfig;

    .line 180
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mIsPublishSession:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "WifiAwareDiscSessState"

    const-string v2, "A PUBLISH session is being used to subscribe"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    invoke-interface {v0, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiAwareDiscSessState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSubscribe: RemoteException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mWifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-byte v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mPubSubId:B

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->subscribe(SBLandroid/net/wifi/aware/SubscribeConfig;)Z

    move-result v0

    .line 191
    .local v0, "success":Z
    if-nez v0, :cond_1

    .line 193
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->mCallback:Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    invoke-interface {v2, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;->onSessionConfigFail(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    goto :goto_1

    .line 194
    :catch_1
    move-exception v1

    .line 195
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiAwareDiscSessState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSubscribe onSessionConfigFail(): RemoteException (FYI): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return v0
.end method
