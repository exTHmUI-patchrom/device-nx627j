.class public final Landroid/util/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/util/Size;->mWidth:I

    .line 33
    iput p2, p0, Landroid/util/Size;->mHeight:I

    .line 34
    return-void
.end method

.method private static invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Size: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 124
    const-string/jumbo v0, "string must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 127
    .local v0, "sep_ix":I
    if-gez v0, :cond_0

    .line 128
    const/16 v1, 0x78

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 130
    :cond_0
    if-ltz v0, :cond_1

    .line 134
    :try_start_0
    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    .line 135
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    return-object v1

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Landroid/util/Size;->invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .line 131
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-static {p0}, Landroid/util/Size;->invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 66
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 67
    return v0

    .line 69
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 70
    return v1

    .line 72
    :cond_1
    instance-of v2, p1, Landroid/util/Size;

    if-eqz v2, :cond_3

    .line 73
    move-object v2, p1

    check-cast v2, Landroid/util/Size;

    .line 74
    .local v2, "other":Landroid/util/Size;
    iget v3, p0, Landroid/util/Size;->mWidth:I

    iget v4, v2, Landroid/util/Size;->mWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/util/Size;->mHeight:I

    iget v4, v2, Landroid/util/Size;->mHeight:I

    if-ne v3, v4, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    .line 76
    .end local v2    # "other":Landroid/util/Size;
    :cond_3
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 49
    iget v0, p0, Landroid/util/Size;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 41
    iget v0, p0, Landroid/util/Size;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 147
    iget v0, p0, Landroid/util/Size;->mHeight:I

    iget v1, p0, Landroid/util/Size;->mWidth:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Landroid/util/Size;->mWidth:I

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/util/Size;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/Size;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
