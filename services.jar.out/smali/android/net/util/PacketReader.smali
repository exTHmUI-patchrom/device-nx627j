.class public abstract Landroid/net/util/PacketReader;
.super Ljava/lang/Object;
.source "PacketReader.java"


# static fields
.field public static final DEFAULT_RECV_BUF_SIZE:I = 0x800

.field private static final FD_EVENTS:I = 0x5

.field private static final UNREGISTER_THIS_FD:I


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private final mHandler:Landroid/os/Handler;

.field private final mPacket:[B

.field private mPacketsReceived:J

.field private final mQueue:Landroid/os/MessageQueue;


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 87
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Landroid/net/util/PacketReader;-><init>(Landroid/os/Handler;I)V

    .line 88
    return-void
.end method

.method protected constructor <init>(Landroid/os/Handler;I)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "recvbufsize"    # I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/net/util/PacketReader;->mHandler:Landroid/os/Handler;

    .line 92
    iget-object v0, p0, Landroid/net/util/PacketReader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/net/util/PacketReader;->mQueue:Landroid/os/MessageQueue;

    .line 93
    const/16 v0, 0x800

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/util/PacketReader;->mPacket:[B

    .line 94
    return-void
.end method

.method static synthetic access$000(Landroid/net/util/PacketReader;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/util/PacketReader;

    .line 70
    invoke-direct {p0}, Landroid/net/util/PacketReader;->isRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/net/util/PacketReader;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/util/PacketReader;

    .line 70
    invoke-direct {p0}, Landroid/net/util/PacketReader;->handleInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/net/util/PacketReader;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/util/PacketReader;

    .line 70
    invoke-direct {p0}, Landroid/net/util/PacketReader;->unregisterAndDestroyFd()V

    return-void
.end method

.method protected static closeFd(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 83
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 84
    return-void
.end method

.method private createAndRegisterFd()V
    .locals 4

    .line 163
    iget-object v0, p0, Landroid/net/util/PacketReader;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/util/PacketReader;->createFd()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/util/PacketReader;->mFd:Ljava/io/FileDescriptor;

    .line 167
    iget-object v0, p0, Landroid/net/util/PacketReader;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Landroid/net/util/PacketReader;->mFd:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_1
    nop

    .line 178
    iget-object v0, p0, Landroid/net/util/PacketReader;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_2

    return-void

    .line 180
    :cond_2
    iget-object v0, p0, Landroid/net/util/PacketReader;->mQueue:Landroid/os/MessageQueue;

    iget-object v1, p0, Landroid/net/util/PacketReader;->mFd:Ljava/io/FileDescriptor;

    const/4 v2, 0x5

    new-instance v3, Landroid/net/util/PacketReader$1;

    invoke-direct {v3, p0}, Landroid/net/util/PacketReader$1;-><init>(Landroid/net/util/PacketReader;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 196
    invoke-virtual {p0}, Landroid/net/util/PacketReader;->onStart()V

    .line 197
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to create socket: "

    invoke-virtual {p0, v1, v0}, Landroid/net/util/PacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 173
    iget-object v1, p0, Landroid/net/util/PacketReader;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/net/util/PacketReader;->closeFd(Ljava/io/FileDescriptor;)V

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/util/PacketReader;->mFd:Ljava/io/FileDescriptor;

    .line 175
    return-void
.end method

.method private handleInput()Z
    .locals 6

    .line 203
    :goto_0
    invoke-direct {p0}, Landroid/net/util/PacketReader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/util/PacketReader;->mFd:Ljava/io/FileDescriptor;

    iget-object v2, p0, Landroid/net/util/PacketReader;->mPacket:[B

    invoke-virtual {p0, v1, v2}, Landroid/net/util/PacketReader;->readPacket(Ljava/io/FileDescriptor;[B)I

    move-result v1

    .line 208
    .local v1, "bytesRead":I
    if-ge v1, v0, :cond_1

    .line 209
    invoke-direct {p0}, Landroid/net/util/PacketReader;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Socket closed, exiting"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/net/util/PacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 210
    :cond_0
    goto :goto_1

    .line 212
    :cond_1
    iget-wide v2, p0, Landroid/net/util/PacketReader;->mPacketsReceived:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/util/PacketReader;->mPacketsReceived:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    nop

    .line 225
    nop

    .line 229
    :try_start_1
    iget-object v0, p0, Landroid/net/util/PacketReader;->mPacket:[B

    invoke-virtual {p0, v0, v1}, Landroid/net/util/PacketReader;->handlePacket([BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    nop

    .line 234
    .end local v1    # "bytesRead":I
    goto :goto_0

    .line 230
    .restart local v1    # "bytesRead":I
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "handlePacket error: "

    invoke-virtual {p0, v2, v0}, Landroid/net/util/PacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 232
    goto :goto_1

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "bytesRead":I
    :catch_1
    move-exception v0

    .line 224
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroid/net/util/PacketReader;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "readPacket error: "

    invoke-virtual {p0, v1, v0}, Landroid/net/util/PacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 225
    :cond_2
    goto :goto_1

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 214
    .local v1, "e":Landroid/system/ErrnoException;
    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v2, v3, :cond_3

    .line 216
    return v0

    .line 217
    :cond_3
    iget v0, v1, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EINTR:I

    if-ne v0, v2, :cond_4

    .line 218
    goto :goto_0

    .line 220
    :cond_4
    invoke-direct {p0}, Landroid/net/util/PacketReader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "readPacket error: "

    invoke-virtual {p0, v0, v1}, Landroid/net/util/PacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 221
    :cond_5
    nop

    .line 236
    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_6
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private isRunning()Z
    .locals 1

    .line 199
    iget-object v0, p0, Landroid/net/util/PacketReader;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/util/PacketReader;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$start$0(Landroid/net/util/PacketReader;)V
    .locals 2

    .line 101
    const-string/jumbo v0, "start() called from off-thread"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/util/PacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 102
    invoke-direct {p0}, Landroid/net/util/PacketReader;->createAndRegisterFd()V

    .line 103
    return-void
.end method

.method public static synthetic lambda$stop$1(Landroid/net/util/PacketReader;)V
    .locals 2

    .line 112
    const-string/jumbo v0, "stop() called from off-thread"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/util/PacketReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 113
    invoke-direct {p0}, Landroid/net/util/PacketReader;->unregisterAndDestroyFd()V

    .line 114
    return-void
.end method

.method private onCorrectThread()Z
    .locals 2

    .line 249
    iget-object v0, p0, Landroid/net/util/PacketReader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private unregisterAndDestroyFd()V
    .locals 2

    .line 240
    iget-object v0, p0, Landroid/net/util/PacketReader;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Landroid/net/util/PacketReader;->mQueue:Landroid/os/MessageQueue;

    iget-object v1, p0, Landroid/net/util/PacketReader;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 243
    iget-object v0, p0, Landroid/net/util/PacketReader;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/net/util/PacketReader;->closeFd(Ljava/io/FileDescriptor;)V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/util/PacketReader;->mFd:Ljava/io/FileDescriptor;

    .line 245
    invoke-virtual {p0}, Landroid/net/util/PacketReader;->onStop()V

    .line 246
    return-void
.end method


# virtual methods
.method protected abstract createFd()Ljava/io/FileDescriptor;
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 118
    iget-object v0, p0, Landroid/net/util/PacketReader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected handlePacket([BI)V
    .locals 0
    .param p1, "recvbuf"    # [B
    .param p2, "length"    # I

    .line 145
    return-void
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 150
    return-void
.end method

.method public final numPacketsReceived()J
    .locals 2

    .line 122
    iget-wide v0, p0, Landroid/net/util/PacketReader;->mPacketsReceived:J

    return-wide v0
.end method

.method protected onStart()V
    .locals 0

    .line 155
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 160
    return-void
.end method

.method protected readPacket(Ljava/io/FileDescriptor;[B)I
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "packetBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public final recvBufSize()I
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/net/util/PacketReader;->mPacket:[B

    array-length v0, v0

    return v0
.end method

.method public final start()V
    .locals 2

    .line 97
    invoke-direct {p0}, Landroid/net/util/PacketReader;->onCorrectThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Landroid/net/util/PacketReader;->createAndRegisterFd()V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Landroid/net/util/PacketReader;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/util/-$$Lambda$PacketReader$RiHx8K3BsykombzgqtYo5whFO_U;

    invoke-direct {v1, p0}, Landroid/net/util/-$$Lambda$PacketReader$RiHx8K3BsykombzgqtYo5whFO_U;-><init>(Landroid/net/util/PacketReader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    :goto_0
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 108
    invoke-direct {p0}, Landroid/net/util/PacketReader;->onCorrectThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Landroid/net/util/PacketReader;->unregisterAndDestroyFd()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Landroid/net/util/PacketReader;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/util/-$$Lambda$PacketReader$-RaxjKALPlkYUks1uxbxyNPwpGI;

    invoke-direct {v1, p0}, Landroid/net/util/-$$Lambda$PacketReader$-RaxjKALPlkYUks1uxbxyNPwpGI;-><init>(Landroid/net/util/PacketReader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    :goto_0
    return-void
.end method
