.class public Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Capabilities"
.end annotation


# static fields
.field private static final CAP_ESS_BIT_OFFSET:I = 0x0

.field private static final CAP_PRIVACY_BIT_OFFSET:I = 0x4

.field private static final OWE_VENDOR_OUI_TYPE:I = 0x1c9a6f50

.field private static final RSNE_VERSION:S = 0x1s

.field private static final RSN_CIPHER_CCMP:I = 0x4ac0f00

.field private static final RSN_CIPHER_GCMP:I = 0x9ac0f00

.field private static final RSN_CIPHER_NONE:I = 0xac0f00

.field private static final RSN_CIPHER_NO_GROUP_ADDRESSED:I = 0x7ac0f00

.field private static final RSN_CIPHER_TKIP:I = 0x2ac0f00

.field private static final WAPI_AKM_CERT:I = 0x1721400

.field private static final WAPI_AKM_PSK:I = 0x2721400

.field private static final WAPI_CIPHER_SMS4:I = 0x1721400

.field private static final WAPI_VERSION:S = 0x1s

.field private static final WPA2_AKM_DPP:I = 0x29a6f50

.field private static final WPA2_AKM_EAP:I = 0x1ac0f00

.field private static final WPA2_AKM_EAP_SHA256:I = 0x5ac0f00

.field private static final WPA2_AKM_EAP_SUITE_B_192:I = 0xcac0f00

.field private static final WPA2_AKM_FILS_SHA256:I = 0xeac0f00

.field private static final WPA2_AKM_FILS_SHA384:I = 0xfac0f00

.field private static final WPA2_AKM_FT_EAP:I = 0x3ac0f00

.field private static final WPA2_AKM_FT_PSK:I = 0x4ac0f00

.field private static final WPA2_AKM_OWE:I = 0x12ac0f00

.field private static final WPA2_AKM_PSK:I = 0x2ac0f00

.field private static final WPA2_AKM_PSK_SHA256:I = 0x6ac0f00

.field private static final WPA2_AKM_SAE:I = 0x8ac0f00

.field private static final WPA_AKM_EAP:I = 0x1f25000

.field private static final WPA_AKM_PSK:I = 0x2f25000

.field private static final WPA_CIPHER_CCMP:I = 0x4f25000

.field private static final WPA_CIPHER_NONE:I = 0xf25000

.field private static final WPA_CIPHER_TKIP:I = 0x2f25000

.field private static final WPA_VENDOR_OUI_TYPE_ONE:I = 0x1f25000

.field private static final WPA_VENDOR_OUI_VERSION:S = 0x1s

.field private static final WPS_VENDOR_OUI_TYPE:I = 0x4f25000


# instance fields
.field public groupCipher:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public isESS:Z

.field public isPrivacy:Z

.field public isWPS:Z

.field public keyManagement:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public pairwiseCipher:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public protocol:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    return-void
.end method

.method private cipherToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "cipher"    # I

    .line 883
    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 897
    const-string v0, "?"

    return-object v0

    .line 894
    :pswitch_0
    const-string v0, "SMS4"

    return-object v0

    .line 889
    :pswitch_1
    const-string v0, "GCMP"

    return-object v0

    .line 887
    :pswitch_2
    const-string v0, "CCMP"

    return-object v0

    .line 891
    :pswitch_3
    const-string v0, "TKIP"

    return-object v0

    .line 885
    :cond_0
    const-string v0, "None"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isOweElement(Landroid/net/wifi/ScanResult$InformationElement;)Z
    .locals 5
    .param p0, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .line 815
    iget-object v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 818
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0x1c9a6f50

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 819
    :catch_0
    move-exception v2

    .line 820
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string v3, "IE_Capabilities"

    const-string v4, "Couldn\'t parse VSA IE, buffer underflow"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return v1
.end method

.method private static isWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)Z
    .locals 5
    .param p0, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .line 679
    iget-object v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 683
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0x1f25000

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 684
    :catch_0
    move-exception v2

    .line 685
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string v3, "IE_Capabilities"

    const-string v4, "Couldn\'t parse VSA IE, buffer underflow"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return v1
.end method

.method private static isWpsElement(Landroid/net/wifi/ScanResult$InformationElement;)Z
    .locals 5
    .param p0, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .line 668
    iget-object v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 671
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0x4f25000

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 672
    :catch_0
    move-exception v2

    .line 673
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string v3, "IE_Capabilities"

    const-string v4, "Couldn\'t parse VSA IE, buffer underflow"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return v1
