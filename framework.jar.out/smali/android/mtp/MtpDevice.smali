.class public final Landroid/mtp/MtpDevice;
.super Ljava/lang/Object;
.source "MtpDevice.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpDevice"


# instance fields
.field private mCloseGuard:Ldalvik/system/CloseGuard;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mConnection:Landroid/hardware/usb/UsbDeviceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mLock:Ljava/lang/Object;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    nop

    .line 52
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDevice;->mLock:Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 68
    return-void
.end method

.method static synthetic access$000(Landroid/mtp/MtpDevice;I)V
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpDevice;
    .param p1, "x1"    # I

    .line 40
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_discard_event_request(I)V

    return-void
.end method

.method private native native_close()V
.end method

.method private native native_delete_object(I)Z
.end method

.method private native native_discard_event_request(I)V
.end method

.method private native native_get_device_info()Landroid/mtp/MtpDeviceInfo;
.end method

.method private native native_get_object(IJ)[B
.end method

.method private native native_get_object_handles(III)[I
.end method

.method private native native_get_object_info(I)Landroid/mtp/MtpObjectInfo;
.end method

.method private native native_get_object_size_long(II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_get_parent(I)I
.end method

.method private native native_get_partial_object(IJJ[B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_get_partial_object_64(IJJ[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_get_storage_id(I)I
.end method

.method private native native_get_storage_ids()[I
.end method

.method private native native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;
.end method

.method private native native_get_thumbnail(I)[B
.end method

.method private native native_import_file(II)Z
.end method

.method private native native_import_file(ILjava/lang/String;)Z
.end method

.method private native native_open(Ljava/lang/String;I)Z
.end method

.method private native native_reap_event_request(I)Landroid/mtp/MtpEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_send_object(IJI)Z
.end method

.method private native native_send_object_info(Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;
.end method

.method private native native_submit_event_request()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 111
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 115
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_close()V

    .line 117
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/mtp/MtpDevice;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 120
    :cond_0
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteObject(I)Z
    .locals 1
    .param p1, "objectHandle"    # I

    .line 294
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_delete_object(I)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/mtp/MtpDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 133
    nop

    .line 134
    return-void

    .line 132
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 155
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    return v0
.end method

.method public getDeviceInfo()Landroid/mtp/MtpDeviceInfo;
    .locals 1

    .line 169
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_device_info()Landroid/mtp/MtpDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject(II)[B
    .locals 2
    .param p1, "objectHandle"    # I
    .param p2, "objectSize"    # I

    .line 208
    const-string/jumbo v0, "objectSize should not be negative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 209
    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Landroid/mtp/MtpDevice;->native_get_object(IJ)[B

    move-result-object v0

    return-object v0
.end method

.method public getObjectHandles(III)[I
    .locals 1
    .param p1, "storageId"    # I
    .param p2, "format"    # I
    .param p3, "objectHandle"    # I

    .line 194
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDevice;->native_get_object_handles(III)[I

    move-result-object v0

    return-object v0
.end method

.method public getObjectInfo(I)Landroid/mtp/MtpObjectInfo;
    .locals 1
    .param p1, "objectHandle"    # I

    .line 282
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_object_info(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v0

    return-object v0
.end method

.method public getObjectSizeLong(II)J
    .locals 2
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_get_object_size_long(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getParent(I)J
    .locals 2
    .param p1, "objectHandle"    # I

    .line 304
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_parent(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPartialObject(IJJ[B)J
    .locals 2
    .param p1, "objectHandle"    # I
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .param p6, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-direct/range {p0 .. p6}, Landroid/mtp/MtpDevice;->native_get_partial_object(IJJ[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPartialObject64(IJJ[B)J
    .locals 2
    .param p1, "objectHandle"    # I
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .param p6, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-direct/range {p0 .. p6}, Landroid/mtp/MtpDevice;->native_get_partial_object_64(IJJ[B)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getStorageId(I)J
    .locals 2
    .param p1, "objectHandle"    # I

    .line 314
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_id(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getStorageIds()[I
    .locals 1

    .line 179
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_storage_ids()[I

    move-result-object v0

    return-object v0
.end method

.method public getStorageInfo(I)Landroid/mtp/MtpStorageInfo;
    .locals 1
    .param p1, "storageId"    # I

    .line 272
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail(I)[B
    .locals 1
    .param p1, "objectHandle"    # I

    .line 262
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_thumbnail(I)[B

    move-result-object v0

    return-object v0
.end method

.method public importFile(ILandroid/os/ParcelFileDescriptor;)Z
    .locals 1
    .param p1, "objectHandle"    # I
    .param p2, "descriptor"    # Landroid/os/ParcelFileDescriptor;

    .line 343
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/mtp/MtpDevice;->native_import_file(II)Z

    move-result v0

    return v0
.end method

.method public importFile(ILjava/lang/String;)Z
    .locals 1
    .param p1, "objectHandle"    # I
    .param p2, "destPath"    # Ljava/lang/String;

    .line 329
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_import_file(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 6
    .param p1, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;

    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 84
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Landroid/mtp/MtpDevice;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 85
    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    const-string/jumbo v3, "user"

    .line 87
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 89
    .local v3, "userManager":Landroid/os/UserManager;
    const-string/jumbo v4, "no_usb_file_transfer"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    iget-object v4, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/mtp/MtpDevice;->native_open(Ljava/lang/String;I)Z

    move-result v4

    move v0, v4

    .line 90
    .end local v3    # "userManager":Landroid/os/UserManager;
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 94
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    goto :goto_1

    .line 97
    :cond_1
    iput-object p1, p0, Landroid/mtp/MtpDevice;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 98
    iget-object v3, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v4, "close"

    invoke-virtual {v3, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 100
    :goto_1
    monitor-exit v2

    .line 102
    return v0

    .line 100
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public readEvent(Landroid/os/CancellationSignal;)Landroid/mtp/MtpEvent;
    .locals 3
    .param p1, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_submit_event_request()I

    move-result v0

    .line 385
    .local v0, "handle":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Other thread is reading an event."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 387
    if-eqz p1, :cond_1

    .line 388
    new-instance v1, Landroid/mtp/MtpDevice$1;

    invoke-direct {v1, p0, v0}, Landroid/mtp/MtpDevice$1;-><init>(Landroid/mtp/MtpDevice;I)V

    invoke-virtual {p1, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 397
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/mtp/MtpDevice;->native_reap_event_request(I)Landroid/mtp/MtpEvent;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    if-eqz p1, :cond_2

    .line 400
    invoke-virtual {p1, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 397
    :cond_2
    return-object v2

    .line 399
    :catchall_0
    move-exception v2

    if-eqz p1, :cond_3

    .line 400
    invoke-virtual {p1, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_3
    throw v2
.end method

.method public sendObject(IJLandroid/os/ParcelFileDescriptor;)Z
    .locals 1
    .param p1, "objectHandle"    # I
    .param p2, "size"    # J
    .param p4, "descriptor"    # Landroid/os/ParcelFileDescriptor;

    .line 359
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/mtp/MtpDevice;->native_send_object(IJI)Z

    move-result v0

    return v0
.end method

.method public sendObjectInfo(Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;
    .locals 1
    .param p1, "info"    # Landroid/mtp/MtpObjectInfo;

    .line 372
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_send_object_info(Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
