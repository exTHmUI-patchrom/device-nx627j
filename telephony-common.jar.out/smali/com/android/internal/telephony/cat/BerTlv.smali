.class Lcom/android/internal/telephony/cat/BerTlv;
.super Ljava/lang/Object;
.source "BerTlv.java"


# static fields
.field public static final BER_EVENT_DOWNLOAD_TAG:I = 0xd6

.field public static final BER_MENU_SELECTION_TAG:I = 0xd3

.field public static final BER_PROACTIVE_COMMAND_TAG:I = 0xd0

.field public static final BER_UNKNOWN_TAG:I


# instance fields
.field private mCompTlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation
.end field

.field private mLengthValid:Z

.field private mTag:I


# direct methods
.method private constructor <init>(ILjava/util/List;Z)V
    .locals 1
    .param p1, "tag"    # I
    .param p3, "lengthValid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;Z)V"
        }
    .end annotation

    .line 38
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    .line 39
    iput p1, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    .line 40
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    .line 41
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    .line 42
    return-void
.end method

.method public static decode([B)Lcom/android/internal/telephony/cat/BerTlv;
    .locals 13
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "curIndex":I
    array-length v1, p0

    .line 81
    .local v1, "endIndex":I
    const/4 v2, 0x0

    .line 82
    .local v2, "length":I
    const/4 v3, 0x1

    .line 86
    .local v3, "isLengthValid":Z
    add-int/lit8 v4, v0, 0x1

    .local v4, "curIndex":I
    :try_start_0
    aget-byte v0, p0, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_4

    .end local v0    # "curIndex":I
    const/16 v5, 0xff

    and-int/2addr v0, v5

    .line 87
    .local v0, "tag":I
    const/16 v6, 0xd0

    const/16 v7, 0x80

    if-ne v0, v6, :cond_3

    .line 89
    add-int/lit8 v8, v4, 0x1

    .local v8, "curIndex":I
    :try_start_1
    aget-byte v4, p0, v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v4    # "curIndex":I
    and-int/2addr v4, v5

    .line 90
    .local v4, "temp":I
    if-ge v4, v7, :cond_0

    .line 91
    move v2, v4

    .line 109
    move v4, v8

    goto :goto_0

    .line 92
    :cond_0
    const/16 v9, 0x81

    if-ne v4, v9, :cond_2

    .line 93
    add-int/lit8 v9, v8, 0x1

    .local v9, "curIndex":I
    :try_start_2
    aget-byte v8, p0, v8

    .end local v8    # "curIndex":I
    and-int/lit16 v4, v8, 0xff

    .line 94
    if-lt v4, v7, :cond_1

    .line 101
    move v2, v4

    .line 109
    move v4, v9

    .end local v9    # "curIndex":I
    .local v4, "curIndex":I
    :goto_0
    goto/16 :goto_1

    .line 95
    .local v4, "temp":I
    .restart local v9    # "curIndex":I
    :cond_1
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "length < 0x80 length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " curIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " endIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_0

    .line 119
    .end local v0    # "tag":I
    .end local v4    # "temp":I
    :catch_0
    move-exception v0

    move v8, v9

    goto/16 :goto_4

    .line 115
    :catch_1
    move-exception v0

    move v8, v9

    goto/16 :goto_5

    .line 103
    .end local v9    # "curIndex":I
    .restart local v0    # "tag":I
    .restart local v4    # "temp":I
    .restart local v8    # "curIndex":I
    :cond_2
    :try_start_3
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected first byte to be length or a length tag and < 0x81 byte= "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " curIndex="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " endIndex="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_3 .. :try_end_3} :catch_2

    .line 119
    .end local v0    # "tag":I
    .end local v4    # "temp":I
    :catch_2
    move-exception v0

    goto/16 :goto_4

    .line 115
    :catch_3
    move-exception v0

    goto/16 :goto_5

    .line 110
    .end local v8    # "curIndex":I
    .restart local v0    # "tag":I
    .local v4, "curIndex":I
    :cond_3
    :try_start_4
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v8
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_4 .. :try_end_4} :catch_4

    and-int/lit16 v9, v0, -0x81

    if-ne v8, v9, :cond_4

    .line 111
    const/4 v0, 0x0

    .line 112
    const/4 v4, 0x0

    .line 121
    :cond_4
    :goto_1
    nop

    .line 120
    nop

    .line 124
    sub-int v8, v1, v4

    if-lt v8, v2, :cond_9

    .line 130
    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object v8

    .line 133
    .local v8, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    if-ne v0, v6, :cond_8

    .line 134
    const/4 v6, 0x0

    .line 135
    .local v6, "totalLength":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 136
    .local v10, "item":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v11

    .line 137
    .local v11, "itemLength":I
    if-lt v11, v7, :cond_5

    if-gt v11, v5, :cond_5

    .line 138
    add-int/lit8 v12, v11, 0x3

    add-int/2addr v6, v12

    goto :goto_3

    .line 139
    :cond_5
    if-ltz v11, :cond_6

    if-ge v11, v7, :cond_6

    .line 140
    add-int/lit8 v12, v11, 0x2

    add-int/2addr v6, v12

    .line 145
    .end local v10    # "item":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .end local v11    # "itemLength":I
    :goto_3
    goto :goto_2

    .line 142
    .restart local v10    # "item":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .restart local v11    # "itemLength":I
    :cond_6
    const/4 v3, 0x0

    .line 143
    nop

    .line 154
    .end local v10    # "item":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .end local v11    # "itemLength":I
    :cond_7
    if-eq v2, v6, :cond_8

    .line 155
    const/4 v3, 0x0

    .line 159
    .end local v6    # "totalLength":I
    :cond_8
    new-instance v5, Lcom/android/internal/telephony/cat/BerTlv;

    invoke-direct {v5, v0, v8, v3}, Lcom/android/internal/telephony/cat/BerTlv;-><init>(ILjava/util/List;Z)V

    return-object v5

    .line 125
    .end local v8    # "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :cond_9
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Command had extra data endIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " curIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v5

    .line 119
    .end local v0    # "tag":I
    :catch_4
    move-exception v0

    move v8, v4

    .line 120
    .end local v4    # "curIndex":I
    .local v0, "e":Lcom/android/internal/telephony/cat/ResultException;
    .local v8, "curIndex":I
    :goto_4
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ResultException;->explanation()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v4

    .line 115
    .end local v0    # "e":Lcom/android/internal/telephony/cat/ResultException;
    .end local v8    # "curIndex":I
    .restart local v4    # "curIndex":I
    :catch_5
    move-exception v0

    move v8, v4

    .line 116
    .end local v4    # "curIndex":I
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v8    # "curIndex":I
    :goto_5
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IndexOutOfBoundsException  curIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " endIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public getComprehensionTlvs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mCompTlvs:Ljava/util/List;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mTag:I

    return v0
.end method

.method public isLengthValid()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BerTlv;->mLengthValid:Z

    return v0
.end method
