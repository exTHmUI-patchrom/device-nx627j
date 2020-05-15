.class public Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# static fields
.field private static final CLA_STORE_DATA:I = 0x80

.field private static final INS_STORE_DATA:I = 0xe2

.field private static final MAX_APDU_DATA_LEN:I = 0xff

.field private static final MAX_EXT_APDU_DATA_LEN:I = 0xffff

.field private static final P1_STORE_DATA_END:I = 0x91

.field private static final P1_STORE_DATA_INTERM:I = 0x11


# instance fields
.field private final mChannel:I

.field private final mCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxApduDataLen:I


# direct methods
.method constructor <init>(IZ)V
    .locals 1
    .param p1, "channel"    # I
    .param p2, "supportExtendedApdu"    # Z

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mCommands:Ljava/util/List;

    .line 96
    iput p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mChannel:I

    .line 97
    if-eqz p2, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mMaxApduDataLen:I

    .line 98
    return-void
.end method


# virtual methods
.method public addApdu(IIII)V
    .locals 10
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mCommands:Ljava/util/List;

    new-instance v9, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;

    iget v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mChannel:I

    const-string v8, ""

    const/4 v7, 0x0

    move-object v1, v9

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;-><init>(IIIIIILjava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public addApdu(IIIIILjava/lang/String;)V
    .locals 11
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "cmdHex"    # Ljava/lang/String;

    move-object v0, p0

    .line 51
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mCommands:Ljava/util/List;

    new-instance v10, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;

    iget v3, v0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mChannel:I

    move-object v2, v10

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;-><init>(IIIIIILjava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public addApdu(IIIILjava/lang/String;)V
    .locals 10
    .param p1, "cla"    # I
    .param p2, "ins"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "cmdHex"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mCommands:Ljava/util/List;

    new-instance v9, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;

    iget v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mChannel:I

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v7, v1, 0x2

    move-object v1, v9

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;-><init>(IIIIIILjava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public addStoreData(Ljava/lang/String;)V
    .locals 12
    .param p1, "cmdHex"    # Ljava/lang/String;

    .line 78
    iget v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mMaxApduDataLen:I

    mul-int/lit8 v0, v0, 0x2

    .line 79
    .local v0, "cmdLen":I
    const/4 v1, 0x0

    .line 80
    .local v1, "startPos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 81
    .local v2, "totalLen":I
    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mMaxApduDataLen:I

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    iget v5, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mMaxApduDataLen:I

    div-int/2addr v4, v5

    .line 82
    .local v4, "totalSubCmds":I
    :goto_0
    nop

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 83
    add-int v5, v1, v0

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "data":Ljava/lang/String;
    const/16 v7, 0x80

    const/16 v8, 0xe2

    const/16 v9, 0x11

    add-int/lit8 v10, v3, -0x1

    move-object v6, p0

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addApdu(IIIILjava/lang/String;)V

    .line 85
    add-int/2addr v1, v0

    .line 82
    .end local v5    # "data":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 87
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "data":Ljava/lang/String;
    const/16 v6, 0x80

    const/16 v7, 0xe2

    const/16 v8, 0x91

    add-int/lit8 v9, v4, -0x1

    move-object v5, p0

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addApdu(IIIILjava/lang/String;)V

    .line 89
    return-void
.end method

.method getCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->mCommands:Ljava/util/List;

    return-object v0
.end method