.end method

.method private keyManagementToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "akm"    # I

    .line 844
    packed-switch p1, :pswitch_data_0

    .line 878
    :pswitch_0
    const-string v0, "?"

    return-object v0

    .line 875
    :pswitch_1
    const-string v0, "WAPI-CERT"

    return-object v0

    .line 873
    :pswitch_2
    const-string v0, "WAPI-KEY"

    return-object v0

    .line 870
    :pswitch_3
    const-string v0, "EAP_SUITE_B_192"

    return-object v0

    .line 866
    :pswitch_4
    const-string v0, "OWE"

    return-object v0

    .line 868
    :pswitch_5
    const-string v0, "SAE"

    return-object v0

    .line 864
    :pswitch_6
    const-string v0, "DPP"

    return-object v0

    .line 862
    :pswitch_7
    const-string v0, "FILS-SHA384"

    return-object v0

    .line 860
    :pswitch_8
    const-string v0, "FILS-SHA256"

    return-object v0

    .line 856
    :pswitch_9
    const-string v0, "EAP-SHA256"

    return-object v0

    .line 858
    :pswitch_a
    const-string v0, "PSK-SHA256"

    return-object v0

    .line 852
    :pswitch_b
    const-string v0, "FT/EAP"

    return-object v0

    .line 854
    :pswitch_c
    const-string v0, "FT/PSK"

    return-object v0

    .line 850
    :pswitch_d
    const-string v0, "EAP"

    return-object v0

    .line 848
    :pswitch_e
    const-string v0, "PSK"

    return-object v0

    .line 846
    :pswitch_f
    const-string v0, "None"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static parseRsnCipher(I)I
    .locals 4
    .param p0, "cipher"    # I

    .line 649
    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    .line 661
    const-string v1, "IE_Capabilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown RSN cipher suite: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 661
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return v0

    .line 657
    :sswitch_0
    const/4 v0, 0x4

    return v0

    .line 659
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 655
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 653
    :sswitch_3
    const/4 v0, 0x2

    return v0

    .line 651
    :sswitch_4
    return v0

    :sswitch_data_0
    .sparse-switch
        0xac0f00 -> :sswitch_4
        0x2ac0f00 -> :sswitch_3
        0x4ac0f00 -> :sswitch_2
        0x7ac0f00 -> :sswitch_1
        0x9ac0f00 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseRsnElement(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 10
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .line 469
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 473
    .local v0, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 475
    return-void

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocol:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->groupCipher:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseRsnCipher(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 486
    .local v1, "cipherCount":S
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v4, "rsnPairwiseCipher":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_1

    .line 489
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseRsnCipher(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 491
    .end local v6    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->pairwiseCipher:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 496
    .local v6, "akmCount":S
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v7, "rsnKeyManagement":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    nop

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 499
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 500
    .local v8, "akm":I
    sparse-switch v8, :sswitch_data_0

    .end local v8    # "akm":I
    goto/16 :goto_2

    .line 532
    .restart local v8    # "akm":I
    :sswitch_0
    const/16 v9, 0xc

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    goto :goto_2

    .line 523
    :sswitch_1
    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    goto :goto_2

    .line 520
    :sswitch_2
    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    goto :goto_2

    .line 535
    :sswitch_3
    const/16 v9, 0xd

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    goto :goto_2

    .line 529
    :sswitch_4
    const/16 v9, 0xb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    goto :goto_2

    .line 517
    :sswitch_5
    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    goto :goto_2

    .line 514
    :sswitch_6
    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    goto :goto_2

    .line 511
    :sswitch_7
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    goto :goto_2

    .line 508
    :sswitch_8
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    goto :goto_2

    .line 505
    :sswitch_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    goto :goto_2

    .line 526
    :sswitch_a
    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    goto :goto_2

    .line 502
    :sswitch_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    nop

    .line 498
    .end local v8    # "akm":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 543
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 544
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagement:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    .end local v1    # "cipherCount":S
    .end local v4    # "rsnPairwiseCipher":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "akmCount":S
    .end local v7    # "rsnKeyManagement":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_3

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v2, "IE_Capabilities"

    const-string v3, "Couldn\'t parse RSNE, buffer underflow"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1ac0f00 -> :sswitch_b
        0x29a6f50 -> :sswitch_a
        0x2ac0f00 -> :sswitch_9
        0x3ac0f00 -> :sswitch_8
        0x4ac0f00 -> :sswitch_7
        0x5ac0f00 -> :sswitch_6
        0x6ac0f00 -> :sswitch_5
        0x8ac0f00 -> :sswitch_4
        0xcac0f00 -> :sswitch_3
        0xeac0f00 -> :sswitch_2
        0xfac0f00 -> :sswitch_1
        0x12ac0f00 -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseWapiCipher(I)I
    .locals 3
    .param p0, "cipher"    # I

    .line 623
    const v0, 0x1721400

    if-eq p0, v0, :cond_0

    .line 627
    const-string v0, "IE_Capabilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown WAPI cipher suite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v0, 0x0

    return v0

    .line 625
    :cond_0
    const/4 v0, 0x5

    return v0
.end method

.method private parseWapiElement(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 9
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .line 567
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 571
    .local v0, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 576
    iget-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocol:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 581
    .local v1, "akmCount":S
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v2, "wapiKeyManagement":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 584
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 585
    .local v5, "akm":I
    const v6, 0x1721400

    if-eq v5, v6, :cond_1

    const v6, 0x2721400

    if-eq v5, v6, :cond_0

    .line 594
    const-string v6, "IE_Capabilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown WAPI AKM: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 594
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "akm":I
    goto :goto_1

    .line 587
    .restart local v5    # "akm":I
    :cond_0
    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    goto :goto_1

    .line 590
    :cond_1
    const/16 v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    nop

    .line 583
    .end local v5    # "akm":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 600
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 603
    iget-object v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagement:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 608
    .local v4, "cipherCount":S
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v5, "wapiPairwiseCipher":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    nop

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_3

    .line 610
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseWapiCipher(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 612
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->pairwiseCipher:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v3, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->groupCipher:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseWapiCipher(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v1    # "akmCount":S
    .end local v2    # "wapiKeyManagement":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "cipherCount":S
    .end local v5    # "wapiPairwiseCipher":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_3

    .line 617
    :catch_0
    move-exception v1

    .line 618
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v2, "IE_Capabilities"

    const-string v3, "Couldn\'t parse WAPI IE, buffer underflow"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :goto_3
    return-void
.end method

.method private static parseWpaCipher(I)I
    .locals 4
    .param p0, "cipher"    # I

    .line 634
    const v0, 0xf25000

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const v0, 0x2f25000

    if-eq p0, v0, :cond_1

    const v0, 0x4f25000

    if-eq p0, v0, :cond_0

    .line 642
    const-string v0, "IE_Capabilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown WPA cipher suite: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 642
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return v1

    .line 640
    :cond_0
    const/4 v0, 0x3

    return v0

    .line 638
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 636
    :cond_2
    return v1
.end method

.method private parseWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 10
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .line 705
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 710
    .local v0, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 713
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 715
    return-void

    .line 719
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocol:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    iget-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->groupCipher:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseWpaCipher(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 726
    .local v1, "cipherCount":S
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v3, "wpaPairwiseCipher":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 729
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseWpaCipher(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 731
    .end local v5    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->pairwiseCipher:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 736
    .local v5, "akmCount":S
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 739
    .local v6, "wpaKeyManagement":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    nop

    .local v4, "i":I
    :goto_1
    const/4 v7, 0x2

    if-ge v4, v5, :cond_4

    .line 740
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 741
    .local v8, "akm":I
    const v9, 0x1f25000

    if-eq v8, v9, :cond_3

    const v7, 0x2f25000

    if-eq v8, v7, :cond_2

    .end local v8    # "akm":I
    goto :goto_2

    .line 746
    .restart local v8    # "akm":I
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    goto :goto_2

    .line 743
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    nop

    .line 739
    .end local v8    # "akm":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 754
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 755
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagement:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    .end local v1    # "cipherCount":S
    .end local v3    # "wpaPairwiseCipher":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "akmCount":S
    .end local v6    # "wpaKeyManagement":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_3

    .line 758
    :catch_0
    move-exception v1

    .line 759
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v2, "IE_Capabilities"

    const-string v3, "Couldn\'t parse type 1 WPA, buffer underflow"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :goto_3
    return-void
.end method

.method private protocolToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "protocol"    # I

    .line 827
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 839
    const-string v0, "?"

    return-object v0

    .line 833
    :pswitch_0
    const-string v0, "WPA2"

    return-object v0

    .line 831
    :pswitch_1
    const-string v0, "WPA"

    return-object v0

    .line 829
    :pswitch_2
    const-string v0, "None"

    return-object v0

    .line 836
    :cond_0
    const-string v0, "WAPI"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public from([Landroid/net/wifi/ScanResult$InformationElement;Ljava/util/BitSet;)V
    .locals 6
    .param p1, "ies"    # [Landroid/net/wifi/ScanResult$InformationElement;
    .param p2, "beaconCap"    # Ljava/util/BitSet;

    .line 772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocol:Ljava/util/ArrayList;

    .line 773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagement:Ljava/util/ArrayList;

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->groupCipher:Ljava/util/ArrayList;

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->pairwiseCipher:Ljava/util/ArrayList;

    .line 777
    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 780
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isESS:Z

    .line 781
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isPrivacy:Z

    .line 782
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_6

    aget-object v2, p1, v0

    .line 784
    .local v2, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iget v3, v2, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v4, 0x44

    if-ne v3, v4, :cond_1

    .line 785
    invoke-direct {p0, v2}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseWapiElement(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 788
    :cond_1
    iget v3, v2, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v4, 0x30

    if-ne v3, v4, :cond_2

    .line 789
    invoke-direct {p0, v2}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseRsnElement(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 792
    :cond_2
    iget v3, v2, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v4, 0xdd

    if-ne v3, v4, :cond_5

    .line 793
    invoke-static {v2}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 794
    invoke-direct {p0, v2}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->parseWpaOneElement(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 796
    :cond_3
    invoke-static {v2}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isWpsElement(Landroid/net/wifi/ScanResult$InformationElement;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 798
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isWPS:Z

    .line 800
    :cond_4
    invoke-static {v2}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isOweElement(Landroid/net/wifi/ScanResult$InformationElement;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 801
    iget-object v3, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocol:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    iget-object v3, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->groupCipher:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 804
    .local v3, "owePairwiseCipher":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    iget-object v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->pairwiseCipher:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 807
    .local v4, "oweKeyManagement":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagement:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    .end local v2    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    .end local v3    # "owePairwiseCipher":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "oweKeyManagement":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 812
    :cond_6
    return-void

    .line 778
    :cond_7
    :goto_1
    return-void
.end method

.method public generateCapabilitiesString()Ljava/lang/String;
    .locals 7

    .line 907
    const-string v0, ""

    .line 909
    .local v0, "capabilities":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocol:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isPrivacy:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 911
    .local v1, "isWEP":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 912
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[WEP]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 914
    :cond_1
    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "capabilities":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocol:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 915
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocol:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->protocolToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 916
    iget-object v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagement:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 917
    move-object v4, v3

    move v3, v2

    .local v3, "j":I
    .local v4, "capabilities":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagement:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 918
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_2

    const-string v6, "-"

    goto :goto_3

    :cond_2
    const-string v6, "+"

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagement:Ljava/util/ArrayList;

    .line 919
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->keyManagementToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 917
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 922
    .end local v3    # "j":I
    :cond_3
    move-object v3, v4

    .end local v4    # "capabilities":Ljava/lang/String;
    .local v3, "capabilities":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->pairwiseCipher:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 923
    move-object v4, v3

    move v3, v2

    .local v3, "j":I
    .restart local v4    # "capabilities":Ljava/lang/String;
    :goto_4
    iget-object v5, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->pairwiseCipher:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 924
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_5

    const-string v6, "-"

    goto :goto_5

    :cond_5
    const-string v6, "+"

    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->pairwiseCipher:Ljava/util/ArrayList;

    .line 925
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->cipherToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 923
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 928
    .end local v3    # "j":I
    :cond_6
    move-object v3, v4

    .end local v4    # "capabilities":Ljava/lang/String;
    .local v3, "capabilities":Ljava/lang/String;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 930
    .end local v0    # "i":I
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isESS:Z

    if-eqz v0, :cond_9

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[ESS]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 933
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;->isWPS:Z

    if-eqz v0, :cond_a

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[WPS]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 937
    :cond_a
    return-object v3
.end method
