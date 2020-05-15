.class Landroid/util/Base64$Encoder;
.super Landroid/util/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ENCODE:[B

.field private static final ENCODE_WEBSAFE:[B

.field public static final LINE_GROUPS:I = 0x13


# instance fields
.field private final alphabet:[B

.field private count:I

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z

.field private final tail:[B

.field tailLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 542
    const-class v0, Landroid/util/Base64;

    .line 554
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroid/util/Base64$Encoder;->ENCODE:[B

    .line 565
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "output"    # [B

    .line 581
    invoke-direct {p0}, Landroid/util/Base64$Coder;-><init>()V

    .line 582
    iput-object p2, p0, Landroid/util/Base64$Encoder;->output:[B

    .line 584
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/util/Base64$Encoder;->do_padding:Z

    .line 585
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    .line 586
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    .line 587
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    sget-object v0, Landroid/util/Base64$Encoder;->ENCODE:[B

    goto :goto_3

    :cond_3
    sget-object v0, Landroid/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    :goto_3
    iput-object v0, p0, Landroid/util/Base64$Encoder;->alphabet:[B

    .line 589
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/Base64$Encoder;->tail:[B

    .line 590
    iput v1, p0, Landroid/util/Base64$Encoder;->tailLen:I

    .line 592
    iget-boolean v0, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    goto :goto_4

    :cond_4
    const/4 v0, -0x1

    :goto_4
    iput v0, p0, Landroid/util/Base64$Encoder;->count:I

    .line 593
    return-void
.end method


# virtual methods
.method public maxOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    .line 600
    mul-int/lit8 v0, p1, 0x8

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .locals 17
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    move-object/from16 v0, p0

    .line 605
    iget-object v1, v0, Landroid/util/Base64$Encoder;->alphabet:[B

    .line 606
    .local v1, "alphabet":[B
    iget-object v2, v0, Landroid/util/Base64$Encoder;->output:[B

    .line 607
    .local v2, "output":[B
    const/4 v3, 0x0

    .line 608
    .local v3, "op":I
    iget v4, v0, Landroid/util/Base64$Encoder;->count:I

    .line 610
    .local v4, "count":I
    move/from16 v5, p2

    .line 611
    .local v5, "p":I
    add-int v6, p3, p2

    .line 612
    .end local p3    # "len":I
    .local v6, "len":I
    const/4 v7, -0x1

    .line 618
    .local v7, "v":I
    iget v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 635
    :pswitch_0
    add-int/lit8 v8, v5, 0x1

    if-gt v8, v6, :cond_0

    .line 637
    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    iget-object v11, v0, Landroid/util/Base64$Encoder;->tail:[B

    aget-byte v11, v11, v10

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v8, v11

    add-int/lit8 v11, v5, 0x1

    .local v11, "p":I
    aget-byte v5, p1, v5

    .end local v5    # "p":I
    and-int/lit16 v5, v5, 0xff

    or-int v7, v8, v5

    .line 640
    iput v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    .line 645
    move v8, v11

    goto :goto_1

    .line 624
    .end local v11    # "p":I
    .restart local v5    # "p":I
    :pswitch_1
    add-int/lit8 v8, v5, 0x2

    if-gt v8, v6, :cond_0

    .line 627
    iget-object v8, v0, Landroid/util/Base64$Encoder;->tail:[B

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/lit8 v11, v5, 0x1

    .restart local v11    # "p":I
    aget-byte v5, p1, v5

    .end local v5    # "p":I
    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v8

    add-int/lit8 v8, v11, 0x1

    .local v8, "p":I
    aget-byte v11, p1, v11

    .end local v11    # "p":I
    and-int/lit16 v11, v11, 0xff

    or-int v7, v5, v11

    .line 630
    iput v9, v0, Landroid/util/Base64$Encoder;->tailLen:I

    goto :goto_1

    .line 621
    .end local v8    # "p":I
    .restart local v5    # "p":I
    :pswitch_2
    nop

    .line 645
    :cond_0
    :goto_0
    move v8, v5

    .end local v5    # "p":I
    .restart local v8    # "p":I
    :goto_1
    const/4 v5, -0x1

    const/16 v9, 0xd

    const/16 v11, 0xa

    if-eq v7, v5, :cond_2

    .line 646
    add-int/lit8 v5, v3, 0x1

    .local v5, "op":I
    shr-int/lit8 v12, v7, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v3

    .line 647
    .end local v3    # "op":I
    add-int/lit8 v3, v5, 0x1

    .restart local v3    # "op":I
    shr-int/lit8 v12, v7, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v5

    .line 648
    .end local v5    # "op":I
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "op":I
    shr-int/lit8 v12, v7, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v3

    .line 649
    .end local v3    # "op":I
    add-int/lit8 v3, v5, 0x1

    .restart local v3    # "op":I
    and-int/lit8 v12, v7, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v5

    .line 650
    .end local v5    # "op":I
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_2

    .line 651
    iget-boolean v5, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v5, :cond_1

    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "op":I
    aput-byte v9, v2, v3

    .line 652
    .end local v3    # "op":I
    move v3, v5

    .end local v5    # "op":I
    .restart local v3    # "op":I
    :cond_1
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "op":I
    aput-byte v11, v2, v3

    .line 653
    .end local v3    # "op":I
    const/16 v4, 0x13

    .line 662
    .end local v5    # "op":I
    .restart local v3    # "op":I
    :goto_2
    move v3, v5

    :cond_2
    add-int/lit8 v5, v8, 0x3

    if-gt v5, v6, :cond_4

    .line 663
    aget-byte v5, p1, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v12, v8, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v5, v12

    add-int/lit8 v12, v8, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int v7, v5, v12

    .line 666
    shr-int/lit8 v5, v7, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v1, v5

    aput-byte v5, v2, v3

    .line 667
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v12, v7, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v5

    .line 668
    add-int/lit8 v5, v3, 0x2

    shr-int/lit8 v12, v7, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v5

    .line 669
    add-int/lit8 v5, v3, 0x3

    and-int/lit8 v12, v7, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v2, v5

    .line 670
    add-int/lit8 v8, v8, 0x3

    .line 671
    add-int/lit8 v3, v3, 0x4

    .line 672
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_2

    .line 673
    iget-boolean v5, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v5, :cond_3

    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "op":I
    aput-byte v9, v2, v3

    .line 674
    .end local v3    # "op":I
    move v3, v5

    .end local v5    # "op":I
    .restart local v3    # "op":I
    :cond_3
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "op":I
    aput-byte v11, v2, v3

    .line 675
    .end local v3    # "op":I
    const/16 v4, 0x13

    goto :goto_2

    .line 679
    .end local v5    # "op":I
    .restart local v3    # "op":I
    :cond_4
    if-eqz p4, :cond_12

    .line 685
    iget v12, v0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int v12, v8, v12

    add-int/lit8 v13, v6, -0x1

    const/16 v14, 0x3d

    if-ne v12, v13, :cond_9

    .line 686
    const/4 v12, 0x0

    .line 687
    .local v12, "t":I
    iget v13, v0, Landroid/util/Base64$Encoder;->tailLen:I

    if-lez v13, :cond_5

    iget-object v13, v0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v15, v12, 0x1

    .local v15, "t":I
    aget-byte v12, v13, v12

    .end local v12    # "t":I
    move v13, v8

    move v8, v12

    move v12, v15

    goto :goto_3

    .end local v15    # "t":I
    .restart local v12    # "t":I
    :cond_5
    add-int/lit8 v13, v8, 0x1

    .local v13, "p":I
    aget-byte v8, p1, v8

    .end local v8    # "p":I
    :goto_3
    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v7, v8, 0x4

    .line 688
    iget v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int/2addr v8, v12

    iput v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    .line 689
    add-int/lit8 v8, v3, 0x1

    .local v8, "op":I
    shr-int/lit8 v15, v7, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v1, v15

    aput-byte v15, v2, v3

    .line 690
    .end local v3    # "op":I
    add-int/lit8 v3, v8, 0x1

    .restart local v3    # "op":I
    and-int/lit8 v15, v7, 0x3f

    aget-byte v15, v1, v15

    aput-byte v15, v2, v8

    .line 691
    .end local v8    # "op":I
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_padding:Z

    if-eqz v8, :cond_6

    .line 692
    add-int/lit8 v8, v3, 0x1

    .restart local v8    # "op":I
    aput-byte v14, v2, v3

    .line 693
    .end local v3    # "op":I
    add-int/lit8 v3, v8, 0x1

    .restart local v3    # "op":I
    aput-byte v14, v2, v8

    .line 695
    .end local v8    # "op":I
    :cond_6
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v8, :cond_8

    .line 696
    iget-boolean v8, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v8, :cond_7

    add-int/lit8 v8, v3, 0x1

    .restart local v8    # "op":I
    aput-byte v9, v2, v3

    .end local v3    # "op":I
    goto :goto_4

    .line 697
    .end local v8    # "op":I
    .restart local v3    # "op":I
    :cond_7
    move v8, v3

    .end local v3    # "op":I
    .restart local v8    # "op":I
    :goto_4
    add-int/lit8 v3, v8, 0x1

    .restart local v3    # "op":I
    aput-byte v11, v2, v8

    .line 699
    .end local v8    # "op":I
    .end local v12    # "t":I
    :cond_8
    nop

    .line 719
    .end local v13    # "p":I
    .local v8, "p":I
    :goto_5
    move v8, v13

    goto/16 :goto_9

    .line 699
    :cond_9
    iget v12, v0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int v12, v8, v12

    add-int/lit8 v13, v6, -0x2

    if-ne v12, v13, :cond_f

    .line 700
    const/4 v12, 0x0

    .line 701
    .restart local v12    # "t":I
    iget v13, v0, Landroid/util/Base64$Encoder;->tailLen:I

    if-le v13, v10, :cond_a

    iget-object v13, v0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v15, v12, 0x1

    .restart local v15    # "t":I
    aget-byte v12, v13, v12

    .end local v12    # "t":I
    move v13, v8

    move v8, v12

    move v12, v15

    goto :goto_6

    .end local v15    # "t":I
    .restart local v12    # "t":I
    :cond_a
    add-int/lit8 v13, v8, 0x1

    .restart local v13    # "p":I
    aget-byte v8, p1, v8

    .end local v8    # "p":I
    :goto_6
    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v11

    .line 702
    iget v10, v0, Landroid/util/Base64$Encoder;->tailLen:I

    if-lez v10, :cond_b

    iget-object v10, v0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v15, v12, 0x1

    .restart local v15    # "t":I
    aget-byte v10, v10, v12

    .end local v12    # "t":I
    move v12, v15

    goto :goto_7

    .end local v15    # "t":I
    .restart local v12    # "t":I
    :cond_b
    add-int/lit8 v10, v13, 0x1

    .local v10, "p":I
    aget-byte v13, p1, v13

    .end local v13    # "p":I
    move/from16 v16, v13

    move v13, v10

    move/from16 v10, v16

    .end local v10    # "p":I
    .restart local v13    # "p":I
    :goto_7
    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x2

    or-int v7, v8, v10

    .line 703
    iget v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int/2addr v8, v12

    iput v8, v0, Landroid/util/Base64$Encoder;->tailLen:I

    .line 704
    add-int/lit8 v8, v3, 0x1

    .local v8, "op":I
    shr-int/lit8 v10, v7, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v3

    .line 705
    .end local v3    # "op":I
    add-int/lit8 v3, v8, 0x1

    .restart local v3    # "op":I
    shr-int/lit8 v10, v7, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v8

    .line 706
    .end local v8    # "op":I
    add-int/lit8 v8, v3, 0x1

    .restart local v8    # "op":I
    and-int/lit8 v10, v7, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v3

    .line 707
    .end local v3    # "op":I
    iget-boolean v3, v0, Landroid/util/Base64$Encoder;->do_padding:Z

    if-eqz v3, :cond_c

    .line 708
    add-int/lit8 v3, v8, 0x1

    .restart local v3    # "op":I
    aput-byte v14, v2, v8

    .line 710
    .end local v8    # "op":I
    move v8, v3

    .end local v3    # "op":I
    .restart local v8    # "op":I
    :cond_c
    iget-boolean v3, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v3, :cond_e

    .line 711
    iget-boolean v3, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v3, :cond_d

    add-int/lit8 v3, v8, 0x1

    .restart local v3    # "op":I
    aput-byte v9, v2, v8

    .line 712
    .end local v8    # "op":I
    move v8, v3

    .end local v3    # "op":I
    .restart local v8    # "op":I
    :cond_d
    add-int/lit8 v3, v8, 0x1

    .restart local v3    # "op":I
    aput-byte v11, v2, v8

    .line 714
    .end local v8    # "op":I
    .end local v12    # "t":I
    move v8, v3

    .line 719
    .end local v3    # "op":I
    .restart local v8    # "op":I
    :cond_e
    move v3, v8

    goto :goto_5

    .line 714
    .end local v13    # "p":I
    .restart local v3    # "op":I
    .local v8, "p":I
    :cond_f
    iget-boolean v10, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v10, :cond_11

    if-lez v3, :cond_11

    const/16 v10, 0x13

    if-eq v4, v10, :cond_11

    .line 715
    iget-boolean v10, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v10, :cond_10

    add-int/lit8 v10, v3, 0x1

    .local v10, "op":I
    aput-byte v9, v2, v3

    .end local v3    # "op":I
    goto :goto_8

    .line 716
    .end local v10    # "op":I
    .restart local v3    # "op":I
    :cond_10
    move v10, v3

    .end local v3    # "op":I
    .restart local v10    # "op":I
    :goto_8
    add-int/lit8 v3, v10, 0x1

    .restart local v3    # "op":I
    aput-byte v11, v2, v10

    .line 719
    .end local v10    # "op":I
    :cond_11
    :goto_9
    nop

    .line 720
    goto :goto_a

    .line 725
    :cond_12
    add-int/lit8 v9, v6, -0x1

    if-ne v8, v9, :cond_13

    .line 726
    iget-object v9, v0, Landroid/util/Base64$Encoder;->tail:[B

    iget v10, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Landroid/util/Base64$Encoder;->tailLen:I

    aget-byte v11, p1, v8

    aput-byte v11, v9, v10

    goto :goto_a

    .line 727
    :cond_13
    add-int/lit8 v9, v6, -0x2

    if-ne v8, v9, :cond_14

    .line 728
    iget-object v9, v0, Landroid/util/Base64$Encoder;->tail:[B

    iget v10, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Landroid/util/Base64$Encoder;->tailLen:I

    aget-byte v11, p1, v8

    aput-byte v11, v9, v10

    .line 729
    iget-object v9, v0, Landroid/util/Base64$Encoder;->tail:[B

    iget v10, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v11, v8, 0x1

    aget-byte v11, p1, v11

    aput-byte v11, v9, v10

    .line 733
    :cond_14
    :goto_a
    iput v3, v0, Landroid/util/Base64$Encoder;->op:I

    .line 734
    iput v4, v0, Landroid/util/Base64$Encoder;->count:I

    .line 736
    const/4 v9, 0x1

    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
