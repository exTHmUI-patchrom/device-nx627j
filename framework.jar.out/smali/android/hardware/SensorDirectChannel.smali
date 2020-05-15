.class public final Landroid/hardware/SensorDirectChannel;
.super Ljava/lang/Object;
.source "SensorDirectChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorDirectChannel$RateLevel;,
        Landroid/hardware/SensorDirectChannel$MemoryType;
    }
.end annotation


# static fields
.field public static final RATE_FAST:I = 0x2

.field public static final RATE_NORMAL:I = 0x1

.field public static final RATE_STOP:I = 0x0

.field public static final RATE_VERY_FAST:I = 0x3

.field public static final TYPE_HARDWARE_BUFFER:I = 0x2

.field public static final TYPE_MEMORY_FILE:I = 0x1


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mManager:Landroid/hardware/SensorManager;

.field private final mNativeHandle:I

.field private final mSize:J

.field private final mType:I


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;IIJ)V
    .locals 2
    .param p1, "manager"    # Landroid/hardware/SensorManager;
    .param p2, "id"    # I
    .param p3, "type"    # I
    .param p4, "size"    # J

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 235
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 194
    iput-object p1, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    .line 195
    iput p2, p0, Landroid/hardware/SensorDirectChannel;->mNativeHandle:I

    .line 196
    iput p3, p0, Landroid/hardware/SensorDirectChannel;->mType:I

    .line 197
    iput-wide p4, p0, Landroid/hardware/SensorDirectChannel;->mSize:J

    .line 198
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "SensorDirectChannel"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method static encodeData(Landroid/os/MemoryFile;)[J
    .locals 5
    .param p0, "ashmem"    # Landroid/os/MemoryFile;

    .line 214
    :try_start_0
    invoke-virtual {p0}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .local v0, "fd":I
    goto :goto_0

    .line 215
    .end local v0    # "fd":I
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/IOException;
    const/4 v0, -0x1

    .line 218
    .local v0, "fd":I
    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    int-to-long v3, v0

    aput-wide v3, v1, v2

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 137
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 140
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->destroyDirectChannel(Landroid/hardware/SensorDirectChannel;)V

    .line 142
    :cond_0
    return-void
.end method

.method public configure(Landroid/hardware/Sensor;I)I
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "rateLevel"    # I

    .line 189
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/SensorManager;->configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I

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

    .line 224
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/SensorDirectChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 231
    nop

    .line 232
    return-void

    .line 230
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getNativeHandle()I
    .locals 1

    .line 203
    iget v0, p0, Landroid/hardware/SensorDirectChannel;->mNativeHandle:I

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 117
    iget-object v0, p0, Landroid/hardware/SensorDirectChannel;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    invoke-virtual {p0}, Landroid/hardware/SensorDirectChannel;->isOpen()Z

    move-result v0

    return v0
.end method
