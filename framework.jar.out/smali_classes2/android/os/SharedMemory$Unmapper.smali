.class final Landroid/os/SharedMemory$Unmapper;
.super Ljava/lang/Object;
.source "SharedMemory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Unmapper"
.end annotation


# instance fields
.field private mAddress:J

.field private mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

.field private mSize:I


# direct methods
.method private constructor <init>(JILandroid/os/SharedMemory$MemoryRegistration;)V
    .locals 0
    .param p1, "address"    # J
    .param p3, "size"    # I
    .param p4, "memoryReference"    # Landroid/os/SharedMemory$MemoryRegistration;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-wide p1, p0, Landroid/os/SharedMemory$Unmapper;->mAddress:J

    .line 319
    iput p3, p0, Landroid/os/SharedMemory$Unmapper;->mSize:I

    .line 320
    iput-object p4, p0, Landroid/os/SharedMemory$Unmapper;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    .line 321
    return-void
.end method

.method synthetic constructor <init>(JILandroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # Landroid/os/SharedMemory$MemoryRegistration;
    .param p5, "x3"    # Landroid/os/SharedMemory$1;

    .line 312
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/SharedMemory$Unmapper;-><init>(JILandroid/os/SharedMemory$MemoryRegistration;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 326
    :try_start_0
    iget-wide v0, p0, Landroid/os/SharedMemory$Unmapper;->mAddress:J

    iget v2, p0, Landroid/os/SharedMemory$Unmapper;->mSize:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->munmap(JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    goto :goto_0

    :catch_0
    move-exception v0

    .line 328
    :goto_0
    iget-object v0, p0, Landroid/os/SharedMemory$Unmapper;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-virtual {v0}, Landroid/os/SharedMemory$MemoryRegistration;->release()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SharedMemory$Unmapper;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    .line 330
    return-void
.end method
