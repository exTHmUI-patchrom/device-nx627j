.class public final Landroid/bluetooth/BluetoothBATransmitter;
.super Ljava/lang/Object;
.source "BluetoothBATransmitter.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_BAT_AVRCP_VS_CMD:Ljava/lang/String; = "android.bluetooth.bat.profile.action.BA_AVRCP_VS_CMD"

.field public static final ACTION_BAT_DIV_CHANGED:Ljava/lang/String; = "android.bluetooth.bat.profile.action.BA_DIV_CHANGED"

.field public static final ACTION_BAT_ENCRYPTION_KEY_CHANGED:Ljava/lang/String; = "android.bluetooth.bat.profile.action.BA_ENC_KEY_CHANGED"

.field public static final ACTION_BAT_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.bat.profile.action.BA_STATE_CHANGED"

.field public static final ACTION_BAT_STREAMING_ID_CHANGED:Ljava/lang/String; = "android.bluetooth.bat.profile.action.BA_STR_ID_CHANGED"

.field private static final BIND_TIMEOUT_MS:I = 0xbb8

.field private static final DBG:Z = true

.field public static final DISABLE_BA_TRANSMITTER:I = 0x1

.field public static final ENABLE_BA_TRANSMITTER:I = 0x0

.field public static final EXTRA_AVRCP_VS_ENABLE_BA:Ljava/lang/String; = "android.bluetooth.bat.profile.extra.ENABLE_BA"

.field public static final EXTRA_AVRCP_VS_ENABLE_RA:Ljava/lang/String; = "android.bluetooth.bat.profile.extra.ENABLE_RA"

.field public static final EXTRA_DIV_VALUE:Ljava/lang/String; = "android.bluetooth.bat.profile.extra.DIV"

.field public static final EXTRA_ECNRYPTION_KEY:Ljava/lang/String; = "android.bluetooth.bat.profile.extra.ENC_KEY"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.bat.profile.extra.STATE"

.field public static final EXTRA_STREAM_ID:Ljava/lang/String; = "android.bluetooth.bat.profile.extra.STR_ID"

.field public static final INVALID_DIV:I = 0xffff

.field private static final SEND_DELAYED_MSG_TO_RESET:I = 0x1

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_PAUSED:I = 0x1

.field public static final STATE_PLAYING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothBAT"

.field private static final VDBG:Z = true


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBinding:Z

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Landroid/bluetooth/IBluetoothBATransmitter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServiceLock"
    .end annotation
