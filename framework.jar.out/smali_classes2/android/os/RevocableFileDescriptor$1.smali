.class Landroid/os/RevocableFileDescriptor$1;
.super Landroid/os/ProxyFileDescriptorCallback;
.source "RevocableFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RevocableFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/RevocableFileDescriptor;


# direct methods
.method constructor <init>(Landroid/os/RevocableFileDescriptor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/RevocableFileDescriptor;

    .line 104
    iput-object p1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-direct {p0}, Landroid/os/ProxyFileDescriptorCallback;-><init>()V

    return-void
.end method

.method private checkRevoked()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->access$000(Landroid/os/RevocableFileDescriptor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 107
    :cond_0
    new-instance v0, Landroid/system/ErrnoException;

    sget v1, Landroid/system/OsConstants;->EPERM:I

    const-string v2, "RevocableFileDescriptor"

    invoke-direct {v0, v2, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public onFsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 149
    const-string v0, "RevocableFileDescriptor"

    const-string/jumbo v1, "onFsync()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 151
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->access$100(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 152
    return-void
.end method

.method public onGetSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 114
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->access$100(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J

    return-wide v0
.end method

.method public onRead(JI[B)I
    .locals 7
    .param p1, "offset"    # J
    .param p3, "size"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "n":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 123
    :try_start_0
    iget-object v1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v1}, Landroid/os/RevocableFileDescriptor;->access$100(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1

    sub-int v4, p3, v0

    int-to-long v2, v0

    add-long v5, p1, v2

    move-object v2, p4

    move v3, v0

    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    .line 124
    goto :goto_1

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/io/InterruptedIOException;
    iget v2, v1, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr v0, v2

    .line 127
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    goto :goto_0

    .line 129
    :cond_0
    :goto_1
    return v0
.end method

.method public onRelease()V
    .locals 2

    .line 156
    const-string v0, "RevocableFileDescriptor"

    const-string/jumbo v1, "onRelease()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/RevocableFileDescriptor;->access$002(Landroid/os/RevocableFileDescriptor;Z)Z

    .line 158
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->access$100(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 159
    return-void
.end method

.method public onWrite(JI[B)I
    .locals 7
    .param p1, "offset"    # J
    .param p3, "size"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "n":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 138
    :try_start_0
    iget-object v1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v1}, Landroid/os/RevocableFileDescriptor;->access$100(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1

    sub-int v4, p3, v0

    int-to-long v2, v0

    add-long v5, p1, v2

    move-object v2, p4

    move v3, v0

    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    .line 139
    goto :goto_1

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/io/InterruptedIOException;
    iget v2, v1, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr v0, v2

    .line 142
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    goto :goto_0

    .line 144
    :cond_0
    :goto_1
    return v0
.end method
