.class Landroid/media/ExifInterface$1;
.super Landroid/media/MediaDataSource;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/ExifInterface;->getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPosition:J

.field final synthetic this$0:Landroid/media/ExifInterface;

.field final synthetic val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;


# direct methods
.method constructor <init>(Landroid/media/ExifInterface;Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/ExifInterface;

    .line 2528
    iput-object p1, p0, Landroid/media/ExifInterface$1;->this$0:Landroid/media/ExifInterface;

    iput-object p2, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2532
    return-void
.end method

.method public getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2575
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6
    .param p1, "position"    # J
    .param p3, "buffer"    # [B
    .param p4, "offset"    # I
    .param p5, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2537
    if-nez p5, :cond_0

    .line 2538
    const/4 v0, 0x0

    return v0

    .line 2540
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, -0x1

    if-gez v2, :cond_1

    .line 2541
    return v3

    .line 2544
    :cond_1
    :try_start_0
    iget-wide v4, p0, Landroid/media/ExifInterface$1;->mPosition:J

    cmp-long v2, v4, p1

    if-eqz v2, :cond_3

    .line 2549
    iget-wide v4, p0, Landroid/media/ExifInterface$1;->mPosition:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_2

    iget-wide v0, p0, Landroid/media/ExifInterface$1;->mPosition:J

    iget-object v2, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v2

    int-to-long v4, v2

    add-long/2addr v0, v4

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 2550
    return v3

    .line 2552
    :cond_2
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0, p1, p2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2553
    iput-wide p1, p0, Landroid/media/ExifInterface$1;->mPosition:J

    .line 2559
    :cond_3
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    if-le p5, v0, :cond_4

    .line 2560
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    move p5, v0

    .line 2563
    :cond_4
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0, p3, p4, p5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    move-result v0

    .line 2564
    .local v0, "bytesRead":I
    if-ltz v0, :cond_5

    .line 2565
    iget-wide v1, p0, Landroid/media/ExifInterface$1;->mPosition:J

    int-to-long v4, v0

    add-long/2addr v1, v4

    iput-wide v1, p0, Landroid/media/ExifInterface$1;->mPosition:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2566
    return v0

    .line 2568
    .end local v0    # "bytesRead":I
    :cond_5
    goto :goto_0

    :catch_0
    move-exception v0

    .line 2569
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/ExifInterface$1;->mPosition:J

    .line 2570
    return v3
.end method
