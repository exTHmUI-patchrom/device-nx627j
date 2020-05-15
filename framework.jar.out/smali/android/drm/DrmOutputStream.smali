.class public Landroid/drm/DrmOutputStream;
.super Ljava/io/OutputStream;
.source "DrmOutputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmOutputStream"


# instance fields
.field private final mClient:Landroid/drm/DrmManagerClient;

.field private final mFd:Ljava/io/FileDescriptor;

.field private final mPfd:Landroid/os/ParcelFileDescriptor;

.field private mSessionId:I


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 3
    .param p1, "client"    # Landroid/drm/DrmManagerClient;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 58
    iput-object p1, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    .line 59
    iput-object p2, p0, Landroid/drm/DrmOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 60
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    .line 62
    iget-object v1, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p3}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 63
    iget v1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    if-eq v1, v0, :cond_0

    .line 66
    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/net/UnknownServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open DRM session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget v0, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 86
    const-string v0, "DrmOutputStream"

    const-string v1, "Closing stream without finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v0, p0, Landroid/drm/DrmOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 90
    return-void
.end method

.method public finish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    iget v1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    .line 70
    .local v0, "status":Landroid/drm/DrmConvertedStatus;
    iget v1, v0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 72
    :try_start_0
    iget-object v1, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    iget v2, v0, Landroid/drm/DrmConvertedStatus;->offset:I

    int-to-long v2, v2

    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 76
    .end local v1    # "e":Landroid/system/ErrnoException;
    :goto_0
    iget-object v1, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    iget-object v2, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    array-length v4, v4

    invoke-static {v1, v2, v3, v4}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 77
    const/4 v1, -0x1

    iput v1, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    .line 81
    return-void

    .line 79
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected DRM status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write(I)V
    .locals 0
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    .line 115
    return-void
.end method

.method public write([BII)V
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 97
    array-length v0, p1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 98
    move-object v0, p1

    .local v0, "exactBuffer":[B
    goto :goto_0

    .line 100
    .end local v0    # "exactBuffer":[B
    :cond_0
    new-array v0, p3, [B

    .line 101
    .restart local v0    # "exactBuffer":[B
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 104
    :goto_0
    iget-object v2, p0, Landroid/drm/DrmOutputStream;->mClient:Landroid/drm/DrmManagerClient;

    iget v3, p0, Landroid/drm/DrmOutputStream;->mSessionId:I

    invoke-virtual {v2, v3, v0}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v2

    .line 105
    .local v2, "status":Landroid/drm/DrmConvertedStatus;
    iget v3, v2, Landroid/drm/DrmConvertedStatus;->statusCode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 106
    iget-object v3, p0, Landroid/drm/DrmOutputStream;->mFd:Ljava/io/FileDescriptor;

    iget-object v4, v2, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    iget-object v5, v2, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    array-length v5, v5

    invoke-static {v3, v4, v1, v5}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 110
    return-void

    .line 108
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected DRM status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/drm/DrmConvertedStatus;->statusCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
