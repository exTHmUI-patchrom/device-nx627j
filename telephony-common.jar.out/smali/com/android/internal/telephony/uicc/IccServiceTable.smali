.class public abstract Lcom/android/internal/telephony/uicc/IccServiceTable;
.super Ljava/lang/Object;
.source "IccServiceTable.java"


# instance fields
.field protected final mServiceTable:[B


# direct methods
.method protected constructor <init>([B)V
    .locals 0
    .param p1, "table"    # [B

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected abstract getValues()[Ljava/lang/Object;
.end method

.method protected isAvailable(I)Z
    .locals 6
    .param p1, "service"    # I

    .line 43
    div-int/lit8 v0, p1, 0x8

    .line 44
    .local v0, "offset":I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailable for service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " fails, max service is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return v2

    .line 50
    :cond_0
    rem-int/lit8 v1, p1, 0x8

    .line 51
    .local v1, "bit":I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    aget-byte v3, v3, v0

    const/4 v4, 0x1

    shl-int v5, v4, v1

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    move v2, v4

    nop

    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->getValues()[Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "values":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    array-length v1, v1

    .line 58
    .local v1, "numBytes":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x8

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]={ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 62
    .local v3, "addComma":Z
    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    .local v3, "i":I
    .local v5, "addComma":Z
    :goto_0
    if-ge v3, v1, :cond_4

    .line 63
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    aget-byte v6, v6, v3

    .line 64
    .local v6, "currentByte":B
    move v7, v5

    move v5, v4

    .local v5, "bit":I
    .local v7, "addComma":Z
    :goto_1
    const/16 v8, 0x8

    if-ge v5, v8, :cond_3

    .line 65
    const/4 v8, 0x1

    shl-int/2addr v8, v5

    and-int/2addr v8, v6

    if-eqz v8, :cond_2

    .line 66
    if-eqz v7, :cond_0

    .line 67
    const-string v8, ", "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 69
    :cond_0
    const/4 v7, 0x1

    .line 71
    :goto_2
    mul-int/lit8 v8, v3, 0x8

    add-int/2addr v8, v5

    .line 72
    .local v8, "ordinal":I
    array-length v9, v0

    if-ge v8, v9, :cond_1

    .line 73
    aget-object v9, v0, v8

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 75
    :cond_1
    const/16 v9, 0x23

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .end local v8    # "ordinal":I
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 62
    .end local v5    # "bit":I
    .end local v6    # "currentByte":B
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move v5, v7

    goto :goto_0

    .line 80
    .end local v3    # "i":I
    .end local v7    # "addComma":Z
    .local v5, "addComma":Z
    :cond_4
    const-string v3, " }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
