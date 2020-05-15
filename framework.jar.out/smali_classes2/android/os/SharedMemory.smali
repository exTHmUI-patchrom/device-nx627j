.class public final Landroid/os/SharedMemory;
.super Ljava/lang/Object;
.source "SharedMemory.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SharedMemory$MemoryRegistration;,
        Landroid/os/SharedMemory$Unmapper;,
        Landroid/os/SharedMemory$Closer;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SharedMemory;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROT_MASK:I


# instance fields
.field private mCleaner:Lsun/misc/Cleaner;

.field private final mFileDescriptor:Ljava/io/FileDescriptor;

.field private final mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

.field private final mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 94
    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->PROT_EXEC:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->PROT_NONE:I

    or-int/2addr v0, v1

    sput v0, Landroid/os/SharedMemory;->PROT_MASK:I

    .line 273
    new-instance v0, Landroid/os/SharedMemory$1;

    invoke-direct {v0}, Landroid/os/SharedMemory$1;-><init>()V

    sput-object v0, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iput-object p1, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 57
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/os/SharedMemory;->nGetSize(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Landroid/os/SharedMemory;->mSize:I

    .line 58
    iget v0, p0, Landroid/os/SharedMemory;->mSize:I

    if-lez v0, :cond_0

    .line 62
    new-instance v0, Landroid/os/SharedMemory$MemoryRegistration;

    iget v1, p0, Landroid/os/SharedMemory;->mSize:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/SharedMemory$MemoryRegistration;-><init>(ILandroid/os/SharedMemory$1;)V

    iput-object v0, p0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    .line 63
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    new-instance v1, Landroid/os/SharedMemory$Closer;

    iget-object v3, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-object v4, p0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-direct {v1, v3, v4, v2}, Landroid/os/SharedMemory$Closer;-><init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory$1;)V

    invoke-static {v0, v1}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    .line 65
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FileDescriptor is not a valid ashmem fd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to create SharedMemory from closed FileDescriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to create SharedMemory from a null FileDescriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/FileDescriptor;
    .param p2, "x1"    # Landroid/os/SharedMemory$1;

    .line 38
    invoke-direct {p0, p1}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private checkOpen()V
    .locals 2

    .line 89
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SharedMemory is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Ljava/lang/String;I)Landroid/os/SharedMemory;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 82
    if-lez p1, :cond_0

    .line 85
    new-instance v0, Landroid/os/SharedMemory;

    invoke-static {p0, p1}, Landroid/os/SharedMemory;->nCreate(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nCreate(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method private static native nGetSize(Ljava/io/FileDescriptor;)I
.end method

.method private static native nSetProt(Ljava/io/FileDescriptor;I)I
.end method

.method public static unmap(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 240
    instance-of v0, p0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_0

    .line 241
    invoke-static {p0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 246
    return-void

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer wasn\'t created by #map(int, int, int); can\'t unmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateProt(I)V
    .locals 2
    .param p0, "prot"    # I

    .line 98
    sget v0, Landroid/os/SharedMemory;->PROT_MASK:I

    not-int v0, v0

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 101
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid prot value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 256
    iget-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    .line 260
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public getFd()I
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    return v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 167
    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 168
    iget v0, p0, Landroid/os/SharedMemory;->mSize:I

    return v0
.end method

.method public map(III)Ljava/nio/ByteBuffer;
    .locals 19
    .param p1, "prot"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 214
    move/from16 v15, p3

    invoke-direct/range {p0 .. p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 215
    invoke-static/range {p1 .. p1}, Landroid/os/SharedMemory;->validateProt(I)V

    .line 216
    if-ltz v1, :cond_3

    .line 219
    if-lez v15, :cond_2

    .line 222
    add-int v2, v1, v15

    iget v3, v0, Landroid/os/SharedMemory;->mSize:I

    if-gt v2, v3, :cond_1

    .line 225
    const-wide/16 v4, 0x0

    int-to-long v6, v15

    sget v9, Landroid/system/OsConstants;->MAP_SHARED:I

    iget-object v10, v0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    int-to-long v11, v1

    move/from16 v8, p1

    invoke-static/range {v4 .. v12}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v16

    .line 226
    .local v16, "address":J
    sget v2, Landroid/system/OsConstants;->PROT_WRITE:I

    and-int v2, p1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v14, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 227
    .local v14, "readOnly":Z
    :goto_1
    new-instance v13, Landroid/os/SharedMemory$Unmapper;

    iget-object v2, v0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-virtual {v2}, Landroid/os/SharedMemory$MemoryRegistration;->acquire()Landroid/os/SharedMemory$MemoryRegistration;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v13

    move-wide/from16 v3, v16

    move v5, v15

    invoke-direct/range {v2 .. v7}, Landroid/os/SharedMemory$Unmapper;-><init>(JILandroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory$1;)V

    .line 228
    .local v13, "unmapper":Ljava/lang/Runnable;
    new-instance v2, Ljava/nio/DirectByteBuffer;

    iget-object v12, v0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    move-object v8, v2

    move v9, v15

    move-wide/from16 v10, v16

    invoke-direct/range {v8 .. v14}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V

    return-object v2

    .line 223
    .end local v13    # "unmapper":Ljava/lang/Runnable;
    .end local v14    # "readOnly":Z
    .end local v16    # "address":J
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "offset + length must not exceed getSize()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Length must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Offset must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public mapReadOnly()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 196
    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    iget v1, p0, Landroid/os/SharedMemory;->mSize:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/os/SharedMemory;->map(III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public mapReadWrite()Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 182
    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/os/SharedMemory;->mSize:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/os/SharedMemory;->map(III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public setProtect(I)Z
    .locals 2
    .param p1, "prot"    # I

    .line 129
    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 130
    invoke-static {p1}, Landroid/os/SharedMemory;->validateProt(I)V

    .line 131
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Landroid/os/SharedMemory;->nSetProt(Ljava/io/FileDescriptor;I)I

    move-result v0

    .line 132
    .local v0, "errno":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 269
    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 270
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 271
    return-void
.end method
