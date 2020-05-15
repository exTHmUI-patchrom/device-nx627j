.class Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;
.super Ljava/io/InputStream;
.source "SimulateNinePngUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/SimulateNinePngUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NinePathInputStream"
.end annotation


# instance fields
.field private mCount:I

.field private mExtraHeaderData:[B

.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 1
    .param p1, "inputstream"    # Ljava/io/InputStream;
    .param p2, "data"    # [B

    .line 168
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 169
    iput-object p1, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    .line 170
    iput-object p2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    .line 171
    iput v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 172
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 177
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    iget-object v1, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    .line 183
    .local v0, "arrayOfByte":[B
    iget v1, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 184
    .local v1, "i":I
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 185
    aget-byte v2, v0, v1

    return v2

    .line 187
    .end local v0    # "arrayOfByte":[B
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "paramArrayOfByte"    # [B
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 197
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget v1, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    iget-object v2, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    if-ge v0, p3, :cond_0

    .line 198
    add-int/lit8 v1, v0, 0x1

    .line 199
    .local v1, "l":I
    add-int v2, p2, v0

    .line 200
    .local v2, "i1":I
    iget-object v3, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mExtraHeaderData:[B

    .line 201
    .local v3, "abyte1":[B
    iget v4, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 202
    .local v4, "j1":I
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mCount:I

    .line 203
    aget-byte v5, v3, v4

    aput-byte v5, p1, v2

    .line 197
    .end local v2    # "i1":I
    .end local v3    # "abyte1":[B
    .end local v4    # "j1":I
    move v0, v1

    goto :goto_0

    .line 206
    .end local v1    # "l":I
    :cond_0
    if-ge v0, p3, :cond_1

    .line 207
    iget-object v1, p0, Landroid/content/res/SimulateNinePngUtil$NinePathInputStream;->mInputStream:Ljava/io/InputStream;

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    add-int/2addr v0, v1

    .line 209
    :cond_1
    return v0
.end method
