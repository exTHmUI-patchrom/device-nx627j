.class public Lcom/android/internal/telephony/cat/ComprehensionTlv;
.super Ljava/lang/Object;
.source "ComprehensionTlv.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ComprehensionTlv"


# instance fields
.field private mCr:Z

.field private mLength:I

.field private mRawValue:[B

.field private mTag:I

.field private mValueIndex:I


# direct methods
.method protected constructor <init>(IZI[BI)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "cr"    # Z
    .param p3, "length"    # I
    .param p4, "data"    # [B
    .param p5, "valueIndex"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mTag:I

    .line 54
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mCr:Z

    .line 55
    iput p3, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    .line 56
    iput p5, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    .line 57
    iput-object p4, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mRawValue:[B

    .line 58
    return-void
.end method

.method public static decode([BI)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 12
    .param p0, "data"    # [B
    .param p1, "startIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 116
    move v0, p1

    .line 117
    .local v0, "curIndex":I
    array-length v1, p0

    .line 123
    .local v1, "endIndex":I
    add-int/lit8 v2, v0, 0x1

    .local v2, "curIndex":I
    :try_start_0
    aget-byte v0, p0, v0

    .end local v0    # "curIndex":I
    const/16 v3, 0xff

    and-int/2addr v0, v3

    .line 124
    .local v0, "temp":I
    if-eqz v0, :cond_9

    if-eq v0, v3, :cond_9

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    .line 144
    move v6, v0

    .line 145
    .local v6, "tag":I
    and-int/lit16 v7, v6, 0x80

    if-eqz v7, :cond_0

    move v4, v5

    nop

    .line 146
    .local v4, "cr":Z
    :cond_0
    and-int/lit16 v5, v6, -0x81

    .line 152
    .end local v4    # "cr":Z
    .end local v6    # "tag":I
    .local v10, "tag":I
    .local v11, "cr":Z
    :goto_0
    move v11, v4

    move v10, v5

    goto :goto_1

    .line 136
    .end local v10    # "tag":I
    .end local v11    # "cr":Z
    :pswitch_0
    aget-byte v6, p0, v2

    and-int/2addr v6, v3

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p0, v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    and-int/2addr v7, v3

    or-int/2addr v6, v7

    .line 138
    .restart local v6    # "tag":I
    const v7, 0x8000

    and-int/2addr v7, v6

    if-eqz v7, :cond_1

    move v4, v5

    nop

    .line 139
    .restart local v4    # "cr":Z
    :cond_1
    const v5, -0x8001

    and-int/2addr v5, v6

    .line 140
    .end local v6    # "tag":I
    .local v5, "tag":I
    add-int/lit8 v2, v2, 0x2

    .line 141
    goto :goto_0

    .line 152
    .end local v4    # "cr":Z
    .end local v5    # "tag":I
    .restart local v10    # "tag":I
    .restart local v11    # "cr":Z
    :goto_1
    add-int/lit8 v4, v2, 0x1

    .local v4, "curIndex":I
    :try_start_1
    aget-byte v2, p0, v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v2    # "curIndex":I
    and-int/lit16 v0, v2, 0xff

    .line 153
    const/16 v2, 0x80

    if-ge v0, v2, :cond_2

    .line 154
    move v2, v0

    .line 188
    .local v2, "length":I
    move v7, v2

    move v3, v4

    goto/16 :goto_3

    .line 155
    .end local v2    # "length":I
    :cond_2
    const/16 v5, 0x81

    if-ne v0, v5, :cond_4

    .line 156
    add-int/lit8 v5, v4, 0x1

    .local v5, "curIndex":I
    :try_start_2
    aget-byte v4, p0, v4

    .end local v4    # "curIndex":I
    and-int/2addr v3, v4

    .line 157
    .local v3, "length":I
    if-lt v3, v2, :cond_3

    .line 188
    move v7, v3

    move v3, v5

    goto/16 :goto_3

    .line 158
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "length < 0x80 length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " startIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " curIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " endIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 197
    .end local v0    # "temp":I
    .end local v3    # "length":I
    .end local v10    # "tag":I
    .end local v11    # "cr":Z
    :catch_0
    move-exception v0

    move v3, v5

    goto/16 :goto_4

    .line 164
    .end local v5    # "curIndex":I
    .restart local v0    # "temp":I
    .restart local v4    # "curIndex":I
    .restart local v10    # "tag":I
    .restart local v11    # "cr":Z
    :cond_4
    const/16 v2, 0x82

    if-ne v0, v2, :cond_6

    .line 165
    :try_start_3
    aget-byte v2, p0, v4

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p0, v5
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    .line 167
    .restart local v2    # "length":I
    add-int/lit8 v3, v4, 0x2

    .line 168
    .end local v4    # "curIndex":I
    .local v3, "curIndex":I
    const/16 v4, 0x100

    if-lt v2, v4, :cond_5

    .line 188
    :goto_2
    move v7, v2

    goto :goto_3

    .line 169
    :cond_5
    :try_start_4
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "two byte length < 0x100 length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " startIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " curIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " endIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 175
    .end local v2    # "length":I
    .end local v3    # "curIndex":I
    .restart local v4    # "curIndex":I
    :cond_6
    const/16 v2, 0x83

    if-ne v0, v2, :cond_8

    .line 176
    :try_start_5
    aget-byte v2, p0, v4

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, p0, v5

    and-int/2addr v5, v3

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    add-int/lit8 v5, v4, 0x2

    aget-byte v5, p0, v5
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    .line 179
    .restart local v2    # "length":I
    add-int/lit8 v3, v4, 0x3

    .line 180
    .end local v4    # "curIndex":I
    .restart local v3    # "curIndex":I
    const/high16 v4, 0x10000

    if-lt v2, v4, :cond_7

    goto :goto_2

    .line 188
    .end local v2    # "length":I
    .local v7, "length":I
    :goto_3
    nop

    .line 195
    :try_start_6
    new-instance v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-object v4, v2

    move v5, v10

    move v6, v11

    move-object v8, p0

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cat/ComprehensionTlv;-><init>(IZI[BI)V

    return-object v2

    .line 197
    .end local v0    # "temp":I
    .end local v7    # "length":I
    .end local v10    # "tag":I
    .end local v11    # "cr":Z
    :catch_1
    move-exception v0

    goto/16 :goto_4

    .line 181
    .restart local v0    # "temp":I
    .restart local v2    # "length":I
    .restart local v10    # "tag":I
    .restart local v11    # "cr":Z
    :cond_7
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "three byte length < 0x10000 length=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " startIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " curIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " endIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    .line 188
    .end local v2    # "length":I
    .end local v3    # "curIndex":I
    .restart local v4    # "curIndex":I
    :cond_8
    :try_start_7
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad length modifer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " startIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " curIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " endIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2

    .line 197
    .end local v0    # "temp":I
    .end local v10    # "tag":I
    .end local v11    # "cr":Z
    :catch_2
    move-exception v0

    move v3, v4

    goto :goto_4

    .line 128
    .end local v4    # "curIndex":I
    .restart local v0    # "temp":I
    .local v2, "curIndex":I
    :cond_9
    :pswitch_1
    :try_start_8
    const-string v3, "CAT     "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decode: unexpected first tag byte="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", startIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " curIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " endIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3

    .line 133
    const/4 v3, 0x0

    return-object v3

    .line 197
    .end local v0    # "temp":I
    :catch_3
    move-exception v0

    move v3, v2

    .line 198
    .end local v2    # "curIndex":I
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "curIndex":I
    :goto_4
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IndexOutOfBoundsException startIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " curIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " endIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x7f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static decodeMany([BI)Ljava/util/List;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    array-length v1, p0

    .line 92
    .local v1, "endIndex":I
    :goto_0
    if-ge p1, v1, :cond_1

    .line 93
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decode([BI)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 94
    .local v2, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget v3, v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    iget v4, v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    add-int p1, v3, v4

    .line 101
    .end local v2    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    goto :goto_0

    .line 98
    .restart local v2    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_0
    const-string v3, "ComprehensionTlv"

    const-string v4, "decodeMany: ctlv is null, stop decoding"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    nop

    .line 103
    .end local v2    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mLength:I

    return v0
.end method

.method public getRawValue()[B
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mRawValue:[B

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mTag:I

    return v0
.end method

.method public getValueIndex()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mValueIndex:I

    return v0
.end method

.method public isComprehensionRequired()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlv;->mCr:Z

    return v0
.end method
