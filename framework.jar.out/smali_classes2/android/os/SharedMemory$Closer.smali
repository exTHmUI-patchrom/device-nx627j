.class final Landroid/os/SharedMemory$Closer;
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
    name = "Closer"
.end annotation


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;


# direct methods
.method private constructor <init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory$MemoryRegistration;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "memoryReference"    # Landroid/os/SharedMemory$MemoryRegistration;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Landroid/os/SharedMemory$Closer;->mFd:Ljava/io/FileDescriptor;

    .line 296
    iput-object p2, p0, Landroid/os/SharedMemory$Closer;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    .line 297
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/FileDescriptor;
    .param p2, "x1"    # Landroid/os/SharedMemory$MemoryRegistration;
    .param p3, "x2"    # Landroid/os/SharedMemory$1;

    .line 290
    invoke-direct {p0, p1, p2}, Landroid/os/SharedMemory$Closer;-><init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory$MemoryRegistration;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 302
    :try_start_0
    iget-object v0, p0, Landroid/os/SharedMemory$Closer;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_0

    :catch_0
    move-exception v0

    .line 304
    :goto_0
    iget-object v0, p0, Landroid/os/SharedMemory$Closer;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-virtual {v0}, Landroid/os/SharedMemory$MemoryRegistration;->release()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SharedMemory$Closer;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    .line 306
    return-void
.end method
