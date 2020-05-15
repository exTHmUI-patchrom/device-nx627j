.class Landroid/util/apk/ByteBufferDataSource;
.super Ljava/lang/Object;
.source "ByteBufferDataSource.java"

# interfaces
.implements Landroid/util/apk/DataSource;


# instance fields
.field private final mBuf:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    .line 37
    return-void
.end method


# virtual methods
.method public feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    .locals 3
    .param p1, "md"    # Landroid/util/apk/DataDigester;
    .param p2, "offset"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    iget-object v1, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    long-to-int v2, p2

    add-int/2addr v2, p4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 60
    iget-object v1, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    long-to-int v2, p2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    iget-object v1, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 62
    .local v1, "region":Ljava/nio/ByteBuffer;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-interface {p1, v1}, Landroid/util/apk/DataDigester;->consume(Ljava/nio/ByteBuffer;)V

    .line 65
    return-void

    .line 62
    .end local v1    # "region":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public size()J
    .locals 2

    .line 41
    iget-object v0, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
