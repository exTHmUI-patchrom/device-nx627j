.class public Lcom/android/server/wifi/aware/WifiAwareServiceImpl;
.super Landroid/net/wifi/aware/IWifiAwareManager$Stub;
.source "WifiAwareServiceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiAwareService"

.field private static final VDBG:Z = false


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field mDbg:Z

.field private final mDeathRecipientsByClientId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNextClientId:I

.field private mShellCommand:Lcom/android/server/wifi/aware/WifiAwareShellCommand;

.field private mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

.field private final mUidByClientId:Landroid/util/SparseIntArray;

.field private mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDbg:Z

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mLock:Ljava/lang/Object;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDeathRecipientsByClientId:Landroid/util/SparseArray;

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mNextClientId:I

    .line 76
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mUidByClientId:Landroid/util/SparseIntArray;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    .line 80
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    .line 61
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;ILcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeApi;Lcom/android/server/wifi/aware/WifiAwareNativeCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p3, "x3"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager;
    .param p4, "x4"    # Lcom/android/server/wifi/aware/WifiAwareNativeApi;
    .param p5, "x5"    # Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enableVerboseLogging(ILcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeApi;Lcom/android/server/wifi/aware/WifiAwareNativeCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    .line 61
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    .line 61
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDeathRecipientsByClientId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    .line 61
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mUidByClientId:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    .line 61
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    return-object v0
.end method

