.class public final Landroid/bluetooth/BluetoothHidDevice;
.super Ljava/lang/Object;
.source "BluetoothHidDevice.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;,
        Landroid/bluetooth/BluetoothHidDevice$Callback;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.hiddevice.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ERROR_RSP_INVALID_PARAM:B = 0x4t

.field public static final ERROR_RSP_INVALID_RPT_ID:B = 0x2t

.field public static final ERROR_RSP_NOT_READY:B = 0x1t

.field public static final ERROR_RSP_SUCCESS:B = 0x0t

.field public static final ERROR_RSP_UNKNOWN:B = 0xet

.field public static final ERROR_RSP_UNSUPPORTED_REQ:B = 0x3t

.field public static final PROTOCOL_BOOT_MODE:B = 0x0t

.field public static final PROTOCOL_REPORT_MODE:B = 0x1t

.field public static final REPORT_TYPE_FEATURE:B = 0x3t

.field public static final REPORT_TYPE_INPUT:B = 0x1t

.field public static final REPORT_TYPE_OUTPUT:B = 0x2t

.field public static final SUBCLASS1_COMBO:B = -0x40t

.field public static final SUBCLASS1_KEYBOARD:B = 0x40t

.field public static final SUBCLASS1_MOUSE:B = -0x80t

.field public static final SUBCLASS1_NONE:B = 0x0t

.field public static final SUBCLASS2_CARD_READER:B = 0x6t

.field public static final SUBCLASS2_DIGITIZER_TABLET:B = 0x5t

.field public static final SUBCLASS2_GAMEPAD:B = 0x2t

.field public static final SUBCLASS2_JOYSTICK:B = 0x1t

.field public static final SUBCLASS2_REMOTE_CONTROL:B = 0x3t

.field public static final SUBCLASS2_SENSING_DEVICE:B = 0x4t

