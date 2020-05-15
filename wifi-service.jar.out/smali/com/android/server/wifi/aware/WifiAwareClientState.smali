.class public Lcom/android/server/wifi/aware/WifiAwareClientState;
.super Ljava/lang/Object;
.source "WifiAwareClientState.java"


# static fields
.field private static final ALL_ZERO_MAC:[B

.field static final CLUSTER_CHANGE_EVENT_JOINED:I = 0x1

.field static final CLUSTER_CHANGE_EVENT_STARTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiAwareClientState"

.field private static final VDBG:Z = false


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mCallback:Landroid/net/wifi/aware/IWifiAwareEventCallback;

.field private final mCallingPackage:Ljava/lang/String;

.field private final mClientId:I

.field private mConfigRequest:Landroid/net/wifi/aware/ConfigRequest;

.field private final mContext:Landroid/content/Context;

.field private final mCreationTime:J

.field mDbg:Z

.field private mLastDiscoveryInterfaceMac:[B

.field private final mNotifyIdentityChange:Z

.field private final mPid:I

.field private final mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;",
            ">;"
        }
    .end annotation
.end field

.field private final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/aware/WifiAwareClientState;->ALL_ZERO_MAC:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;ZJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientId"    # I
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callback"    # Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .param p7, "configRequest"    # Landroid/net/wifi/aware/ConfigRequest;
    .param p8, "notifyIdentityChange"    # Z
    .param p9, "creationTime"    # J

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mDbg:Z

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    .line 67
    sget-object v0, Lcom/android/server/wifi/aware/WifiAwareClientState;->ALL_ZERO_MAC:[B

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mLastDiscoveryInterfaceMac:[B

    .line 72
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mContext:Landroid/content/Context;

    .line 73
    iput p2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mClientId:I

    .line 74
    iput p3, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mUid:I

    .line 75
    iput p4, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mPid:I

    .line 76
    iput-object p5, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCallingPackage:Ljava/lang/String;

    .line 77
    iput-object p6, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCallback:Landroid/net/wifi/aware/IWifiAwareEventCallback;

    .line 78
    iput-object p7, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mConfigRequest:Landroid/net/wifi/aware/ConfigRequest;

    .line 79
    iput-boolean p8, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mNotifyIdentityChange:Z

    .line 81
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mAppOps:Landroid/app/AppOpsManager;

    .line 82
    iput-wide p9, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCreationTime:J

    .line 83
    return-void
.end method

.method private hasLocationingPermission()Z
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    iget v2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mPid:I

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mUid:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mUid:I

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCallingPackage:Ljava/lang/String;

    .line 271
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 270
    :cond_0
    return v1
.end method


# virtual methods
.method public addSession(Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;)V
    .locals 4
    .param p1, "session"    # Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    .line 150
    invoke-virtual {p1}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->getSessionId()I

    move-result v0

    .line 151
    .local v0, "sessionId":I
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "WifiAwareClientState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSession: sessionId already exists (replaced) - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->terminate()V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mConfigRequest:Landroid/net/wifi/aware/ConfigRequest;

    .line 95
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 280
    const-string v0, "AwareClientState:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mClientId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mClientId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConfigRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mConfigRequest:Landroid/net/wifi/aware/ConfigRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNotifyIdentityChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mNotifyIdentityChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCallback:Landroid/net/wifi/aware/IWifiAwareEventCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSessions: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getAwareSessionStateForPubSubId(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    .locals 3
    .param p1, "pubSubId"    # I

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    .line 136
    .local v1, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->isPubSubIdSession(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    return-object v1

    .line 134
    .end local v1    # "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mClientId:I

    return v0
.end method

.method public getConfigRequest()Landroid/net/wifi/aware/ConfigRequest;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mConfigRequest:Landroid/net/wifi/aware/ConfigRequest;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCreationTime:J

    return-wide v0
.end method

.method public getNotifyIdentityChange()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mNotifyIdentityChange:Z

    return v0
.end method

.method public getSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    .locals 1
    .param p1, "sessionId"    # I

    .line 201
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    return-object v0
.end method

.method public getSessions()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mUid:I

    return v0
.end method

.method public onClusterChange(I[B[B)V
    .locals 4
    .param p1, "flag"    # I
    .param p2, "mac"    # [B
    .param p3, "currentDiscoveryInterfaceMac"    # [B

    .line 253
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mNotifyIdentityChange:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mLastDiscoveryInterfaceMac:[B

    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->hasLocationingPermission()Z

    move-result v0

    .line 258
    .local v0, "hasPermission":Z
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCallback:Landroid/net/wifi/aware/IWifiAwareEventCallback;

    .line 259
    if-eqz v0, :cond_0

    .line 258
    move-object v2, p3

    goto :goto_0

    .line 259
    :cond_0
    sget-object v2, Lcom/android/server/wifi/aware/WifiAwareClientState;->ALL_ZERO_MAC:[B

    .line 258
    :goto_0
    invoke-interface {v1, v2}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onIdentityChanged([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v0    # "hasPermission":Z
    goto :goto_1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiAwareClientState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIdentityChanged: RemoteException - ignored: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    iput-object p3, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mLastDiscoveryInterfaceMac:[B

    .line 266
    return-void
.end method

.method public onInterfaceAddressChange([B)V
    .locals 4
    .param p1, "mac"    # [B

    .line 220
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mNotifyIdentityChange:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mLastDiscoveryInterfaceMac:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareClientState;->hasLocationingPermission()Z

    move-result v0

    .line 224
    .local v0, "hasPermission":Z
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mCallback:Landroid/net/wifi/aware/IWifiAwareEventCallback;

    if-eqz v0, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/server/wifi/aware/WifiAwareClientState;->ALL_ZERO_MAC:[B

    :goto_0
    invoke-interface {v1, v2}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onIdentityChanged([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0    # "hasPermission":Z
    goto :goto_1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiAwareClientState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIdentityChanged: RemoteException - ignored: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mLastDiscoveryInterfaceMac:[B

    .line 231
    return-void
.end method

.method public removeSession(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .line 166
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    const-string v0, "WifiAwareClientState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSession: sessionId doesn\'t exist - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 172
    return-void
.end method

.method public terminateSession(I)Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    .locals 4
    .param p1, "sessionId"    # I

    .line 181
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;

    .line 182
    .local v0, "session":Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;
    if-nez v0, :cond_0

    .line 183
    const-string v1, "WifiAwareClientState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "terminateSession: sessionId doesn\'t exist - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v1, 0x0

    return-object v1

    .line 187
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareDiscoverySessionState;->terminate()V

    .line 188
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareClientState;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 190
    return-object v0
.end method
