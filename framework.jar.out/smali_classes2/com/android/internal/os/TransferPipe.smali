.class public Lcom/android/internal/os/TransferPipe;
.super Ljava/lang/Object;
.source "TransferPipe.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/TransferPipe$Caller;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_TIMEOUT:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "TransferPipe"


# instance fields
.field mBufferPrefix:Ljava/lang/String;

.field mComplete:Z

.field mEndTime:J

.field mFailure:Ljava/lang/String;

.field final mFds:[Landroid/os/ParcelFileDescriptor;

.field mOutFd:Ljava/io/FileDescriptor;

.field final mThread:Ljava/lang/Thread;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 126
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/TransferPipe;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "bufferPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const-string v0, "TransferPipe"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/TransferPipe;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bufferPrefix"    # Ljava/lang/String;
    .param p2, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    .line 73
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    .line 74
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static varargs dumpAsync(Landroid/os/IBinder;[Ljava/lang/String;)[B
    .locals 10
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 106
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {p0, v3, p1}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 109
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 110
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 112
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 113
    .local v4, "buffer":[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 114
    .local v5, "combinedBuffer":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    aget-object v7, v0, v1

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 116
    .local v6, "is":Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v6, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .local v7, "numRead":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 118
    nop

    .line 123
    .end local v7    # "numRead":I
    :try_start_3
    invoke-static {v3, v6}, Lcom/android/internal/os/TransferPipe;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 125
    .end local v6    # "is":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 126
    :try_start_4
    invoke-static {v3, v5}, Lcom/android/internal/os/TransferPipe;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 128
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 129
    aget-object v1, v0, v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 125
    return-object v6

    .line 121
    .restart local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "numRead":I
    :cond_0
    :try_start_5
    invoke-virtual {v5, v4, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    .end local v7    # "numRead":I
    goto :goto_0

    .line 123
    :catchall_0
    move-exception v7

    move-object v8, v3

    goto :goto_1

    .line 114
    :catch_0
    move-exception v7

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 123
    :catchall_1
    move-exception v8

    move-object v9, v8

    move-object v8, v7

    move-object v7, v9

    :goto_1
    :try_start_7
    invoke-static {v8, v6}, Lcom/android/internal/os/TransferPipe;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v7
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 126
    .end local v6    # "is":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    goto :goto_2

    .line 113
    :catch_1
    move-exception v3

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 126
    :goto_2
    :try_start_9
    invoke-static {v3, v5}, Lcom/android/internal/os/TransferPipe;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 128
    .end local v4    # "buffer":[B
    .end local v5    # "combinedBuffer":Ljava/io/ByteArrayOutputStream;
    :catchall_3
    move-exception v3

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 129
    aget-object v1, v0, v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method static go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p0, "caller"    # Lcom/android/internal/os/TransferPipe$Caller;
    .param p1, "iface"    # Landroid/os/IInterface;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    const-wide/16 v5, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/os/TransferPipe;->go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 136
    return-void
.end method

.method static go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 3
    .param p0, "caller"    # Lcom/android/internal/os/TransferPipe$Caller;
    .param p1, "iface"    # Landroid/os/IInterface;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 146
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V

    .local v0, "tp":Lcom/android/internal/os/TransferPipe;
    const/4 v1, 0x0

    .line 150
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-interface {p0, p1, v2, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p2, p5, p6}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    invoke-static {v1, v0}, Lcom/android/internal/os/TransferPipe;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 153
    .end local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    return-void

    .line 152
    .restart local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 149
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    :goto_1
    invoke-static {v1, v0}, Lcom/android/internal/os/TransferPipe;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/os/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V

    .line 158
    return-void
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V
    .locals 3
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    instance-of v0, p0, Landroid/os/Binder;

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V

    .local v0, "tp":Lcom/android/internal/os/TransferPipe;
    const/4 v1, 0x0

    .line 172
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-interface {p0, v2, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p1, p3, p4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    invoke-static {v1, v0}, Lcom/android/internal/os/TransferPipe;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 175
    .end local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    return-void

    .line 174
    .restart local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 171
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    :goto_1
    invoke-static {v1, v0}, Lcom/android/internal/os/TransferPipe;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 233
    return-void
.end method

.method closeFd(I)V
    .locals 2
    .param p1, "num"    # I

    .line 220
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 228
    :cond_0
    return-void
.end method

.method protected getNewOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 243
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method getReadFd()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWriteFd()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public go(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V

    .line 179
    return-void
.end method

.method public go(Ljava/io/FileDescriptor;J)V
    .locals 4
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    if-nez v0, :cond_1

    .line 196
    iget-wide v0, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v0, v2

    .line 197
    .local v0, "waitTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 204
    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    goto :goto_1

    .line 205
    :catch_0
    move-exception v2

    .line 207
    .end local v0    # "waitTime":J
    :goto_1
    goto :goto_0

    .line 199
    .restart local v0    # "waitTime":J
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 200
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timeout"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    .end local v0    # "waitTime":J
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 213
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 216
    nop

    .line 217
    return-void

    .line 211
    :cond_2
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 215
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v0
.end method

.method public kill()V
    .locals 1

    .line 236
    monitor-enter p0

    .line 237
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 239
    monitor-exit p0

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 11

    .line 248
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 252
    .local v0, "buffer":[B
    monitor-enter p0

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getReadFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 254
    .local v1, "readFd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_0

    .line 255
    const-string v2, "TransferPipe"

    const-string v3, "Pipe has been closed..."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    monitor-exit p0

    return-void

    .line 258
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 259
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getNewOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .end local v1    # "readFd":Landroid/os/ParcelFileDescriptor;
    move-object v1, v3

    .line 260
    .local v1, "fos":Ljava/io/OutputStream;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 263
    const/4 v3, 0x0

    .line 264
    .local v3, "bufferPrefix":[B
    const/4 v4, 0x1

    .line 265
    .local v4, "needPrefix":Z
    iget-object v5, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 266
    iget-object v5, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 271
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "size":I
    const/4 v7, 0x1

    if-lez v5, :cond_9

    .line 273
    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 274
    invoke-virtual {v1, v0, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 276
    :cond_2
    const/4 v8, 0x0

    .line 277
    .local v8, "start":I
    nop

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_7

    .line 278
    aget-byte v9, v0, v5

    const/16 v10, 0xa

    if-eq v9, v10, :cond_6

    .line 279
    if-le v5, v8, :cond_3

    .line 280
    sub-int v9, v5, v8

    invoke-virtual {v1, v0, v8, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 282
    :cond_3
    move v8, v5

    .line 283
    if-eqz v4, :cond_4

    .line 284
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 285
    const/4 v4, 0x0

    .line 288
    :cond_4
    add-int/2addr v5, v7

    .line 289
    if-ge v5, v6, :cond_5

    aget-byte v9, v0, v5

    if-ne v9, v10, :cond_4

    .line 290
    :cond_5
    if-ge v5, v6, :cond_6

    .line 291
    const/4 v4, 0x1

    .line 277
    :cond_6
    add-int/2addr v5, v7

    goto :goto_1

    .line 295
    .end local v5    # "i":I
    :cond_7
    if-le v6, v8, :cond_8

    .line 296
    sub-int v5, v6, v8

    invoke-virtual {v1, v0, v8, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 298
    .end local v8    # "start":I
    :cond_8
    goto :goto_0

    .line 301
    :cond_9
    iget-object v5, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 310
    nop

    .line 309
    nop

    .line 312
    monitor-enter p0

    .line 313
    :try_start_2
    iput-boolean v7, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 315
    monitor-exit p0

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 304
    .end local v6    # "size":I
    :catch_0
    move-exception v5

    .line 305
    .local v5, "e":Ljava/io/IOException;
    monitor-enter p0

    .line 306
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 308
    monitor-exit p0

    return-void

    .line 309
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 260
    .end local v1    # "fos":Ljava/io/OutputStream;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "bufferPrefix":[B
    .end local v4    # "needPrefix":Z
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public setBufferPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    .line 87
    return-void
.end method
