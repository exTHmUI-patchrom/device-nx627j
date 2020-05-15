.class public final Landroid/util/MemoryIntArray;
.super Ljava/lang/Object;
.source "MemoryIntArray.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/util/MemoryIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MemoryIntArray"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mFd:I

.field private final mIsOwner:Z

.field private final mMemoryAddr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 241
    new-instance v0, Landroid/util/MemoryIntArray$1;

    invoke-direct {v0}, Landroid/util/MemoryIntArray$1;-><init>()V

    sput-object v0, Landroid/util/MemoryIntArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 69
    const/16 v0, 0x400

    if-gt p1, v0, :cond_0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    .line 73
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Landroid/util/MemoryIntArray;->nativeCreate(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 75
    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-boolean v2, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    invoke-direct {p0, v1, v2}, Landroid/util/MemoryIntArray;->nativeOpen(IZ)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    .line 76
    iget-object v1, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 77
    return-void

    .line 70
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max size is 1024"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 82
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    iput v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 86
    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-boolean v2, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    invoke-direct {p0, v1, v2}, Landroid/util/MemoryIntArray;->nativeOpen(IZ)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    .line 87
    iget-object v1, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 88
    return-void

    .line 83
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No backing file descriptor"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/util/MemoryIntArray$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/util/MemoryIntArray$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private enforceNotClosed()V
    .locals 2

    .line 208
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a closed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceValidIndex(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->size()I

    move-result v0

    .line 215
    .local v0, "size":I
    if-ltz p1, :cond_0

    add-int/lit8 v1, v0, -0x1

    if-gt p1, v1, :cond_0

    .line 219
    return-void

    .line 216
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not between 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforceWritable()V
    .locals 2

    .line 222
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    return-void

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "array is not writable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMaxSize()I
    .locals 1

    .line 238
    const/16 v0, 0x400

    return v0
.end method

.method private native nativeClose(IJZ)V
.end method

.method private native nativeCreate(Ljava/lang/String;I)I
.end method

.method private native nativeGet(IJI)I
.end method

.method private native nativeOpen(IZ)J
.end method

.method private native nativeSet(IJII)V
.end method

.method private native nativeSize(I)I
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Landroid/util/MemoryIntArray;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-wide v1, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    iget-boolean v3, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/util/MemoryIntArray;->nativeClose(IJZ)V

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    .line 147
    iget-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 149
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 189
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 190
    return v0

    .line 192
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 193
    return v1

    .line 195
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 196
    return v0

    .line 198
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/util/MemoryIntArray;

    .line 199
    .local v2, "other":Landroid/util/MemoryIntArray;
    iget v3, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget v4, v2, Landroid/util/MemoryIntArray;->mFd:I

    if-ne v3, v4, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Landroid/util/MemoryIntArray;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 165
    :cond_0
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 168
    nop

    .line 169
    return-void

    .line 167
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public get(I)I
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    .line 107
    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;->enforceValidIndex(I)V

    .line 108
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-wide v1, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/util/MemoryIntArray;->nativeGet(IJI)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 204
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .line 155
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWritable()Z
    .locals 1

    .line 94
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    .line 95
    iget-boolean v0, p0, Landroid/util/MemoryIntArray;->mIsOwner:Z

    return v0
.end method

.method public set(II)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    .line 122
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceWritable()V

    .line 123
    invoke-direct {p0, p1}, Landroid/util/MemoryIntArray;->enforceValidIndex(I)V

    .line 124
    iget v1, p0, Landroid/util/MemoryIntArray;->mFd:I

    iget-wide v2, p0, Landroid/util/MemoryIntArray;->mMemoryAddr:J

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/util/MemoryIntArray;->nativeSet(IJII)V

    .line 125
    return-void
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Landroid/util/MemoryIntArray;->enforceNotClosed()V

    .line 134
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    invoke-direct {p0, v0}, Landroid/util/MemoryIntArray;->nativeSize(I)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 178
    iget v0, p0, Landroid/util/MemoryIntArray;->mFd:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 181
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    and-int/lit8 v1, p2, -0x2

    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 184
    nop

    .line 185
    return-void

    .line 183
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    throw v1
.end method
