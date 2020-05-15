.class public final Landroid/hardware/input/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputManager$InputDeviceVibrator;,
        Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;,
        Landroid/hardware/input/InputManager$TabletModeChangedListener;,
        Landroid/hardware/input/InputManager$OnTabletModeChangedListener;,
        Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;,
        Landroid/hardware/input/InputManager$InputDevicesChangedListener;,
        Landroid/hardware/input/InputManager$InputDeviceListener;,
        Landroid/hardware/input/InputManager$SwitchState;
    }
.end annotation


# static fields
.field public static final ACTION_QUERY_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_POINTER_SPEED:I = 0x0

.field public static final INJECT_INPUT_EVENT_MODE_ASYNC:I = 0x0

.field public static final INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH:I = 0x2

.field public static final INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT:I = 0x1

.field public static final MASK_DOWN_UP:I = 0x152

.field public static final MASK_LEFT:I = 0x0

.field public static final MASK_RIGHT:I = 0x1

.field public static final MAX_POINTER_SPEED:I = 0x7

.field public static final META_DATA_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

.field public static final MIN_POINTER_SPEED:I = -0x7

.field private static final MSG_DEVICE_ADDED:I = 0x1

.field private static final MSG_DEVICE_CHANGED:I = 0x3

.field private static final MSG_DEVICE_REMOVED:I = 0x2

.field public static final SWITCH_STATE_OFF:I = 0x0

.field public static final SWITCH_STATE_ON:I = 0x1

.field public static final SWITCH_STATE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "InputManager"

.field private static sInstance:Landroid/hardware/input/InputManager;


# instance fields
.field private final mIm:Landroid/hardware/input/IInputManager;

.field private final mInputDeviceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

.field private final mInputDevicesLock:Ljava/lang/Object;

.field private mOnTabletModeChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mTabletModeChangedListener:Landroid/hardware/input/InputManager$TabletModeChangedListener;

.field private final mTabletModeLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/hardware/input/IInputManager;)V
    .locals 1
    .param p1, "im"    # Landroid/hardware/input/IInputManager;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mTabletModeLock:Ljava/lang/Object;

    .line 240
    iput-object p1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    .line 241
    return-void
.end method

