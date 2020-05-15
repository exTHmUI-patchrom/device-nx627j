.class public Landroid/os/ZygoteProcess$ZygoteState;
.super Ljava/lang/Object;
.source "ZygoteProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ZygoteProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZygoteState"
.end annotation


# instance fields
.field final abiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final inputStream:Ljava/io/DataInputStream;

.field mClosed:Z

.field final socket:Landroid/net/LocalSocket;

.field final writer:Ljava/io/BufferedWriter;


# direct methods
.method private constructor <init>(Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V
    .locals 0
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "inputStream"    # Ljava/io/DataInputStream;
    .param p3, "writer"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LocalSocket;",
            "Ljava/io/DataInputStream;",
            "Ljava/io/BufferedWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p4, "abiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Landroid/os/ZygoteProcess$ZygoteState;->socket:Landroid/net/LocalSocket;

    .line 101
    iput-object p2, p0, Landroid/os/ZygoteProcess$ZygoteState;->inputStream:Ljava/io/DataInputStream;

    .line 102
    iput-object p3, p0, Landroid/os/ZygoteProcess$ZygoteState;->writer:Ljava/io/BufferedWriter;

    .line 103
    iput-object p4, p0, Landroid/os/ZygoteProcess$ZygoteState;->abiList:Ljava/util/List;

    .line 104
    return-void
.end method

.method public static connect(Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;
    .locals 7
    .param p0, "address"    # Landroid/net/LocalSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "zygoteInputStream":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 109
    .local v1, "zygoteWriter":Ljava/io/BufferedWriter;
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 112
    .local v2, "zygoteSocket":Landroid/net/LocalSocket;
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 114
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    .line 116
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    .line 117
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x100

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 125
    nop

    .line 127
    invoke-static {v1, v0}, Landroid/os/ZygoteProcess;->access$000(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "abiListString":Ljava/lang/String;
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Process: zygote socket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/LocalSocketAddress;->getNamespace()Landroid/net/LocalSocketAddress$Namespace;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " opened, supported ABIS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v4, Landroid/os/ZygoteProcess$ZygoteState;

    const-string v5, ","

    .line 132
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v2, v0, v1, v5}, Landroid/os/ZygoteProcess$ZygoteState;-><init>(Landroid/net/LocalSocket;Ljava/io/DataInputStream;Ljava/io/BufferedWriter;Ljava/util/List;)V

    .line 131
    return-object v4

    .line 118
    .end local v3    # "abiListString":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 120
    .local v3, "ex":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    goto :goto_0

    .line 121
    :catch_1
    move-exception v4

    .line 124
    :goto_0
    throw v3
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 141
    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "ZygoteProcess"

    const-string v2, "I/O exception on routine close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mClosed:Z

    .line 147
    return-void
.end method

.method isClosed()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->mClosed:Z

    return v0
.end method

.method matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "abi"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Landroid/os/ZygoteProcess$ZygoteState;->abiList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
