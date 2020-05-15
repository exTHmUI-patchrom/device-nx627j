.class Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;
.super Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;
.source "BluetoothHidDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothHidDevice$Callback;

    .line 340
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;-><init>()V

    .line 341
    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 342
    iput-object p2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    .line 343
    return-void
.end method

.method public static synthetic lambda$onAppStatusChanged$0(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1
    .param p1, "pluggedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "registered"    # Z

    .line 348
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method public static synthetic lambda$onConnectionStateChanged$1(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 354
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public static synthetic lambda$onGetReport$2(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;BBI)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "bufferSize"    # I

    .line 360
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V

    return-void
.end method

.method public static synthetic lambda$onInterruptData$5(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;B[B)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportId"    # B
    .param p3, "data"    # [B

    .line 378
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onInterruptData(Landroid/bluetooth/BluetoothDevice;B[B)V

    return-void
.end method

.method public static synthetic lambda$onSetProtocol$4(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;B)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "protocol"    # B

    .line 372
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V

    return-void
.end method

.method public static synthetic lambda$onSetReport$3(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;BB[B)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "data"    # [B

    .line 366
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V

    return-void
.end method

.method public static synthetic lambda$onVirtualCableUnplug$6(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 384
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method


# virtual methods
.method public onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .param p1, "pluggedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "registered"    # Z

    .line 347
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    .line 348
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/-$$Lambda$BluetoothHidDevice$CallbackWrapper$NFluHjT4zTfYBRXClu_2k6mPKFI;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/-$$Lambda$BluetoothHidDevice$CallbackWrapper$NFluHjT4zTfYBRXClu_2k6mPKFI;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 349
    return-void
.end method

.method public onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 353
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    .line 354
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/-$$Lambda$BluetoothHidDevice$CallbackWrapper$qtStwQVkGfOs2iJIiePWqJJpi0w;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/-$$Lambda$BluetoothHidDevice$CallbackWrapper$qtStwQVkGfOs2iJIiePWqJJpi0w;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method public onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "bufferSize"    # I

    .line 359
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    .line 360
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/bluetooth/-$$Lambda$BluetoothHidDevice$CallbackWrapper$Eyz_qG6mvTlh6a8Bp41ZoEJzQCQ;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/-$$Lambda$BluetoothHidDevice$CallbackWrapper$Eyz_qG6mvTlh6a8Bp41ZoEJzQCQ;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;BBI)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method public onInterruptData(Landroid/bluetooth/BluetoothDevice;B[B)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportId"    # B
    .param p3, "data"    # [B

    .line 377
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    .line 378
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/-$$Lambda$BluetoothHidDevice$CallbackWrapper$xW99-tc95OmGApoKnpQ9q1TXb9k;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/-$$Lambda$BluetoothHidDevice$CallbackWrapper$xW99-tc95OmGApoKnpQ9q1TXb9k;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;B[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 379
    return-void
.end method

.method public onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "protocol"    # B

    .line 371
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    .line 372
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/-$$Lambda$BluetoothHidDevice$CallbackWrapper$ypkr5GGxsAkGSBiLjIRwg-PzqCM;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/-$$Lambda$BluetoothHidDevice$CallbackWrapper$ypkr5GGxsAkGSBiLjIRwg-PzqCM;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 373
    return-void
.end method

.method public onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "data"    # [B

    .line 365
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    .line 366
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/bluetooth/-$$Lambda$BluetoothHidDevice$CallbackWrapper$3bTGVlfKj7Y0SZdifW_Ya2myDKs;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/-$$Lambda$BluetoothHidDevice$CallbackWrapper$3bTGVlfKj7Y0SZdifW_Ya2myDKs;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;BB[B)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method

.method public onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 383
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    .line 384
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/-$$Lambda$BluetoothHidDevice$CallbackWrapper$jiodzbAJAcleQCwlDcBjvDddELM;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/-$$Lambda$BluetoothHidDevice$CallbackWrapper$jiodzbAJAcleQCwlDcBjvDddELM;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method