.method static synthetic access$200(Landroid/hardware/input/InputManager;[I)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/input/InputManager;
    .param p1, "x1"    # [I

    .line 63
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->onInputDevicesChanged([I)V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/input/InputManager;JZ)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/input/InputManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputManager;->onTabletModeChanged(JZ)V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/input/InputManager;

    .line 63
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    return-object v0
.end method

.method private static containsDeviceId([II)Z
    .locals 3
    .param p0, "deviceIdAndGeneration"    # [I
    .param p1, "deviceId"    # I

    .line 1061
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1062
    aget v2, p0, v1

    if-ne v2, p1, :cond_0

    .line 1063
    const/4 v0, 0x1

    return v0

    .line 1061
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1066
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 450
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 451
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 452
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    if-ne v2, p1, :cond_0

    .line 453
    return v1

    .line 451
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    .line 532
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 533
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 534
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    if-ne v2, p1, :cond_0

    .line 535
    return v1

    .line 533
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static getInstance()Landroid/hardware/input/InputManager;
    .locals 3

    .line 251
    const-class v0, Landroid/hardware/input/InputManager;

    monitor-enter v0

    .line 252
    :try_start_0
    sget-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 254
    :try_start_1
    new-instance v1, Landroid/hardware/input/InputManager;

    const-string v2, "input"

    .line 255
    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/input/InputManager;-><init>(Landroid/hardware/input/IInputManager;)V

    sput-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    goto :goto_0

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 260
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_0
    :goto_0
    sget-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;

    monitor-exit v0

    return-object v1

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initializeTabletModeListenerLocked()V
    .locals 3

    .line 521
    new-instance v0, Landroid/hardware/input/InputManager$TabletModeChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManager$TabletModeChangedListener;-><init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$1;)V

    .line 523
    .local v0, "listener":Landroid/hardware/input/InputManager$TabletModeChangedListener;
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    nop

    .line 527
    iput-object v0, p0, Landroid/hardware/input/InputManager;->mTabletModeChangedListener:Landroid/hardware/input/InputManager$TabletModeChangedListener;

    .line 528
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    .line 529
    return-void

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private onInputDevicesChanged([I)V
    .locals 8
    .param p1, "deviceIdAndGeneration"    # [I

    .line 1014
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1015
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_1

    .line 1016
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1017
    .local v2, "deviceId":I
    invoke-static {p1, v2}, Landroid/hardware/input/InputManager;->containsDeviceId([II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1021
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1022
    const/4 v3, 0x2

    invoke-direct {p0, v3, v2}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    .line 1024
    .end local v2    # "deviceId":I
    :cond_0
    goto :goto_0

    .line 1026
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 1027
    aget v2, p1, v1

    .line 1028
    .restart local v2    # "deviceId":I
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 1029
    .local v3, "index":I
    const/4 v4, 0x0

    if-ltz v3, :cond_3

    .line 1030
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InputDevice;

    .line 1031
    .local v5, "device":Landroid/view/InputDevice;
    if-eqz v5, :cond_2

    .line 1032
    add-int/lit8 v6, v1, 0x1

    aget v6, p1, v6

    .line 1033
    .local v6, "generation":I
    invoke-virtual {v5}, Landroid/view/InputDevice;->getGeneration()I

    move-result v7

    if-eq v7, v6, :cond_2

    .line 1037
    iget-object v7, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v7, v3, v4}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 1038
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    .line 1041
    .end local v5    # "device":Landroid/view/InputDevice;
    .end local v6    # "generation":I
    :cond_2
    goto :goto_2

    .line 1045
    :cond_3
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1046
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    .line 1026
    .end local v2    # "deviceId":I
    .end local v3    # "index":I
    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1049
    .end local v1    # "i":I
    :cond_4
    monitor-exit v0

    .line 1050
    return-void

    .line 1049
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onTabletModeChanged(JZ)V
    .locals 4
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .line 1075
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1077
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1078
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    .line 1079
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;

    .line 1080
    .local v3, "listener":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->sendTabletModeChanged(JZ)V

    .line 1077
    .end local v3    # "listener":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1082
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 1083
    return-void

    .line 1082
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private populateInputDevicesLocked()V
    .locals 5

    .line 984
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 985
    new-instance v0, Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManager$InputDevicesChangedListener;-><init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$1;)V

    .line 987
    .local v0, "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v2, v0}, Landroid/hardware/input/IInputManager;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    nop

    .line 991
    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    .end local v0    # "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    goto :goto_0

    .line 988
    .restart local v0    # "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :catch_0
    move-exception v1

    .line 989
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 994
    .end local v0    # "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 997
    :try_start_1
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getInputDeviceIds()[I

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1000
    .local v0, "ids":[I
    nop

    .line 999
    nop

    .line 1002
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    .line 1003
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1004
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    aget v4, v0, v2

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1003
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 998
    .end local v0    # "ids":[I
    .end local v2    # "i":I
    :catch_1
    move-exception v0

    .line 999
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1007
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private sendMessageToInputDeviceListenersLocked(II)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "deviceId"    # I

    .line 1053
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1054
    .local v0, "numListeners":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1055
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    .line 1056
    .local v3, "listener":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    invoke-virtual {v3, p1, p2, v1}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1054
    .end local v3    # "listener":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1058
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 685
    if-eqz p1, :cond_1

    .line 688
    if-eqz p2, :cond_0

    .line 693
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    nop

    .line 697
    return-void

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 689
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createInputForwarder(I)Landroid/app/IInputForwarder;
    .locals 2
    .param p1, "displayId"    # I

    .line 977
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->createInputForwarder(I)Landroid/app/IInputForwarder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 978
    :catch_0
    move-exception v0

    .line 979
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public deviceHasKeys(I[I)[Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "keyCodes"    # [I

    .line 862
    array-length v0, p2

    new-array v0, v0, [Z

    .line 864
    .local v0, "ret":[Z
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/16 v2, -0x100

    invoke-interface {v1, p1, v2, p2, v0}, Landroid/hardware/input/IInputManager;->hasKeys(II[I[Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    nop

    .line 868
    return-object v0

    .line 865
    :catch_0
    move-exception v1

    .line 866
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public deviceHasKeys([I)[Z
    .locals 1
    .param p1, "keyCodes"    # [I

    .line 845
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManager;->deviceHasKeys(I[I)[Z

    move-result-object v0

    return-object v0
.end method

.method public disableInputDevice(I)V
    .locals 3
    .param p1, "id"    # I

    .line 396
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->disableInputDevice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    nop

    .line 401
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not disable input device with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public enableInputDevice(I)V
    .locals 3
    .param p1, "id"    # I

    .line 377
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->enableInputDevice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    nop

    .line 382
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not enable input device with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 615
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEdgeDeviceWidth()I
    .locals 2

    .line 1272
    const/4 v0, 0x0

    .line 1274
    .local v0, "width":I
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1}, Landroid/hardware/input/IInputManager;->getEdgeDeviceWidth()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1275
    goto :goto_0

    :catch_0
    move-exception v1

    .line 1276
    :goto_0
    return v0
.end method

.method public getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 660
    if-eqz p1, :cond_0

    .line 665
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 661
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGamepadDeviceId(Ljava/lang/String;)I
    .locals 4
    .param p1, "addrBE"    # Ljava/lang/String;

    .line 1373
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getGamepadDeviceId(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1374
    :catch_0
    move-exception v0

    .line 1375
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGamepadDeviceId addrBE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 5
    .param p1, "id"    # I

    .line 270
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 273
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 274
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 275
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 278
    :cond_0
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-nez v2, :cond_1

    .line 281
    :try_start_1
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v3, p1}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 284
    nop

    .line 285
    if-eqz v2, :cond_1

    .line 286
    :try_start_2
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_0

    .line 282
    :catch_0
    move-exception v3

    .line 283
    .local v3, "ex":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 289
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v2

    .line 290
    .end local v1    # "index":I
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;
    .locals 7
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 300
    if-eqz p1, :cond_4

    .line 304
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 307
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 308
    .local v1, "numDevices":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 309
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice;

    .line 310
    .local v3, "inputDevice":Landroid/view/InputDevice;
    if-nez v3, :cond_1

    .line 311
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .local v4, "id":I
    :try_start_1
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v5, v4}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    .line 316
    nop

    .line 317
    if-nez v3, :cond_0

    .line 318
    goto :goto_2

    .line 320
    :cond_0
    :try_start_2
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .end local v4    # "id":I
    goto :goto_1

    .line 314
    .restart local v4    # "id":I
    :catch_0
    move-exception v5

    .line 315
    .local v5, "ex":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 322
    .end local v4    # "id":I
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 323
    monitor-exit v0

    return-object v3

    .line 308
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 327
    .end local v1    # "numDevices":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 301
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "descriptor must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputDeviceIds()[I
    .locals 5

    .line 335
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 338
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 339
    .local v1, "count":I
    new-array v2, v1, [I

    .line 340
    .local v2, "ids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 341
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 340
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 343
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0

    return-object v2

    .line 344
    .end local v1    # "count":I
    .end local v2    # "ids":[I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInputDeviceVibrator(I)Landroid/os/Vibrator;
    .locals 1
    .param p1, "deviceId"    # I

    .line 1091
    new-instance v0, Landroid/hardware/input/InputManager$InputDeviceVibrator;

    invoke-direct {v0, p0, p1}, Landroid/hardware/input/InputManager$InputDeviceVibrator;-><init>(Landroid/hardware/input/InputManager;I)V

    return-object v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 2
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 593
    if-eqz p1, :cond_0

    .line 598
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 594
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 2

    .line 555
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 577
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPointerSpeed(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 779
    const/4 v0, 0x0

    .line 781
    .local v0, "speed":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pointer_speed"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 784
    goto :goto_0

    .line 783
    :catch_0
    move-exception v1

    .line 785
    :goto_0
    return v0
.end method

.method public getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 2
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    .line 738
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .line 894
    if-eqz p1, :cond_2

    .line 897
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 900
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 895
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isGameKeyEnable()Z
    .locals 4

    .line 1318
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->isGlobalKeyEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1319
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isGameKeyEnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public isInTabletMode()I
    .locals 2

    .line 469
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->isInTabletMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isInputDeviceEnabled(I)Z
    .locals 3
    .param p1, "id"    # I

    .line 358
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->isInputDeviceEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not check enabled status of input device with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public myInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 1
    .param p1, "inputChannelName"    # Ljava/lang/String;

    .line 1290
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->myInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1291
    :catch_0
    move-exception v0

    .line 1292
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 414
    if-eqz p1, :cond_1

    .line 418
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 420
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v1

    .line 421
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 422
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;-><init>(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    .end local v1    # "index":I
    :cond_0
    monitor-exit v0

    .line 425
    return-void

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 415
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 485
    if-eqz p1, :cond_2

    .line 488
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 490
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->initializeTabletModeListenerLocked()V

    .line 492
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I

    move-result v1

    .line 493
    .local v1, "idx":I
    if-gez v1, :cond_1

    .line 494
    new-instance v2, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;

    invoke-direct {v2, p1, p2}, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V

    .line 496
    .local v2, "d":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    :cond_1
    monitor-exit v0

    .line 499
    return-void

    .line 498
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 486
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 713
    if-eqz p1, :cond_1

    .line 716
    if-eqz p2, :cond_0

    .line 721
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    nop

    .line 725
    return-void

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 717
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPointerCapture(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .line 948
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->requestPointerCapture(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    nop

    .line 952
    return-void

    .line 949
    :catch_0
    move-exception v0

    .line 950
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 636
    if-eqz p1, :cond_1

    .line 639
    if-eqz p2, :cond_0

    .line 644
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    nop

    .line 649
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 640
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "identifier must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .locals 2
    .param p1, "icon"    # Landroid/view/PointerIcon;

    .line 929
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    nop

    .line 933
    return-void

    .line 930
    :catch_0
    move-exception v0

    .line 931
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDoubleGamePoint(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/content/Context;)V
    .locals 12
    .param p1, "right"    # Landroid/graphics/Point;
    .param p2, "left"    # Landroid/graphics/Point;
    .param p3, "context"    # Landroid/content/Context;

    .line 1307
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1311
    :cond_0
    const/4 v1, -0x1

    const/16 v2, 0x120

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/InputManager;->setKeyTouchPoint(IIIIZ)V

    .line 1312
    const/4 v7, -0x1

    const/16 v8, 0x121

    iget v9, p2, Landroid/graphics/Point;->x:I

    iget v10, p2, Landroid/graphics/Point;->y:I

    const/4 v11, 0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/hardware/input/InputManager;->setKeyTouchPoint(IIIIZ)V

    .line 1313
    return-void

    .line 1308
    :cond_1
    :goto_0
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set game point error for left "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", right "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    return-void
.end method

.method public setDoubleScreenTouchEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1385
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/hardware/input/IInputManager;->setDoubleScreenTouchEnable(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1387
    :goto_0
    return-void
.end method

.method public setDoubleScreenTouchEnableImmediate(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1392
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/hardware/input/IInputManager;->setDoubleScreenTouchEnable(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1394
    :goto_0
    return-void
.end method

.method public setDoubleScreenTouchRects(I[Landroid/graphics/Rect;[Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "source"    # [Landroid/graphics/Rect;
    .param p3, "target"    # [Landroid/graphics/Rect;

    .line 1399
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->setDoubleScreenTouchRects(I[Landroid/graphics/Rect;[Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1400
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1401
    :goto_0
    return-void
.end method

.method public setEdgeDeviceWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .line 1266
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setEdgeDeviceWidth(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1268
    :goto_0
    return-void
.end method

.method public setGameKeyEnable(ZLandroid/content/Context;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .line 1299
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setGlobalKeyEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1302
    goto :goto_0

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGameKeyEnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setGamepadEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1330
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setGamepadEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1332
    :goto_0
    return-void
.end method

.method public setGamepadID(ILjava/lang/String;)V
    .locals 1
    .param p1, "gamepadId"    # I
    .param p2, "addrBE"    # Ljava/lang/String;

    .line 1337
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->setGamepadID(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1338
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1339
    :goto_0
    return-void
.end method

.method public setJoystickCenterOffset(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1366
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->setJoystickCenterOffset(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1368
    :goto_0
    return-void
.end method

.method public setJoystickDirection(II)V
    .locals 1
    .param p1, "gamepadId"    # I
    .param p2, "direction"    # I

    .line 1359
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->setJoystickDirection(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1360
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1361
    :goto_0
    return-void
.end method

.method public setJoystickTouchRange(IIII)V
    .locals 1
    .param p1, "gamepadId"    # I
    .param p2, "centerX"    # I
    .param p3, "centerY"    # I
    .param p4, "radius"    # I

    .line 1352
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/input/IInputManager;->setJoystickTouchRange(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1353
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1354
    :goto_0
    return-void
.end method

.method public setKeyTouchPoint(IIIIZ)V
    .locals 6
    .param p1, "gamepadId"    # I
    .param p2, "keyCode"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "isSendKey"    # Z

    .line 1346
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->setKeyTouchPoint(IIIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1348
    :goto_0
    return-void
.end method

.method public setPointerIconType(I)V
    .locals 2
    .param p1, "iconId"    # I

    .line 920
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setPointerIconType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    nop

    .line 924
    return-void

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPointerSpeed(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "speed"    # I

    .line 801
    const/4 v0, -0x7

    if-lt p2, v0, :cond_0

    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    .line 805
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pointer_speed"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 807
    return-void

    .line 802
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPressKeyListener(Landroid/hardware/input/IPressKeyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/input/IPressKeyListener;

    .line 959
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setPressKeyListener(Landroid/hardware/input/IPressKeyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    nop

    .line 963
    return-void

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .locals 2
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .line 759
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    nop

    .line 763
    return-void

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public tryPointerSpeed(I)V
    .locals 2
    .param p1, "speed"    # I

    .line 821
    const/4 v0, -0x7

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 826
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->tryPointerSpeed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    nop

    .line 830
    return-void

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 822
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 435
    if-eqz p1, :cond_1

    .line 439
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v1

    .line 441
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 442
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    .line 443
    .local v2, "d":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 444
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 446
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    :cond_0
    monitor-exit v0

    .line 447
    return-void

    .line 446
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 436
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    .line 508
    if-eqz p1, :cond_1

    .line 511
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I

    move-result v1

    .line 513
    .local v1, "idx":I
    if-ltz v1, :cond_0

    .line 514
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;

    .line 515
    .local v2, "d":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 517
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    :cond_0
    monitor-exit v0

    .line 518
    return-void

    .line 517
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 509
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
