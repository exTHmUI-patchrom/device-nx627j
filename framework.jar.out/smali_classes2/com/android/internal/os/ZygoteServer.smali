.class Lcom/android/internal/os/ZygoteServer;
.super Ljava/lang/Object;
.source "ZygoteServer.java"


# static fields
.field private static final ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field public static final TAG:Ljava/lang/String; = "ZygoteServer"


# instance fields
.field private mCloseSocketFd:Z

.field private mIsForkChild:Z

.field private mServerSocket:Landroid/net/LocalServerSocket;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 3
    .param p1, "abiList"    # Ljava/lang/String;

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/ZygoteServer;->createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method closeServerSocket()V
    .locals 3

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 144
    .local v0, "fd":Ljava/io/FileDescriptor;
    iget-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V

    .line 145
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z

    if-eqz v1, :cond_0

    .line 146
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string v1, "ZygoteServer"

    const-string v2, "Zygote:  error closing descriptor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Landroid/system/ErrnoException;
    goto :goto_1

    .line 149
    :catch_1
    move-exception v0

    .line 150
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "ZygoteServer"

    const-string v2, "Zygote:  error closing sockets"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 155
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 156
    return-void
.end method

.method protected createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 1
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/android/internal/os/ZygoteConnection;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-object v0
.end method

.method getServerSocketFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method registerServerSocketAtAbstractName(Ljava/lang/String;)V
    .locals 4
    .param p1, "socketName"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_0

    .line 109
    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    invoke-direct {v0, p1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error binding to abstract socket \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 116
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method registerServerSocketFromEnv(Ljava/lang/String;)V
    .locals 6
    .param p1, "socketName"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_SOCKET_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "fullSocketName":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "env":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "env":Ljava/lang/String;
    move v1, v2

    .line 88
    .local v1, "fileDesc":I
    nop

    .line 87
    nop

    .line 91
    :try_start_1
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 92
    .local v2, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v2, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 93
    new-instance v3, Landroid/net/LocalServerSocket;

    invoke-direct {v3, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v3, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 94
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    goto :goto_0

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error binding to local socket \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 86
    .end local v1    # "fileDesc":I
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 87
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " unset or invalid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 100
    .end local v0    # "fullSocketName":Ljava/lang/String;
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 9
    .param p1, "abiList"    # Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "fds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    iget-object v2, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/system/StructPollfd;

    .line 182
    .local v2, "pollFds":[Landroid/system/StructPollfd;
    const/4 v3, 0x0

    move v4, v3

    .line 182
    .local v4, "i":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 183
    new-instance v5, Landroid/system/StructPollfd;

    invoke-direct {v5}, Landroid/system/StructPollfd;-><init>()V

    aput-object v5, v2, v4

    .line 184
    aget-object v5, v2, v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/FileDescriptor;

    iput-object v6, v5, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 185
    aget-object v5, v2, v4

    sget v6, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v6, v6

    iput-short v6, v5, Landroid/system/StructPollfd;->events:S

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 188
    .end local v4    # "i":I
    :cond_0
    const/4 v4, -0x1

    :try_start_0
    invoke-static {v2, v4}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    nop

    .line 192
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    .line 192
    .restart local v4    # "i":I
    :goto_2
    if-ltz v4, :cond_8

    .line 193
    aget-object v5, v2, v4

    iget-short v5, v5, Landroid/system/StructPollfd;->revents:S

    sget v6, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v5, v6

    if-nez v5, :cond_1

    .line 194
    goto :goto_4

    .line 197
    :cond_1
    if-nez v4, :cond_2

    .line 198
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteServer;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v5

    .line 199
    .local v5, "newPeer":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {v5}, Lcom/android/internal/os/ZygoteConnection;->getFileDesciptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v5    # "newPeer":Lcom/android/internal/os/ZygoteConnection;
    goto :goto_4

    .line 203
    :cond_2
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ZygoteConnection;

    .line 204
    .local v5, "connection":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v5, p0}, Lcom/android/internal/os/ZygoteConnection;->processOneCommand(Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    move-result-object v6

    .line 206
    .local v6, "command":Ljava/lang/Runnable;
    iget-boolean v7, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_4

    .line 209
    if-eqz v6, :cond_3

    .line 213
    nop

    .line 256
    iput-boolean v3, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 213
    return-object v6

    .line 210
    :cond_3
    :try_start_2
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "command == null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 216
    :cond_4
    if-nez v6, :cond_6

    .line 223
    invoke-virtual {v5}, Lcom/android/internal/os/ZygoteConnection;->isClosedByPeer()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 224
    invoke-virtual {v5}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 225
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 226
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    .end local v5    # "connection":Lcom/android/internal/os/ZygoteConnection;
    .end local v6    # "command":Ljava/lang/Runnable;
    :cond_5
    :goto_3
    iput-boolean v3, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 257
    goto :goto_4

    .line 217
    .restart local v5    # "connection":Lcom/android/internal/os/ZygoteConnection;
    .restart local v6    # "command":Ljava/lang/Runnable;
    :cond_6
    :try_start_3
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "command != null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    .end local v5    # "connection":Lcom/android/internal/os/ZygoteConnection;
    .end local v6    # "command":Ljava/lang/Runnable;
    :catchall_0
    move-exception v5

    goto :goto_5

    .line 229
    :catch_0
    move-exception v5

    .line 230
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    iget-boolean v6, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    if-nez v6, :cond_7

    .line 236
    const-string v6, "ZygoteServer"

    const-string v7, "Exception executing zygote command: "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/ZygoteConnection;

    .line 242
    .local v6, "conn":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v6}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 244
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 245
    .end local v6    # "conn":Lcom/android/internal/os/ZygoteConnection;
    goto :goto_3

    .line 192
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 249
    .restart local v5    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v6, "ZygoteServer"

    const-string v7, "Caught post-fork exception in child process."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 256
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_5
    iput-boolean v3, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    throw v5

    .line 260
    .end local v2    # "pollFds":[Landroid/system/StructPollfd;
    .end local v4    # "i":I
    :cond_8
    goto/16 :goto_0

    .line 189
    .restart local v2    # "pollFds":[Landroid/system/StructPollfd;
    :catch_1
    move-exception v3

    .line 190
    .local v3, "ex":Landroid/system/ErrnoException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "poll failed"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method setForkChild()V
    .locals 1

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 71
    return-void
.end method