.field public static final SUBCLASS2_UNCATEGORIZED:B

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private volatile mService:Landroid/bluetooth/IBluetoothHidDevice;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Landroid/bluetooth/BluetoothHidDevice$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothHidDevice$1;-><init>(Landroid/bluetooth/BluetoothHidDevice;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 415
    new-instance v0, Landroid/bluetooth/BluetoothHidDevice$2;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothHidDevice$2;-><init>(Landroid/bluetooth/BluetoothHidDevice;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;

    .line 436
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice;->mContext:Landroid/content/Context;

    .line 437
    iput-object p2, p0, Landroid/bluetooth/BluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 438
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 440
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 441
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 443
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    goto :goto_0

    .line 444
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 449
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHidDevice;->doBind()Z

    .line 450
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothHidDevice;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHidDevice;

    .line 39
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/IBluetoothHidDevice;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHidDevice;

    .line 39
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    return-object v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothHidDevice;Landroid/bluetooth/IBluetoothHidDevice;)Landroid/bluetooth/IBluetoothHidDevice;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHidDevice;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothHidDevice;

    .line 39
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    return-object p1
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHidDevice;

    .line 39
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method


# virtual methods
.method close()V
    .locals 3

    .line 477
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 478
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 480
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    goto :goto_0

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 486
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 487
    :try_start_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHidDevice;->doUnbind()V

    .line 488
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 490
    return-void

    .line 488
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 734
    const/4 v0, 0x0

    .line 736
    .local v0, "result":Z
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    .line 737
    .local v1, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-eqz v1, :cond_0

    .line 739
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHidDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 742
    :goto_0
    goto :goto_1

    .line 740
    :catch_0
    move-exception v2

    .line 741
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 744
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :goto_1
    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 758
    const/4 v0, 0x0

    .line 760
    .local v0, "result":Z
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    .line 761
    .local v1, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-eqz v1, :cond_0

    .line 763
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHidDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 766
    :goto_0
    goto :goto_1

    .line 764
    :catch_0
    move-exception v2

    .line 765
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 768
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :goto_1
    return v0
.end method

.method doBind()Z
    .locals 6

    .line 453
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothHidDevice;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 455
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 456
    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/bluetooth/BluetoothHidDevice;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;

    iget-object v5, p0, Landroid/bluetooth/BluetoothHidDevice;->mContext:Landroid/content/Context;

    .line 457
    invoke-virtual {v5}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 456
    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Bound to HID Device Service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v2, 0x1

    return v2

    .line 458
    :cond_1
    :goto_0
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth HID Device Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return v2
.end method

.method doUnbind()V
    .locals 3

    .line 466
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    if-eqz v0, :cond_0

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    .line 469
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Unable to unbind HidDevService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-void
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

    .line 495
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    .line 496
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-eqz v0, :cond_0

    .line 498
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHidDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 503
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 529
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    .line 530
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-eqz v0, :cond_0

    .line 532
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHidDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 533
    :catch_0
    move-exception v1

    .line 534
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 537
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :goto_0
    const/4 v1, 0x0

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

    .line 512
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    .line 513
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-eqz v0, :cond_0

    .line 515
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHidDevice;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 516
    :catch_0
    move-exception v1

    .line 517
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 520
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getUserAppName()Ljava/lang/String;
    .locals 4

    .line 710
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    .line 712
    .local v0, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-eqz v0, :cond_0

    .line 714
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHidDevice;->getUserAppName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 715
    :catch_0
    move-exception v1

    .line 716
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 719
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method public registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;)Z
    .locals 5
    .param p1, "sdp"    # Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .param p2, "inQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p3, "outQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/bluetooth/BluetoothHidDevice$Callback;

    .line 572
    const/4 v0, 0x0

    .line 574
    .local v0, "result":Z
    if-eqz p1, :cond_3

    .line 578
    if-eqz p4, :cond_2

    .line 582
    if-eqz p5, :cond_1

    .line 586
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    .line 587
    .local v1, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-eqz v1, :cond_0

    .line 589
    :try_start_0
    new-instance v2, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;

    invoke-direct {v2, p4, p5}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;)V

    .line 590
    .local v2, "cbw":Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;
    invoke-interface {v1, p1, p2, p3, v2}, Landroid/bluetooth/IBluetoothHidDevice;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 593
    .end local v2    # "cbw":Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;
    :goto_0
    goto :goto_1

    .line 591
    :catch_0
    move-exception v2

    .line 592
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 595
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :goto_1
    return v0

    .line 583
    .end local v1    # "service":Landroid/bluetooth/IBluetoothHidDevice;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback parameter cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "executor parameter cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sdp parameter cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "data"    # [B

    .line 663
    const/4 v0, 0x0

    .line 665
    .local v0, "result":Z
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    .line 666
    .local v1, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-eqz v1, :cond_0

    .line 668
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/bluetooth/IBluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 671
    :goto_0
    goto :goto_1

    .line 669
    :catch_0
    move-exception v2

    .line 670
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 673
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :goto_1
    return v0
.end method

.method public reportError(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "error"    # B

    .line 687
    const/4 v0, 0x0

    .line 689
    .local v0, "result":Z
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    .line 690
    .local v1, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-eqz v1, :cond_0

    .line 692
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 695
    :goto_0
    goto :goto_1

    .line 693
    :catch_0
    move-exception v2

    .line 694
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 697
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_1
    return v0
.end method

.method public sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "id"    # I
    .param p3, "data"    # [B

    .line 637
    const/4 v0, 0x0

    .line 639
    .local v0, "result":Z
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    .line 640
    .local v1, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-eqz v1, :cond_0

    .line 642
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 645
    :goto_0
    goto :goto_1

    .line 643
    :catch_0
    move-exception v2

    .line 644
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 647
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :goto_1
    return v0
.end method

.method public unregisterApp()Z
    .locals 5

    .line 612
    const/4 v0, 0x0

    .line 614
    .local v0, "result":Z
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice;->mService:Landroid/bluetooth/IBluetoothHidDevice;

    .line 615
    .local v1, "service":Landroid/bluetooth/IBluetoothHidDevice;
    if-eqz v1, :cond_0

    .line 617
    :try_start_0
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHidDevice;->unregisterApp()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 620
    :goto_0
    goto :goto_1

    .line 618
    :catch_0
    move-exception v2

    .line 619
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 622
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothHidDevice;->TAG:Ljava/lang/String;

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :goto_1
    return v0
.end method
