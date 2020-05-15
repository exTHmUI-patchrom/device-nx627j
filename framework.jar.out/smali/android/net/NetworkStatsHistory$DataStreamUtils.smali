.class public Landroid/net/NetworkStatsHistory$DataStreamUtils;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataStreamUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFullLongArray(Ljava/io/DataInputStream;)[J
    .locals 5
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 739
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 740
    .local v0, "size":I
    if-ltz v0, :cond_1

    .line 741
    new-array v1, v0, [J

    .line 742
    .local v1, "values":[J
    const/4 v2, 0x0

    .line 742
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 743
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 742
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 745
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 740
    .end local v1    # "values":[J
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "negative array size"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readVarLong(Ljava/io/DataInputStream;)J
    .locals 6
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    const/4 v0, 0x0

    .line 753
    .local v0, "shift":I
    const-wide/16 v1, 0x0

    .line 754
    .local v1, "result":J
    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    .line 755
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 756
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    .line 757
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    .line 758
    return-wide v1

    .line 759
    :cond_0
    add-int/lit8 v0, v0, 0x7

    .line 760
    .end local v3    # "b":B
    goto :goto_0

    .line 761
    :cond_1
    new-instance v3, Ljava/net/ProtocolException;

    const-string/jumbo v4, "malformed long"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static readVarLongArray(Ljava/io/DataInputStream;)[J
    .locals 5
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 780
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 781
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 782
    :cond_0
    if-ltz v0, :cond_2

    .line 783
    new-array v1, v0, [J

    .line 784
    .local v1, "values":[J
    const/4 v2, 0x0

    .line 784
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 785
    invoke-static {p0}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLong(Ljava/io/DataInputStream;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 784
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 787
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 782
    .end local v1    # "values":[J
    :cond_2
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "negative array size"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static writeVarLong(Ljava/io/DataOutputStream;J)V
    .locals 4
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 769
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 770
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 771
    return-void

    .line 773
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 774
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static writeVarLongArray(Ljava/io/DataOutputStream;[JI)V
    .locals 3
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "values"    # [J
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    if-nez p1, :cond_0

    .line 793
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 794
    return-void

    .line 796
    :cond_0
    array-length v0, p1

    if-gt p2, v0, :cond_2

    .line 799
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 800
    const/4 v0, 0x0

    .line 800
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 801
    aget-wide v1, p1, v0

    invoke-static {p0, v1, v2}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLong(Ljava/io/DataOutputStream;J)V

    .line 800
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 797
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size larger than length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
