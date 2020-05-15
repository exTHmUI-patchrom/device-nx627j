.class public final Landroid/bluetooth/BluetoothMapClient;
.super Ljava/lang/Object;
.source "BluetoothMapClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_MESSAGE_DELIVERED_SUCCESSFULLY:Ljava/lang/String; = "android.bluetooth.mapmce.profile.action.MESSAGE_DELIVERED_SUCCESSFULLY"

.field public static final ACTION_MESSAGE_RECEIVED:Ljava/lang/String; = "android.bluetooth.mapmce.profile.action.MESSAGE_RECEIVED"

.field public static final ACTION_MESSAGE_SENT_SUCCESSFULLY:Ljava/lang/String; = "android.bluetooth.mapmce.profile.action.MESSAGE_SENT_SUCCESSFULLY"

.field private static final DBG:Z

.field public static final EXTRA_MESSAGE_HANDLE:Ljava/lang/String; = "android.bluetooth.mapmce.profile.extra.MESSAGE_HANDLE"

.field public static final EXTRA_SENDER_CONTACT_NAME:Ljava/lang/String; = "android.bluetooth.mapmce.profile.extra.SENDER_CONTACT_NAME"

.field public static final EXTRA_SENDER_CONTACT_URI:Ljava/lang/String; = "android.bluetooth.mapmce.profile.extra.SENDER_CONTACT_URI"

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMapClient"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private volatile mService:Landroid/bluetooth/IBluetoothMapClient;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-string v0, "BluetoothMapClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    .line 41
    const-string v0, "BluetoothMapClient"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BluetoothMapClient;->VDBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/bluetooth/BluetoothMapClient$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothMapClient$1;-><init>(Landroid/bluetooth/BluetoothMapClient;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 396
    new-instance v0, Landroid/bluetooth/BluetoothMapClient$2;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothMapClient$2;-><init>(Landroid/bluetooth/BluetoothMapClient;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mConnection:Landroid/content/ServiceConnection;

    .line 108
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMapClient"

    const-string v1, "Create BluetoothMapClient proxy object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothMapClient;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Landroid/bluetooth/BluetoothMapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 111
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 112
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 113
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_1

    .line 115
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothMapClient"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothMapClient;->doBind()Z

    .line 121
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 37
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 37
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->VDBG:Z

    return v0
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothMapClient;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothMapClient;

    .line 37
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/IBluetoothMapClient;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothMapClient;

    .line 37
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    return-object v0
.end method

.method static synthetic access$302(Landroid/bluetooth/BluetoothMapClient;Landroid/bluetooth/IBluetoothMapClient;)Landroid/bluetooth/IBluetoothMapClient;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothMapClient;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothMapClient;

    .line 37
    iput-object p1, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    return-object p1
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothMapClient;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothMapClient;

    .line 37
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothMapClient;

    .line 37
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 3

    .line 416
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 417
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    .line 418
    :cond_0
    sget-boolean v1, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "BluetoothMapClient"

    const-string v2, "Bluetooth is Not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 423
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


# virtual methods
.method public close()V
    .locals 6

    .line 150
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 151
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothMapClient"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 160
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 162
    :try_start_2
    iput-object v3, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    .line 163
    iget-object v2, p0, Landroid/bluetooth/BluetoothMapClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothMapClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    goto :goto_1

    .line 164
    :catch_1
    move-exception v2

    .line 165
    .local v2, "re":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "BluetoothMapClient"

    const-string v5, ""

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v2    # "re":Ljava/lang/Exception;
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    iput-object v3, p0, Landroid/bluetooth/BluetoothMapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 170
    return-void

    .line 168
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 198
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMapClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")for MAPS MCE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    .line 200
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    if-eqz v0, :cond_1

    .line 202
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothMapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothMapClient"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 207
    :cond_1
    const-string v1, "BluetoothMapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-boolean v1, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "BluetoothMapClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 220
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMapClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    .line 222
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothMapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    if-nez v0, :cond_2

    const-string v1, "BluetoothMapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method doBind()Z
    .locals 6

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothMapClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 126
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 127
    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/bluetooth/BluetoothMapClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothMapClient;->mConnection:Landroid/content/ServiceConnection;

    iget-object v5, p0, Landroid/bluetooth/BluetoothMapClient;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {v5}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 127
    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 129
    :cond_1
    :goto_0
    const-string v3, "BluetoothMapClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth MAP MCE Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 137
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothMapClient;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 140
    nop

    .line 141
    return-void

    .line 139
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

    .line 240
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMapClient"

    const-string v1, "getConnectedDevices()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    .line 242
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothMapClient;->getConnectedDevices()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 250
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    if-nez v0, :cond_2

    const-string v1, "BluetoothMapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 282
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMapClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectionState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    .line 284
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothMapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 287
    :catch_0
    move-exception v2

    .line 288
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothMapClient"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return v1

    .line 292
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    if-nez v0, :cond_2

    const-string v2, "BluetoothMapClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_2
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

    .line 261
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMapClient"

    const-string v1, "getDevicesMatchingStates()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    .line 263
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothMapClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 271
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    if-nez v0, :cond_2

    const-string v1, "BluetoothMapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 335
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMapClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPriority("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    .line 337
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothMapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 340
    :catch_0
    move-exception v2

    .line 341
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothMapClient"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return v1

    .line 345
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    if-nez v0, :cond_2

    const-string v2, "BluetoothMapClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_2
    return v1
.end method

.method public getUnreadMessages(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 383
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMapClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUnreadMessages("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    .line 385
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothMapClient;->getUnreadMessages(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 388
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothMapClient"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return v1

    .line 393
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return v1
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 178
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMapClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    .line 180
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    if-eqz v0, :cond_1

    .line 182
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothMapClient;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothMapClient"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 187
    :cond_1
    const-string v1, "BluetoothMapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-boolean v1, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "BluetoothMapClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public sendMessage(Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "contacts"    # [Landroid/net/Uri;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveredIntent"    # Landroid/app/PendingIntent;

    .line 363
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMapClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    .line 365
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    :try_start_0
    invoke-interface/range {v2 .. v7}, Landroid/bluetooth/IBluetoothMapClient;->sendMessage(Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 368
    :catch_0
    move-exception v2

    .line 369
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothMapClient"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return v1

    .line 373
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return v1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .line 306
    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMapClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPriority("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    .line 308
    .local v0, "service":Landroid/bluetooth/IBluetoothMapClient;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    if-eqz p2, :cond_1

    const/16 v2, 0x64

    if-eq p2, v2, :cond_1

    .line 311
    return v1

    .line 314
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothMapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 315
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothMapClient"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return v1

    .line 320
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    if-nez v0, :cond_3

    const-string v2, "BluetoothMapClient"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_3
    return v1
.end method
