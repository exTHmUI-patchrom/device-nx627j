.class final Landroid/os/SharedMemory$MemoryRegistration;
.super Ljava/lang/Object;
.source "SharedMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemoryRegistration"
.end annotation


# instance fields
.field private mReferenceCount:I

.field private mSize:I


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput p1, p0, Landroid/os/SharedMemory$MemoryRegistration;->mSize:I

    .line 343
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    .line 344
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/os/SharedMemory$MemoryRegistration;->mSize:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 345
    return-void
.end method

.method synthetic constructor <init>(ILandroid/os/SharedMemory$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/SharedMemory$1;

    .line 337
    invoke-direct {p0, p1}, Landroid/os/SharedMemory$MemoryRegistration;-><init>(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized acquire()Landroid/os/SharedMemory$MemoryRegistration;
    .locals 1

    monitor-enter p0

    .line 348
    :try_start_0
    iget v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-object p0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/os/SharedMemory$MemoryRegistration;
    throw v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 353
    :try_start_0
    iget v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    .line 354
    iget v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    if-nez v0, :cond_0

    .line 355
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/os/SharedMemory$MemoryRegistration;->mSize:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_0
    monitor-exit p0

    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/os/SharedMemory$MemoryRegistration;
    throw v0
.end method