.method private enableVerboseLogging(ILcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeApi;Lcom/android/server/wifi/aware/WifiAwareNativeCallback;)V
    .locals 2
    .param p1, "verbose"    # I
    .param p2, "awareStateManager"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p3, "wifiAwareNativeManager"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager;
    .param p4, "wifiAwareNativeApi"    # Lcom/android/server/wifi/aware/WifiAwareNativeApi;
    .param p5, "wifiAwareNativeCallback"    # Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

    .line 130
    if-lez p1, :cond_0

    .line 131
    const/4 v0, 0x1

    .local v0, "dbg":Z
    goto :goto_0

    .line 133
    .end local v0    # "dbg":Z
    :cond_0
    const/4 v0, 0x0

    .line 139
    .restart local v0    # "dbg":Z
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDbg:Z

    .line 140
    iput-boolean v0, p2, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    .line 141
    iget-object v1, p2, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p2, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iput-boolean v0, v1, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->mDbg:Z

    .line 143
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->getWifiAwareMetrics()Lcom/android/server/wifi/aware/WifiAwareMetrics;

    move-result-object v1

    iput-boolean v0, v1, Lcom/android/server/wifi/aware/WifiAwareMetrics;->mDbg:Z

    .line 145
    :cond_1
    iput-boolean v0, p5, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mDbg:Z

    .line 146
    iput-boolean v0, p3, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mDbg:Z

    .line 147
    iput-boolean v0, p4, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->mDbg:Z

    .line 148
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiAwareService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .line 468
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiAwareService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method private enforceClientValidity(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "clientId"    # I

    .line 454
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mUidByClientId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 456
    .local v1, "uidIndex":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mUidByClientId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 460
    .end local v1    # "uidIndex":I
    monitor-exit v0

    .line 461
    return-void

    .line 457
    .restart local v1    # "uidIndex":I
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to use invalid uid+clientId mapping: uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 460
    .end local v1    # "uidIndex":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private enforceLocationPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 472
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/util/WifiPermissionsUtil;->enforceLocationPermission(Ljava/lang/String;I)V

    .line 473
    return-void
.end method

.method private enforceNetworkStackPermission()V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_STACK"

    const-string v2, "WifiAwareService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void
.end method


# virtual methods
.method public connect(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V
    .locals 19
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .param p4, "configRequest"    # Landroid/net/wifi/aware/ConfigRequest;
    .param p5, "notifyOnIdentityChanged"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 178
    move/from16 v13, p5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceChangePermission()V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v14

    .line 182
    .local v14, "uid":I
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v14, v11}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 184
    if-eqz v12, :cond_4

    .line 187
    if-eqz v2, :cond_3

    .line 191
    if-eqz v13, :cond_0

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v0

    invoke-direct {v1, v11, v0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceLocationPermission(Ljava/lang/String;I)V

    .line 195
    :cond_0
    if-eqz p4, :cond_1

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceNetworkStackPermission()V

    .line 200
    move-object/from16 v15, p4

    goto :goto_0

    .line 198
    :cond_1
    new-instance v3, Landroid/net/wifi/aware/ConfigRequest$Builder;

    invoke-direct {v3}, Landroid/net/wifi/aware/ConfigRequest$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/net/wifi/aware/ConfigRequest$Builder;->build()Landroid/net/wifi/aware/ConfigRequest;

    move-result-object v0

    .line 200
    .end local p4    # "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    .local v0, "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    move-object v15, v0

    .end local v0    # "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    .local v15, "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    :goto_0
    invoke-virtual {v15}, Landroid/net/wifi/aware/ConfigRequest;->validate()V

    .line 203
    invoke-static {}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getCallingPid()I

    move-result v16

    .line 206
    .local v16, "pid":I
    iget-object v3, v1, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 207
    :try_start_0
    iget v0, v1, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mNextClientId:I

    add-int/lit8 v4, v0, 0x1

    iput v4, v1, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mNextClientId:I

    move v10, v0

    .line 208
    .local v10, "clientId":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 210
    iget-boolean v0, v1, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDbg:Z

    if-eqz v0, :cond_2

    .line 211
    const-string v0, "WifiAwareService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect: uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", configRequest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", notifyOnIdentityChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_2
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$2;

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$2;-><init>(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;ILandroid/os/IBinder;)V

    move-object v9, v0

    .line 231
    .local v9, "dr":Landroid/os/IBinder$DeathRecipient;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v2, v9, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    nop

    .line 242
    iget-object v3, v1, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 243
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDeathRecipientsByClientId:Landroid/util/SparseArray;

    invoke-virtual {v0, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    iget-object v0, v1, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mUidByClientId:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v10, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 245
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    iget-object v3, v1, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move v4, v10

    move v5, v14

    move/from16 v6, v16

    move-object v7, v11

    move-object v8, v12

    move-object/from16 v17, v9

    move-object v9, v15

    .end local v9    # "dr":Landroid/os/IBinder$DeathRecipient;
    .local v17, "dr":Landroid/os/IBinder$DeathRecipient;
    move/from16 v18, v10

    move v10, v13

    .end local v10    # "clientId":I
    .local v18, "clientId":I
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->connect(IIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V

    .line 249
    return-void

    .line 245
    .end local v17    # "dr":Landroid/os/IBinder$DeathRecipient;
    .end local v18    # "clientId":I
    .restart local v9    # "dr":Landroid/os/IBinder$DeathRecipient;
    .restart local v10    # "clientId":I
    :catchall_0
    move-exception v0

    move-object/from16 v17, v9

    move/from16 v18, v10

    .end local v9    # "dr":Landroid/os/IBinder$DeathRecipient;
    .end local v10    # "clientId":I
    .restart local v17    # "dr":Landroid/os/IBinder$DeathRecipient;
    .restart local v18    # "clientId":I
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 232
    .end local v17    # "dr":Landroid/os/IBinder$DeathRecipient;
    .end local v18    # "clientId":I
    .restart local v9    # "dr":Landroid/os/IBinder$DeathRecipient;
    .restart local v10    # "clientId":I
    :catch_0
    move-exception v0

    move-object/from16 v17, v9

    move/from16 v18, v10

    .end local v9    # "dr":Landroid/os/IBinder$DeathRecipient;
    .end local v10    # "clientId":I
    .restart local v17    # "dr":Landroid/os/IBinder$DeathRecipient;
    .restart local v18    # "clientId":I
    move-object v3, v0

    .line 233
    .local v3, "e":Landroid/os/RemoteException;
    const-string v0, "WifiAwareService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error on linkToDeath - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x1

    :try_start_4
    invoke-interface {v12, v0}, Landroid/net/wifi/aware/IWifiAwareEventCallback;->onConnectFail(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 238
    goto :goto_2

    .line 236
    :catch_1
    move-exception v0

    move-object v4, v0

    .line 237
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v4, "WifiAwareService"

    const-string v5, "Error on onConnectFail()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v0    # "e1":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 208
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v17    # "dr":Landroid/os/IBinder$DeathRecipient;
    .end local v18    # "clientId":I
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 188
    .end local v15    # "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    .end local v16    # "pid":I
    .restart local p4    # "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Binder must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Callback must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public disconnect(ILandroid/os/IBinder;)V
    .locals 4
    .param p1, "clientId"    # I
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 253
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    .line 254
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceChangePermission()V

    .line 256
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v0

    .line 257
    .local v0, "uid":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceClientValidity(II)V

    .line 258
    iget-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDbg:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiAwareService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect: uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", clientId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    if-eqz p2, :cond_2

    .line 264
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDeathRecipientsByClientId:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder$DeathRecipient;

    .line 266
    .local v2, "dr":Landroid/os/IBinder$DeathRecipient;
    if-eqz v2, :cond_1

    .line 267
    const/4 v3, 0x0

    invoke-interface {p2, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 268
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDeathRecipientsByClientId:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 270
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mUidByClientId:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 271
    .end local v2    # "dr":Landroid/os/IBinder$DeathRecipient;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->disconnect(I)V

    .line 274
    return-void

    .line 271
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 261
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Binder must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiAwareService from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    return-void

    .line 444
    :cond_0
    const-string v0, "Wi-Fi Aware Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextClientId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mNextClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDeathRecipientsByClientId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mDeathRecipientsByClientId:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUidByClientId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mUidByClientId:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 451
    return-void

    .line 449
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCharacteristics()Landroid/net/wifi/aware/Characteristics;
    .locals 1

    .line 168
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCapabilities()Lcom/android/server/wifi/aware/Capabilities;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCapabilities()Lcom/android/server/wifi/aware/Capabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/Capabilities;->toPublicCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0
.end method

.method public getMockableCallingUid()I
    .locals 1

    .line 88
    invoke-static {}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public isUsageEnabled()Z
    .locals 1

    .line 161
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    .line 163
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->isUsageEnabled()Z

    move-result v0

    return v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 433
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mShellCommand:Lcom/android/server/wifi/aware/WifiAwareShellCommand;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wifi/aware/WifiAwareShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 434
    return-void
.end method

.method public publish(Ljava/lang/String;ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "clientId"    # I
    .param p3, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;
    .param p4, "callback"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 294
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    .line 295
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceChangePermission()V

    .line 297
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v0

    .line 298
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceLocationPermission(Ljava/lang/String;I)V

    .line 302
    if-eqz p4, :cond_1

    .line 305
    if-eqz p3, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    .line 309
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.wifi.rtt"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 308
    invoke-virtual {p3, v1, v2}, Landroid/net/wifi/aware/PublishConfig;->assertValid(Landroid/net/wifi/aware/Characteristics;Z)V

    .line 311
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceClientValidity(II)V

    .line 317
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->publish(ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V

    .line 318
    return-void

    .line 306
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PublishConfig must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Callback must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestMacAddresses(ILjava/util/List;Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "peerIds"    # Ljava/util/List;
    .param p3, "callback"    # Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;

    .line 425
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceNetworkStackPermission()V

    .line 427
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->requestMacAddresses(ILjava/util/List;Landroid/net/wifi/aware/IWifiAwareMacAddressProvider;)V

    .line 428
    return-void
.end method

.method public sendMessage(III[BII)V
    .locals 8
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "peerId"    # I
    .param p4, "message"    # [B
    .param p5, "messageId"    # I
    .param p6, "retryCount"    # I

    .line 394
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    .line 395
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceChangePermission()V

    .line 397
    if-eqz p6, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceNetworkStackPermission()V

    .line 401
    :cond_0
    if-eqz p4, :cond_2

    array-length v0, p4

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 402
    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/aware/Characteristics;->getMaxServiceSpecificInfoLength()I

    move-result v1

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 403
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message length longer than supported by device characteristics"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_2
    :goto_0
    if-ltz p6, :cond_3

    invoke-static {}, Landroid/net/wifi/aware/DiscoverySession;->getMaxSendRetryCount()I

    move-result v0

    if-gt p6, v0, :cond_3

    .line 411
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v0

    .line 412
    .local v0, "uid":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceClientValidity(II)V

    .line 420
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->sendMessage(III[BII)V

    .line 421
    return-void

    .line 407
    .end local v0    # "uid":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid \'retryCount\' must be non-negative and <= DiscoverySession.MAX_SEND_RETRY_COUNT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start(Landroid/os/HandlerThread;Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/aware/WifiAwareShellCommand;Lcom/android/server/wifi/aware/WifiAwareMetrics;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeApi;Lcom/android/server/wifi/aware/WifiAwareNativeCallback;)V
    .locals 16
    .param p1, "handlerThread"    # Landroid/os/HandlerThread;
    .param p2, "awareStateManager"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p3, "awareShellCommand"    # Lcom/android/server/wifi/aware/WifiAwareShellCommand;
    .param p4, "awareMetrics"    # Lcom/android/server/wifi/aware/WifiAwareMetrics;
    .param p5, "wifiPermissionsUtil"    # Lcom/android/server/wifi/util/WifiPermissionsUtil;
    .param p6, "permissionsWrapper"    # Lcom/android/server/wifi/util/WifiPermissionsWrapper;
    .param p7, "frameworkFacade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p8, "wifiAwareNativeManager"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager;
    .param p9, "wifiAwareNativeApi"    # Lcom/android/server/wifi/aware/WifiAwareNativeApi;
    .param p10, "wifiAwareNativeCallback"    # Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

    move-object/from16 v8, p0

    move-object/from16 v9, p7

    .line 101
    const-string v0, "WifiAwareService"

    const-string v1, "Starting Wi-Fi Aware service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    move-object/from16 v10, p5

    iput-object v10, v8, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mWifiPermissionsUtil:Lcom/android/server/wifi/util/WifiPermissionsUtil;

    .line 104
    move-object/from16 v11, p2

    iput-object v11, v8, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 105
    move-object/from16 v12, p3

    iput-object v12, v8, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mShellCommand:Lcom/android/server/wifi/aware/WifiAwareShellCommand;

    .line 106
    iget-object v2, v8, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, v8, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v5, p4

    move-object v6, v10

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->start(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/aware/WifiAwareMetrics;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;)V

    .line 109
    iget-object v13, v8, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "wifi_verbose_logging_enabled"

    .line 110
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    new-instance v15, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;

    new-instance v2, Landroid/os/Handler;

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, v15

    move-object v1, v8

    move-object v3, v9

    move-object v4, v11

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;-><init>(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;Landroid/os/Handler;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeApi;Lcom/android/server/wifi/aware/WifiAwareNativeCallback;)V

    .line 109
    const/4 v0, 0x1

    invoke-virtual {v9, v13, v14, v0, v15}, Lcom/android/server/wifi/FrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    iget-object v0, v8, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "wifi_verbose_logging_enabled"

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    move-object v0, v8

    move-object v2, v11

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enableVerboseLogging(ILcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeApi;Lcom/android/server/wifi/aware/WifiAwareNativeCallback;)V

    .line 123
    return-void
.end method

.method public startLate()V
    .locals 2

    .line 154
    const-string v0, "WifiAwareService"

    const-string v1, "Late initialization of Wi-Fi Aware service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->startLate()V

    .line 157
    return-void
.end method

.method public subscribe(Ljava/lang/String;ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "clientId"    # I
    .param p3, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;
    .param p4, "callback"    # Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 344
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    .line 345
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceChangePermission()V

    .line 347
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v0

    .line 348
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceLocationPermission(Ljava/lang/String;I)V

    .line 352
    if-eqz p4, :cond_1

    .line 355
    if-eqz p3, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    .line 359
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.wifi.rtt"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 358
    invoke-virtual {p3, v1, v2}, Landroid/net/wifi/aware/SubscribeConfig;->assertValid(Landroid/net/wifi/aware/Characteristics;Z)V

    .line 361
    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceClientValidity(II)V

    .line 367
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->subscribe(ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V

    .line 368
    return-void

    .line 356
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SubscribeConfig must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Callback must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public terminateSession(II)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I

    .line 278
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    .line 279
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceChangePermission()V

    .line 281
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v0

    .line 282
    .local v0, "uid":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceClientValidity(II)V

    .line 288
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->terminateSession(II)V

    .line 289
    return-void
.end method

.method public updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;

    .line 322
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    .line 323
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceChangePermission()V

    .line 325
    if-eqz p3, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    .line 329
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.wifi.rtt"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 328
    invoke-virtual {p3, v0, v1}, Landroid/net/wifi/aware/PublishConfig;->assertValid(Landroid/net/wifi/aware/Characteristics;Z)V

    .line 331
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v0

    .line 332
    .local v0, "uid":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceClientValidity(II)V

    .line 338
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V

    .line 339
    return-void

    .line 326
    .end local v0    # "uid":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PublishConfig must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;

    .line 372
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceAccessPermission()V

    .line 373
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceChangePermission()V

    .line 375
    if-eqz p3, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mContext:Landroid/content/Context;

    .line 379
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.wifi.rtt"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 378
    invoke-virtual {p3, v0, v1}, Landroid/net/wifi/aware/SubscribeConfig;->assertValid(Landroid/net/wifi/aware/Characteristics;Z)V

    .line 381
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->getMockableCallingUid()I

    move-result v0

    .line 382
    .local v0, "uid":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->enforceClientValidity(II)V

    .line 388
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->mStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V

    .line 389
    return-void

    .line 376
    .end local v0    # "uid":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SubscribeConfig must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
