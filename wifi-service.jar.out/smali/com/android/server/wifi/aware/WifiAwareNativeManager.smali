.class public Lcom/android/server/wifi/aware/WifiAwareNativeManager;
.super Ljava/lang/Object;
.source "WifiAwareNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;,
        Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiAwareNativeManager"

.field private static final VDBG:Z = false


# instance fields
.field mDbg:Z

.field private mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

.field private mHandler:Landroid/os/Handler;

.field private mInterfaceAvailableForRequestListener:Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;

.field private mInterfaceDestroyedListener:Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;

.field private final mLock:Ljava/lang/Object;

.field private mReferenceCount:I

.field private mWifiAwareNativeCallback:Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

.field private mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

.field private mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/aware/WifiAwareNativeCallback;)V
    .locals 3
    .param p1, "awareStateManager"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p2, "halDeviceManager"    # Lcom/android/server/wifi/HalDeviceManager;
    .param p3, "wifiAwareNativeCallback"    # Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mDbg:Z

    .line 43
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mLock:Ljava/lang/Object;

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    .line 51
    new-instance v2, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;-><init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;)V

    iput-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mInterfaceAvailableForRequestListener:Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;

    .line 53
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mReferenceCount:I

    .line 58
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 59
    iput-object p2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    .line 60
    iput-object p3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiAwareNativeCallback:Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Lcom/android/server/wifi/HalDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    .line 37
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    .line 37
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mInterfaceAvailableForRequestListener:Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    .line 37
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Landroid/hardware/wifi/V1_0/IWifiNanIface;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    .line 37
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    .line 37
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    .line 37
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # Landroid/hardware/wifi/V1_0/WifiStatus;

    .line 247
    if-nez p0, :cond_0

    .line 248
    const-string v0, "status=null"

    return-object v0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/WifiStatus;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public awareIsDown()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mDbg:Z

    if-eqz v1, :cond_0

    .line 203
    const-string v1, "WifiAwareNativeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "awareIsDown: mWifiNanIface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mReferenceCount ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mReferenceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    .line 207
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mReferenceCount:I

    .line 208
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiAwareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->disableUsage()V

    .line 209
    monitor-exit v0

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 259
    const-string v0, "WifiAwareNativeManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWifiNanIface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReferenceCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mReferenceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiAwareNativeCallback:Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/HalDeviceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public getWifiNanIface()Landroid/hardware/wifi/V1_0/IWifiNanIface;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    monitor-exit v0

    return-object v1

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mockableCastTo_1_2(Landroid/hardware/wifi/V1_0/IWifiNanIface;)Landroid/hardware/wifi/V1_2/IWifiNanIface;
    .locals 1
    .param p1, "iface"    # Landroid/hardware/wifi/V1_0/IWifiNanIface;

    .line 69
    invoke-static {p1}, Landroid/hardware/wifi/V1_2/IWifiNanIface;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/wifi/V1_2/IWifiNanIface;

    move-result-object v0

    return-object v0
.end method

