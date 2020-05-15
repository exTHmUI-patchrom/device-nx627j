.class Landroid/net/Network$NetworkBoundSocketFactory;
.super Ljavax/net/SocketFactory;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkBoundSocketFactory"
.end annotation


# instance fields
.field private final mNetId:I

.field final synthetic this$0:Landroid/net/Network;


# direct methods
.method public constructor <init>(Landroid/net/Network;I)V
    .locals 0
    .param p2, "netId"    # I

    .line 174
    iput-object p1, p0, Landroid/net/Network$NetworkBoundSocketFactory;->this$0:Landroid/net/Network;

    .line 175
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 176
    iput p2, p0, Landroid/net/Network$NetworkBoundSocketFactory;->mNetId:I

    .line 177
    return-void
.end method

.method private connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/net/Network$NetworkBoundSocketFactory;->this$0:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 184
    .local v0, "hostAddresses":[Ljava/net/InetAddress;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 186
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Network$NetworkBoundSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .local v3, "socket":Ljava/net/Socket;
    move v4, v2

    .line 189
    .local v4, "failed":Z
    if-eqz p3, :cond_0

    :try_start_1
    invoke-virtual {v3, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    goto :goto_1

    .line 194
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 190
    :cond_0
    :goto_1
    new-instance v5, Ljava/net/InetSocketAddress;

    aget-object v6, v0, v1

    invoke-direct {v5, v6, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    const/4 v4, 0x0

    .line 192
    nop

    .line 194
    if-eqz v4, :cond_1

    :try_start_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 192
    :cond_1
    return-object v3

    .line 194
    :goto_2
    if-eqz v4, :cond_2

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    :cond_2
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    .end local v3    # "socket":Ljava/net/Socket;
    .end local v4    # "failed":Z
    :catch_0
    move-exception v3

    .line 197
    .local v3, "e":Ljava/io/IOException;
    array-length v4, v0

    sub-int/2addr v4, v2

    if-eq v1, v4, :cond_3

    .line 184
    .end local v3    # "e":Ljava/io/IOException;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .restart local v3    # "e":Ljava/io/IOException;
    :cond_3
    throw v3

    .line 200
    .end local v1    # "i":I
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 244
    .local v0, "socket":Ljava/net/Socket;
    const/4 v1, 0x1

    .line 246
    .local v1, "failed":Z
    :try_start_0
    iget-object v2, p0, Landroid/net/Network$NetworkBoundSocketFactory;->this$0:Landroid/net/Network;

    invoke-virtual {v2, v0}, Landroid/net/Network;->bindSocket(Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    const/4 v1, 0x0

    .line 249
    if-eqz v1, :cond_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 251
    :cond_0
    return-object v0

    .line 249
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    :cond_1
    throw v2
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/Network$NetworkBoundSocketFactory;->connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, p1, p2, v0}, Landroid/net/Network$NetworkBoundSocketFactory;->connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Landroid/net/Network$NetworkBoundSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 226
    .local v0, "socket":Ljava/net/Socket;
    const/4 v1, 0x1

    .line 228
    .local v1, "failed":Z
    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    const/4 v1, 0x0

    .line 231
    if-eqz v1, :cond_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 233
    :cond_0
    return-object v0

    .line 231
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    :cond_1
    throw v2
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Landroid/net/Network$NetworkBoundSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 212
    .local v0, "socket":Ljava/net/Socket;
    const/4 v1, 0x1

    .line 214
    .local v1, "failed":Z
    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 215
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    const/4 v1, 0x0

    .line 218
    if-eqz v1, :cond_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 220
    :cond_0
    return-object v0

    .line 218
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    :cond_1
    throw v2
.end method
