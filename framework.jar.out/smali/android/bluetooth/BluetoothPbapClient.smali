.class public final Landroid/bluetooth/BluetoothPbapClient;
.super Ljava/lang/Object;
.source "BluetoothPbapClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

.field private static final DBG:Z = false

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapClient"

.field private static final VDBG:Z = false


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private volatile mService:Landroid/bluetooth/IBluetoothPbapClient;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/bluetooth/BluetoothPbapClient$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothPbapClient$1;-><init>(Landroid/bluetooth/BluetoothPbapClient;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 293
    new-instance v0, Landroid/bluetooth/BluetoothPbapClient$2;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothPbapClient$2;-><init>(Landroid/bluetooth/BluetoothPbapClient;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mConnection:Landroid/content/ServiceConnection;

    .line 100
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbapClient;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Landroid/bluetooth/BluetoothPbapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 102
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 103
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 104
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 106
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothPbapClient"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->doBind()Z

    .line 112
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothPbapClient;

    .line 36
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothPbapClient;

    .line 36
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothPbapClient;Landroid/bluetooth/IBluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothPbapClient;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothPbapClient;

    .line 36
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothPbapClient;

    .line 36
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothPbapClient;)Z
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothPbapClient;

    .line 36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->doBind()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothPbapClient;

    .line 36
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private doBind()Z
    .locals 6

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothPbapClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 117
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 118
    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothPbapClient;->mConnection:Landroid/content/ServiceConnection;

    iget-object v5, p0, Landroid/bluetooth/BluetoothPbapClient;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {v5}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 118
    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 120
    :cond_1
    :goto_0
    const-string v3, "BluetoothPbapClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth PBAP Client Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v2
.end method

.method private isEnabled()Z
    .locals 3

    .line 321
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 322
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 323
    const/4 v1, 0x1

    return v1

    .line 325
    :cond_0
    const-string v1, "Bluetooth is Not enabled"

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbapClient;->log(Ljava/lang/String;)V

    .line 326
    const/4 v1, 0x0

    return v1
.end method

.method private static isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 330
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 317
    const-string v0, "BluetoothPbapClient"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 6

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 144
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "BluetoothPbapClient"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    :try_start_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 153
    :try_start_4
    iput-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 154
    iget-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothPbapClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    goto :goto_1

    .line 155
    :catch_1
    move-exception v2

    .line 156
    .local v2, "re":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "BluetoothPbapClient"

    const-string v5, ""

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v2    # "re":Ljava/lang/Exception;
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 160
    :try_start_6
    iput-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 161
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 140
    .end local v0    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/bluetooth/BluetoothPbapClient;
    throw v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 176
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 177
    .local v0, "service":Landroid/bluetooth/IBluetoothPbapClient;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothPbapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 180
    :catch_0
    move-exception v2

    .line 181
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothPbapClient"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return v1

    .line 185
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    .line 186
    const-string v2, "BluetoothPbapClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 201
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 202
    .local v0, "service":Landroid/bluetooth/IBluetoothPbapClient;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothPbapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    const/4 v1, 0x1

    return v1

    .line 206
    :catch_0
    move-exception v2

    .line 207
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothPbapClient"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return v1

    .line 211
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    .line 212
    const-string v2, "BluetoothPbapClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    return v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPbapClient;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    nop

    .line 132
    return-void

    .line 130
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 229
    .local v0, "service":Landroid/bluetooth/IBluetoothPbapClient;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothPbapClient;->getConnectedDevices()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 237
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    .line 238
    const-string v1, "BluetoothPbapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 278
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 279
    .local v0, "service":Landroid/bluetooth/IBluetoothPbapClient;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothPbapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 282
    :catch_0
    move-exception v2

    .line 283
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothPbapClient"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return v1

    .line 287
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    .line 288
    const-string v2, "BluetoothPbapClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1
    return v1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 4
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 254
    .local v0, "service":Landroid/bluetooth/IBluetoothPbapClient;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothPbapClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 262
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    .line 263
    const-string v1, "BluetoothPbapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 381
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 382
    .local v0, "service":Landroid/bluetooth/IBluetoothPbapClient;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothPbapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 385
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothPbapClient"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return v1

    .line 390
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    .line 391
    const-string v2, "BluetoothPbapClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1
    return v1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .line 348
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    .line 349
    .local v0, "service":Landroid/bluetooth/IBluetoothPbapClient;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    if-eqz p2, :cond_0

    const/16 v2, 0x64

    if-eq p2, v2, :cond_0

    .line 352
    return v1

    .line 355
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothPbapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 356
    :catch_0
    move-exception v2

    .line 357
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothPbapClient"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return v1

    .line 361
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    if-nez v0, :cond_2

    .line 362
    const-string v2, "BluetoothPbapClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_2
    return v1
.end method