.method public releaseAware()V
    .locals 4

    .line 175
    iget-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mDbg:Z

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "WifiAwareNativeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseAware: mWifiNanIface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mReferenceCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    if-nez v0, :cond_1

    .line 181
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    if-nez v0, :cond_2

    .line 184
    const-string v0, "WifiAwareNativeManager"

    const-string v1, "releaseAware: mHalDeviceManager is null!?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mReferenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mReferenceCount:I

    .line 190
    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mReferenceCount:I

    if-eqz v1, :cond_3

    .line 191
    monitor-exit v0

    return-void

    .line 193
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mInterfaceDestroyedListener:Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;->active:Z

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mInterfaceDestroyedListener:Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;

    .line 195
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/HalDeviceManager;->removeIface(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    .line 196
    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    .line 197
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHandler:Landroid/os/Handler;

    .line 79
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/HalDeviceManager;->initialize()V

    .line 80
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    new-instance v1, Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;-><init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/HalDeviceManager;->registerStatusListener(Lcom/android/server/wifi/HalDeviceManager$ManagerStatusListener;Landroid/os/Handler;)V

    .line 97
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/HalDeviceManager;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mInterfaceAvailableForRequestListener:Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceAvailableForRequestListener;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/HalDeviceManager;->registerInterfaceAvailableForRequestListener(ILcom/android/server/wifi/HalDeviceManager$InterfaceAvailableForRequestListener;Landroid/os/Handler;)V

    .line 101
    :cond_0
    return-void
.end method

.method public tryToGetAware()V
    .locals 7

    .line 118
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mDbg:Z

    if-eqz v1, :cond_0

    .line 120
    const-string v1, "WifiAwareNativeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryToGetAware: mWifiNanIface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mReferenceCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mReferenceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 125
    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mReferenceCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mReferenceCount:I

    .line 126
    monitor-exit v0

    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    if-nez v1, :cond_2

    .line 129
    const-string v1, "WifiAwareNativeManager"

    const-string v2, "tryToGetAware: mHalDeviceManager is null!?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->awareIsDown()V

    .line 131
    monitor-exit v0

    return-void

    .line 134
    :cond_2
    new-instance v1, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;-><init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeManager$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mInterfaceDestroyedListener:Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;

    .line 135
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mInterfaceDestroyedListener:Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wifi/HalDeviceManager;->createNanIface(Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;Landroid/os/Handler;)Landroid/hardware/wifi/V1_0/IWifiNanIface;

    move-result-object v1

    .line 137
    .local v1, "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    if-nez v1, :cond_3

    .line 138
    const-string v2, "WifiAwareNativeManager"

    const-string v3, "Was not able to obtain an IWifiNanIface (even though enabled!?)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->awareIsDown()V

    goto :goto_1

    .line 141
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mDbg:Z

    if-eqz v3, :cond_4

    const-string v3, "WifiAwareNativeManager"

    const-string v4, "Obtained an IWifiNanIface"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_4
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mockableCastTo_1_2(Landroid/hardware/wifi/V1_0/IWifiNanIface;)Landroid/hardware/wifi/V1_2/IWifiNanIface;

    move-result-object v3

    .line 146
    .local v3, "iface12":Landroid/hardware/wifi/V1_2/IWifiNanIface;
    if-nez v3, :cond_5

    .line 147
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiAwareNativeCallback:Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mIsHal12OrLater:Z

    .line 148
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiAwareNativeCallback:Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

    invoke-interface {v1, v4}, Landroid/hardware/wifi/V1_0/IWifiNanIface;->registerEventCallback(Landroid/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .local v4, "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    goto :goto_0

    .line 150
    .end local v4    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiAwareNativeCallback:Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

    iput-boolean v2, v4, Lcom/android/server/wifi/aware/WifiAwareNativeCallback;->mIsHal12OrLater:Z

    .line 151
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiAwareNativeCallback:Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

    invoke-interface {v3, v4}, Landroid/hardware/wifi/V1_2/IWifiNanIface;->registerEventCallback_1_2(Landroid/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;)Landroid/hardware/wifi/V1_0/WifiStatus;

    move-result-object v4

    .line 153
    .restart local v4    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :goto_0
    iget v5, v4, Landroid/hardware/wifi/V1_0/WifiStatus;->code:I

    if-eqz v5, :cond_6

    .line 154
    const-string v2, "WifiAwareNativeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IWifiNanIface.registerEventCallback error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->statusString(Landroid/hardware/wifi/V1_0/WifiStatus;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mHalDeviceManager:Lcom/android/server/wifi/HalDeviceManager;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/HalDeviceManager;->removeIface(Landroid/hardware/wifi/V1_0/IWifiIface;)Z

    .line 157
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->awareIsDown()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :try_start_2
    monitor-exit v0

    return-void

    .line 164
    .end local v3    # "iface12":Landroid/hardware/wifi/V1_2/IWifiNanIface;
    .end local v4    # "status":Landroid/hardware/wifi/V1_0/WifiStatus;
    :cond_6
    nop

    .line 165
    iput-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mWifiNanIface:Landroid/hardware/wifi/V1_0/IWifiNanIface;

    .line 166
    iput v2, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->mReferenceCount:I

    .line 168
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    :goto_1
    monitor-exit v0

    .line 169
    return-void

    .line 160
    .restart local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WifiAwareNativeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IWifiNanIface.registerEventCallback exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->awareIsDown()V

    .line 163
    monitor-exit v0

    return-void

    .line 168
    .end local v1    # "iface":Landroid/hardware/wifi/V1_0/IWifiNanIface;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
