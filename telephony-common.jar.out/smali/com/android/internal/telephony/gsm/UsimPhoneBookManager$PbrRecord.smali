.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrRecord"
.end annotation


# instance fields
.field private mFileIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;",
            ">;"
        }
    .end annotation
.end field

.field private mMasterFileRecordNum:I

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;[B)V
    .locals 2
    .param p2, "record"    # [B

    .line 582
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PBR rec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 586
    new-instance p1, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v0}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 587
    .local p1, "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;)V

    .line 588
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    .line 570
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mMasterFileRecordNum:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    .param p1, "x1"    # I

    .line 570
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mMasterFileRecordNum:I

    return p1
.end method


# virtual methods
.method parseEfAndSFI(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 15
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p2, "parentTag"    # I

    move-object v0, p0

    .line 612
    const/4 v1, 0x0

    move v2, v1

    .line 614
    .local v2, "tagNumberWithinParentTag":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v9

    .line 615
    .local v9, "tag":I
    packed-switch v9, :pswitch_data_0

    goto :goto_1

    .line 641
    :pswitch_0
    const/4 v3, -0x1

    .line 642
    .local v3, "sfi":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v10

    .line 644
    .local v10, "data":[B
    array-length v4, v10

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    array-length v4, v10

    const/4 v6, 0x3

    if-le v4, v6, :cond_1

    goto :goto_0

    .line 649
    :cond_1
    array-length v4, v10

    if-ne v4, v6, :cond_2

    .line 650
    aget-byte v4, v10, v5

    and-int/lit16 v3, v4, 0xff

    .line 653
    .end local v3    # "sfi":I
    .local v11, "sfi":I
    :cond_2
    move v11, v3

    aget-byte v3, v10, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    or-int v12, v3, v4

    .line 655
    .local v12, "efid":I
    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    new-instance v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object v3, v14

    move/from16 v5, p2

    move v6, v12

    move v7, v11

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;IIII)V

    invoke-virtual {v13, v9, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v10    # "data":[B
    .end local v11    # "sfi":I
    .end local v12    # "efid":I
    goto :goto_1

    .line 645
    .restart local v3    # "sfi":I
    .restart local v10    # "data":[B
    :cond_3
    :goto_0
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid TLV length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 646
    nop

    .line 658
    .end local v3    # "sfi":I
    .end local v10    # "data":[B
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 659
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v3

    if-nez v3, :cond_0

    .line 660
    return-void

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;)V
    .locals 5
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;

    .line 596
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v0

    .line 597
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 601
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    .line 602
    .local v1, "data":[B
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 603
    .local v2, "tlvEfSfi":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->parseEfAndSFI(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 606
    .end local v1    # "data":[B
    .end local v2    # "tlvEfSfi":Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v1

    if-nez v1, :cond_0

    .line 607
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
