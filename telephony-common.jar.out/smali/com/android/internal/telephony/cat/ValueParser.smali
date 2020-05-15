.class abstract Lcom/android/internal/telephony/cat/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 278
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 280
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 281
    .local v2, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 282
    .local v3, "length":I
    if-eqz v3, :cond_0

    .line 284
    :try_start_0
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 290
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const-string v4, "ValueParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alpha Id length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-object v0

    .line 299
    .end local v1    # "rawValue":[B
    .end local v2    # "valueIndex":I
    .end local v3    # "length":I
    :cond_1
    const/4 v1, 0x0

    .line 300
    .local v1, "noAlphaUsrCnf":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 302
    .local v2, "resource":Landroid/content/res/Resources;
    const v3, 0x11200af

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v3

    .line 306
    goto :goto_0

    .line 304
    :catch_1
    move-exception v3

    .line 305
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .line 307
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "Default Message"

    :goto_1
    return-object v0
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 43
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 44
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 46
    .local v2, "valueIndex":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->isComprehensionRequired()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 47
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    .line 48
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 49
    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-object v0

    .line 51
    :catch_0
    move-exception v3

    .line 52
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/DeviceIdentities;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/android/internal/telephony/cat/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/DeviceIdentities;-><init>()V

    .line 68
    .local v0, "devIds":Lcom/android/internal/telephony/cat/DeviceIdentities;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 69
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 71
    .local v2, "valueIndex":I
    :try_start_0
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->sourceId:I

    .line 72
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->destinationId:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-object v0

    .line 74
    :catch_0
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "timeInterval":I
    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    .line 91
    .local v1, "timeUnit":Lcom/android/internal/telephony/cat/Duration$TimeUnit;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 92
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 95
    .local v3, "valueIndex":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    move-result-object v4

    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    aget-object v4, v4, v5

    move-object v1, v4

    .line 96
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v4, 0xff

    .line 99
    nop

    .line 100
    new-instance v4, Lcom/android/internal/telephony/cat/Duration;

    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/cat/Duration;-><init>(ILcom/android/internal/telephony/cat/Duration$TimeUnit;)V

    return-object v4

    .line 97
    :catch_0
    move-exception v4

    .line 98
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/android/internal/telephony/cat/IconId;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/IconId;-><init>()V

    .line 165
    .local v0, "id":Lcom/android/internal/telephony/cat/IconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 166
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 168
    .local v2, "valueIndex":I
    add-int/lit8 v3, v2, 0x1

    .local v3, "valueIndex":I
    :try_start_0
    aget-byte v2, v1, v2

    .end local v2    # "valueIndex":I
    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    .line 169
    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    nop

    .line 174
    return-object v0

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;
    .locals 8
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "item":Lcom/android/internal/telephony/cat/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 114
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 115
    .local v2, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 117
    .local v3, "length":I
    if-eqz v3, :cond_0

    .line 118
    add-int/lit8 v4, v3, -0x1

    .line 121
    .local v4, "textLen":I
    :try_start_0
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    .line 122
    .local v5, "id":I
    add-int/lit8 v6, v2, 0x1

    invoke-static {v1, v6, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "text":Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/cat/Item;

    invoke-direct {v7, v5, v6}, Lcom/android/internal/telephony/cat/Item;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    .line 127
    .end local v5    # "id":I
    .end local v6    # "text":Ljava/lang/String;
    goto :goto_0

    .line 125
    :catch_0
    move-exception v5

    .line 126
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 130
    .end local v4    # "textLen":I
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 144
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 147
    .local v2, "valueIndex":I
    :try_start_0
    aget-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v3, 0xff

    .line 150
    nop

    .line 152
    return v0

    .line 148
    :catch_0
    move-exception v3

    .line 149
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;
    .locals 8
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 187
    const-string v0, "ValueParser"

    const-string v1, "retrieveItemsIconId:"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/android/internal/telephony/cat/ItemsIconId;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/ItemsIconId;-><init>()V

    .line 190
    .local v0, "id":Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 191
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 192
    .local v2, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 193
    .local v3, "numOfItems":I
    new-array v5, v3, [I

    iput-object v5, v0, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    .line 197
    add-int/lit8 v5, v2, 0x1

    .local v5, "valueIndex":I
    :try_start_0
    aget-byte v2, v1, v2

    .end local v2    # "valueIndex":I
    and-int/lit16 v2, v2, 0xff

    const/4 v6, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    .line 199
    nop

    .local v6, "index":I
    :goto_1
    move v2, v6

    .end local v6    # "index":I
    .local v2, "index":I
    if-ge v2, v3, :cond_1

    .line 200
    iget-object v4, v0, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v6, v2, 0x1

    .restart local v6    # "index":I
    add-int/lit8 v7, v5, 0x1

    .local v7, "valueIndex":I
    :try_start_1
    aget-byte v5, v1, v5

    .end local v5    # "valueIndex":I
    aput v5, v4, v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    .end local v2    # "index":I
    move v5, v7

    goto :goto_1

    .line 202
    .end local v6    # "index":I
    :catch_0
    move-exception v2

    move v5, v7

    goto :goto_2

    .line 204
    .end local v7    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :cond_1
    nop

    .line 205
    return-object v0

    .line 202
    :catch_1
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/util/List;
    .locals 24
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 220
    .local v1, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/TextAttribute;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 221
    .local v2, "rawValue":[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v0

    .line 222
    .local v0, "valueIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 224
    .local v3, "length":I
    if-eqz v3, :cond_6

    .line 226
    div-int/lit8 v4, v3, 0x4

    .line 229
    .local v4, "itemCount":I
    move v6, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v6, "valueIndex":I
    :goto_0
    if-ge v0, v4, :cond_5

    .line 230
    :try_start_0
    aget-byte v7, v2, v6

    and-int/lit16 v7, v7, 0xff

    .line 231
    .local v7, "start":I
    add-int/lit8 v8, v6, 0x1

    aget-byte v8, v2, v8

    and-int/lit16 v12, v8, 0xff

    .line 232
    .local v12, "textLength":I
    add-int/lit8 v8, v6, 0x2

    aget-byte v8, v2, v8

    and-int/lit16 v10, v8, 0xff

    .line 233
    .local v10, "format":I
    add-int/lit8 v8, v6, 0x3

    aget-byte v8, v2, v8

    and-int/lit16 v9, v8, 0xff

    .line 235
    .local v9, "colorValue":I
    and-int/lit8 v8, v10, 0x3

    .line 236
    .local v8, "alignValue":I
    invoke-static {v8}, Lcom/android/internal/telephony/cat/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/cat/TextAlignment;

    move-result-object v11

    .line 238
    .local v11, "align":Lcom/android/internal/telephony/cat/TextAlignment;
    shr-int/lit8 v13, v10, 0x2

    and-int/lit8 v15, v13, 0x3

    .line 239
    .local v15, "sizeValue":I
    invoke-static {v15}, Lcom/android/internal/telephony/cat/FontSize;->fromInt(I)Lcom/android/internal/telephony/cat/FontSize;

    move-result-object v13

    .line 240
    .local v13, "size":Lcom/android/internal/telephony/cat/FontSize;
    if-nez v13, :cond_0

    .line 242
    sget-object v14, Lcom/android/internal/telephony/cat/FontSize;->NORMAL:Lcom/android/internal/telephony/cat/FontSize;

    move-object v13, v14

    .line 245
    .end local v13    # "size":Lcom/android/internal/telephony/cat/FontSize;
    .local v18, "size":Lcom/android/internal/telephony/cat/FontSize;
    :cond_0
    move-object/from16 v18, v13

    and-int/lit8 v13, v10, 0x10

    const/16 v16, 0x1

    if-eqz v13, :cond_1

    move/from16 v13, v16

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 246
    .local v13, "bold":Z
    :goto_1
    and-int/lit8 v14, v10, 0x20

    if-eqz v14, :cond_2

    move/from16 v14, v16

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 247
    .local v14, "italic":Z
    :goto_2
    and-int/lit8 v17, v10, 0x40

    if-eqz v17, :cond_3

    move/from16 v17, v16

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    :goto_3
    move/from16 v19, v15

    move/from16 v15, v17

    .line 248
    .local v15, "underlined":Z
    .local v19, "sizeValue":I
    and-int/lit16 v5, v10, 0x80

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    .line 250
    .local v16, "strikeThrough":Z
    :goto_4
    invoke-static {v9}, Lcom/android/internal/telephony/cat/TextColor;->fromInt(I)Lcom/android/internal/telephony/cat/TextColor;

    move-result-object v17

    .line 252
    .local v17, "color":Lcom/android/internal/telephony/cat/TextColor;
    new-instance v5, Lcom/android/internal/telephony/cat/TextAttribute;

    move/from16 v20, v8

    move-object v8, v5

    .end local v8    # "alignValue":I
    .local v20, "alignValue":I
    move/from16 v21, v9

    move v9, v7

    .end local v9    # "colorValue":I
    .local v21, "colorValue":I
    move/from16 v22, v10

    move v10, v12

    .end local v10    # "format":I
    .local v22, "format":I
    move/from16 v23, v12

    move-object/from16 v12, v18

    .end local v12    # "textLength":I
    .local v23, "textLength":I
    invoke-direct/range {v8 .. v17}, Lcom/android/internal/telephony/cat/TextAttribute;-><init>(IILcom/android/internal/telephony/cat/TextAlignment;Lcom/android/internal/telephony/cat/FontSize;ZZZZLcom/android/internal/telephony/cat/TextColor;)V

    .line 255
    .local v5, "attr":Lcom/android/internal/telephony/cat/TextAttribute;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v5    # "attr":Lcom/android/internal/telephony/cat/TextAttribute;
    .end local v7    # "start":I
    .end local v11    # "align":Lcom/android/internal/telephony/cat/TextAlignment;
    .end local v13    # "bold":Z
    .end local v14    # "italic":Z
    .end local v15    # "underlined":Z
    .end local v16    # "strikeThrough":Z
    .end local v17    # "color":Lcom/android/internal/telephony/cat/TextColor;
    .end local v18    # "size":Lcom/android/internal/telephony/cat/FontSize;
    .end local v19    # "sizeValue":I
    .end local v20    # "alignValue":I
    .end local v21    # "colorValue":I
    .end local v22    # "format":I
    .end local v23    # "textLength":I
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, 0x4

    goto :goto_0

    .line 260
    .end local v0    # "i":I
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5

    .line 258
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    return-object v1

    .line 264
    .end local v4    # "itemCount":I
    .end local v6    # "valueIndex":I
    .local v0, "valueIndex":I
    :cond_6
    const/4 v4, 0x0

    return-object v4
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 8
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 321
    .local v0, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 322
    .local v1, "valueIndex":I
    const/4 v2, 0x0

    .line 323
    .local v2, "codingScheme":B
    const/4 v3, 0x0

    .line 324
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v4

    .line 327
    .local v4, "textLen":I
    if-nez v4, :cond_0

    .line 328
    return-object v3

    .line 331
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 335
    :try_start_0
    aget-byte v5, v0, v1

    and-int/lit8 v5, v5, 0xc

    int-to-byte v2, v5

    .line 337
    if-nez v2, :cond_1

    .line 338
    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v6, v4, 0x8

    div-int/lit8 v6, v6, 0x7

    invoke-static {v0, v5, v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    .line 340
    :cond_1
    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    .line 341
    add-int/lit8 v5, v1, 0x1

    invoke-static {v0, v5, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    .line 343
    :cond_2
    const/16 v5, 0x8

    if-ne v2, v5, :cond_3

    .line 344
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    const-string v7, "UTF-16"

    invoke-direct {v5, v0, v6, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v3, v5

    .line 349
    :goto_0
    return-object v3

    .line 346
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :catch_0
    move-exception v5

    .line 354
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 350
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    .line 351
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6
.end method