.end field

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mUnbinding:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 168
    new-instance v0, Landroid/bluetooth/BluetoothBATransmitter$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothBATransmitter$1;-><init>(Landroid/bluetooth/BluetoothBATransmitter;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 513
    new-instance v0, Landroid/bluetooth/BluetoothBATransmitter$2;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothBATransmitter$2;-><init>(Landroid/bluetooth/BluetoothBATransmitter;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mConnection:Landroid/content/ServiceConnection;

    .line 560
    new-instance v0, Landroid/bluetooth/BluetoothBATransmitter$3;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothBATransmitter$3;-><init>(Landroid/bluetooth/BluetoothBATransmitter;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mHandler:Landroid/os/Handler;

    .line 207
    iput-object p1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mContext:Landroid/content/Context;

    .line 208
    iput-object p2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mBinding:Z

    .line 210
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mUnbinding:Z

    .line 211
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 212
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 213
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 215
    :try_start_0
    const-string v1, "BluetoothBAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BAT constructor: pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Caller API: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Caller API: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothBAT"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothBATransmitter;->doBind()Z

    .line 225
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothBATransmitter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothBATransmitter;

    .line 57
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/bluetooth/IBluetoothBATransmitter;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothBATransmitter;

    .line 57
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothBATransmitter;Landroid/bluetooth/IBluetoothBATransmitter;)Landroid/bluetooth/IBluetoothBATransmitter;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothBATransmitter;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothBATransmitter;

    .line 57
    iput-object p1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothBATransmitter;

    .line 57
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothBATransmitter;

    .line 57
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothBATransmitter;)Z
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothBATransmitter;

    .line 57
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mBinding:Z

    return v0
.end method

.method static synthetic access$402(Landroid/bluetooth/BluetoothBATransmitter;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothBATransmitter;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mBinding:Z

    return p1
.end method

.method static synthetic access$500(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothBATransmitter;

    .line 57
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$602(Landroid/bluetooth/BluetoothBATransmitter;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothBATransmitter;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mUnbinding:Z

    return p1
.end method

.method private isEnabled()Z
    .locals 2

    .line 547
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 548
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 552
    const-string v0, "BluetoothBAT"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-void
.end method

.method private mBindingReset()V
    .locals 4

    .line 556
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 557
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 558
    return-void
.end method


# virtual methods
.method close()V
    .locals 7

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 248
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 249
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 251
    :try_start_0
    const-string v3, "BluetoothBAT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close(): pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Caller API: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Caller API: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 251
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v3, p0, Landroid/bluetooth/BluetoothBATransmitter;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    goto :goto_0

    .line 255
    :catch_0
    move-exception v3

    .line 256
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "BluetoothBAT"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 262
    iget-boolean v3, p0, Landroid/bluetooth/BluetoothBATransmitter;->mUnbinding:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 276
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 263
    return-void

    .line 265
    :cond_1
    :try_start_2
    iput-boolean v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mUnbinding:Z

    .line 266
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 267
    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    .line 268
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 269
    iput-boolean v3, p0, Landroid/bluetooth/BluetoothBATransmitter;->mUnbinding:Z

    goto :goto_1

    .line 271
    :cond_2
    iput-boolean v3, p0, Landroid/bluetooth/BluetoothBATransmitter;->mUnbinding:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 276
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 273
    :catch_1
    move-exception v0

    .line 274
    .local v0, "re":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "BluetoothBAT"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    .end local v0    # "re":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 277
    nop

    .line 278
    return-void

    .line 276
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method doBind()Z
    .locals 6

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 230
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 231
    if-eqz v1, :cond_2

    iget-boolean v3, p0, Landroid/bluetooth/BluetoothBATransmitter;->mBinding:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothBATransmitter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothBATransmitter;->mConnection:Landroid/content/ServiceConnection;

    .line 236
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 235
    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 237
    const-string v3, "BluetoothBAT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth Broadcast Audio Transmitter Service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return v2

    .line 240
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mBinding:Z

    .line 241
    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->mBindingReset()V

    .line 242
    return v2

    .line 232
    :cond_2
    :goto_0
    const-string v3, "BluetoothBAT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "comp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mBinding ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Landroid/bluetooth/BluetoothBATransmitter;->mBinding:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "Bluetooth Broadcast Audio Transmitter Service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return v2
.end method

.method public finalize()V
    .locals 0

    .line 283
    return-void
.end method

.method public getBAServiceRecord()Landroid/bluetooth/BluetoothBAStreamServiceRecord;
    .locals 5

    .line 470
    const-string v0, "getBAServiceRecord"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 472
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 473
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothBATransmitter;->getBAServiceRecord()Landroid/bluetooth/BluetoothBAStreamServiceRecord;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 474
    return-object v1

    .line 476
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-nez v1, :cond_1

    const-string v1, "BluetoothBAT"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    :cond_1
    nop

    .line 482
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 477
    return-object v0

    .line 482
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothBAT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 480
    nop

    .line 482
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 480
    return-object v0

    .line 482
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getBATState()I
    .locals 5

    .line 331
    const-string v0, "getBATState"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 334
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothBATransmitter;->getBATState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 335
    return v1

    .line 337
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-nez v1, :cond_1

    const-string v1, "BluetoothBAT"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    :cond_1
    nop

    .line 343
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 338
    return v0

    .line 343
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothBAT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    nop

    .line 343
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 341
    return v0

    .line 343
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 491
    const-string v0, "getConnectedDevices() dummy impl"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 509
    const-string v0, "getConnectionState() dummy impl"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method public getDIV()I
    .locals 5

    .line 360
    const-string v0, "getDIV"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 362
    const v0, 0xffff

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 363
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothBATransmitter;->getDIV()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 364
    return v1

    .line 366
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-nez v1, :cond_1

    const-string v1, "BluetoothBAT"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :cond_1
    nop

    .line 372
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 367
    return v0

    .line 372
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothBAT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    nop

    .line 372
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 370
    return v0

    .line 372
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 500
    const-string v0, "getDevicesMatchingStates() dummy impl"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getEncryptionKey()Landroid/bluetooth/BluetoothBAEncryptionKey;
    .locals 5

    .line 415
    const-string v0, "getEncryptionKey"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 417
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 418
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothBATransmitter;->getEncryptionKey()Landroid/bluetooth/BluetoothBAEncryptionKey;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 419
    return-object v1

    .line 421
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-nez v1, :cond_1

    const-string v1, "BluetoothBAT"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    :cond_1
    nop

    .line 427
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 422
    return-object v0

    .line 427
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothBAT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    nop

    .line 427
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 425
    return-object v0

    .line 427
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getStreamId()J
    .locals 6

    .line 387
    const-string v0, "getStreamId"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 389
    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 390
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothBATransmitter;->getStreamId()J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 391
    return-wide v2

    .line 393
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-nez v2, :cond_1

    const-string v2, "BluetoothBAT"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    :cond_1
    nop

    .line 399
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 394
    return-wide v0

    .line 399
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v2

    .line 396
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothBAT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    nop

    .line 399
    iget-object v3, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 397
    return-wide v0

    .line 399
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public refreshEncryptionKey()Z
    .locals 5

    .line 443
    const-string v0, "getEncryptionKey"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 446
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothBATransmitter;->refreshEncryptionKey()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 447
    return v1

    .line 449
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-nez v1, :cond_1

    const-string v1, "BluetoothBAT"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    :cond_1
    nop

    .line 455
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 450
    return v0

    .line 455
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 451
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothBAT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    nop

    .line 455
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 453
    return v0

    .line 455
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public setBATState(I)Z
    .locals 5
    .param p1, "state"    # I

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBATState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 304
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothBATransmitter;->setBATState(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 305
    return v1

    .line 307
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-nez v1, :cond_1

    const-string v1, "BluetoothBAT"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :cond_1
    nop

    .line 313
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 308
    return v0

    .line 313
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothBAT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    nop

    .line 313
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 311
    return v0

    .line 313
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method
