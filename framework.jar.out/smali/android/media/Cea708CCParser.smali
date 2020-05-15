.class Landroid/media/Cea708CCParser;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCParser$CaptionWindow;,
        Landroid/media/Cea708CCParser$CaptionWindowAttr;,
        Landroid/media/Cea708CCParser$CaptionPenLocation;,
        Landroid/media/Cea708CCParser$CaptionPenColor;,
        Landroid/media/Cea708CCParser$CaptionPenAttr;,
        Landroid/media/Cea708CCParser$CaptionEvent;,
        Landroid/media/Cea708CCParser$CaptionColor;,
        Landroid/media/Cea708CCParser$Const;,
        Landroid/media/Cea708CCParser$DisplayListener;
    }
.end annotation


# static fields
.field public static final CAPTION_EMIT_TYPE_BUFFER:I = 0x1

.field public static final CAPTION_EMIT_TYPE_COMMAND_CLW:I = 0x4

.field public static final CAPTION_EMIT_TYPE_COMMAND_CWX:I = 0x3

.field public static final CAPTION_EMIT_TYPE_COMMAND_DFX:I = 0x10

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLC:I = 0xa

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLW:I = 0x8

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLY:I = 0x9

.field public static final CAPTION_EMIT_TYPE_COMMAND_DSW:I = 0x5

.field public static final CAPTION_EMIT_TYPE_COMMAND_HDW:I = 0x6

.field public static final CAPTION_EMIT_TYPE_COMMAND_RST:I = 0xb

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPA:I = 0xc

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPC:I = 0xd

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPL:I = 0xe

.field public static final CAPTION_EMIT_TYPE_COMMAND_SWA:I = 0xf

.field public static final CAPTION_EMIT_TYPE_COMMAND_TGW:I = 0x7

.field public static final CAPTION_EMIT_TYPE_CONTROL:I = 0x2

.field private static final DEBUG:Z = false

.field private static final MUSIC_NOTE_CHAR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Cea708CCParser"


# instance fields
.field private final mBuffer:Ljava/lang/StringBuffer;

.field private mCommand:I

.field private mListener:Landroid/media/Cea708CCParser$DisplayListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 191
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "\u266b"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    .line 191
    return-void
.end method

.method constructor <init>(Landroid/media/Cea708CCParser$DisplayListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/Cea708CCParser$DisplayListener;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    .line 198
    new-instance v0, Landroid/media/Cea708CCParser$1;

    invoke-direct {v0, p0}, Landroid/media/Cea708CCParser$1;-><init>(Landroid/media/Cea708CCParser;)V

    iput-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    .line 241
    if-eqz p1, :cond_0

    .line 242
    iput-object p1, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    .line 244
    :cond_0
    return-void
.end method

.method private emitCaptionBuffer()V
    .locals 4

    .line 257
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 259
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 261
    :cond_0
    return-void
.end method

.method private emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .locals 1
    .param p1, "captionEvent"    # Landroid/media/Cea708CCParser$CaptionEvent;

    .line 252
    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    .line 253
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    invoke-interface {v0, p1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 254
    return-void
.end method

.method private parseC0([BI)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 317
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_2

    .line 319
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ne v0, v1, :cond_1

    .line 323
    :try_start_0
    aget-byte v0, p1, p2

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x2

    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const-string v2, "EUC-KR"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 327
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "Cea708CCParser"

    const-string v2, "P16 Code - Could not find supported encoding"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x2

    goto :goto_2

    .line 334
    :cond_2
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_3

    .line 336
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 343
    :cond_3
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-eqz v0, :cond_6

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 359
    :pswitch_0
    new-instance v0, Landroid/media/Cea708CCParser$CaptionEvent;

    iget v1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 360
    goto :goto_2

    .line 356
    :pswitch_1
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 357
    goto :goto_2

    .line 353
    :pswitch_2
    new-instance v0, Landroid/media/Cea708CCParser$CaptionEvent;

    iget v1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 354
    goto :goto_2

    .line 350
    :cond_4
    new-instance v0, Landroid/media/Cea708CCParser$CaptionEvent;

    iget v1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 351
    goto :goto_2

    .line 347
    :cond_5
    new-instance v0, Landroid/media/Cea708CCParser$CaptionEvent;

    iget v1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 348
    goto :goto_2

    .line 345
    :cond_6
    nop

    .line 365
    :goto_2
    return p2

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseC1([BI)I
    .locals 29
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    move-object/from16 v0, p0

    .line 371
    iget v2, v0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v3, 0xf

    const/4 v4, 0x5

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_7

    .line 586
    :pswitch_0
    iget v2, v0, Landroid/media/Cea708CCParser;->mCommand:I

    add-int/lit16 v2, v2, -0x98

    .line 587
    .local v2, "windowId":I
    aget-byte v4, p1, p2

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_0

    move v14, v11

    goto :goto_0

    :cond_0
    move v14, v8

    .line 588
    .local v14, "visible":Z
    :goto_0
    aget-byte v4, p1, p2

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1

    move v15, v11

    goto :goto_1

    :cond_1
    move v15, v8

    .line 589
    .local v15, "rowLock":Z
    :goto_1
    aget-byte v4, p1, p2

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2

    move/from16 v16, v11

    goto :goto_2

    :cond_2
    move/from16 v16, v8

    .line 590
    .local v16, "columnLock":Z
    :goto_2
    aget-byte v4, p1, p2

    and-int/2addr v4, v5

    .line 591
    .local v4, "priority":I
    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_3

    move/from16 v18, v11

    goto :goto_3

    :cond_3
    move/from16 v18, v8

    .line 592
    .local v18, "relativePositioning":Z
    :goto_3
    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    and-int/lit8 v6, v6, 0x7f

    .line 593
    .local v6, "anchorVertical":I
    add-int/lit8 v7, p2, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    .line 594
    .local v7, "anchorHorizontal":I
    add-int/lit8 v8, p2, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xf0

    shr-int/2addr v8, v9

    .line 595
    .local v8, "anchorId":I
    add-int/lit8 v9, p2, 0x3

    aget-byte v9, p1, v9

    and-int/2addr v3, v9

    .line 596
    .local v3, "rowCount":I
    add-int/lit8 v9, p2, 0x4

    aget-byte v9, p1, v9

    and-int/lit8 v9, v9, 0x3f

    .line 597
    .local v9, "columnCount":I
    add-int/lit8 v11, p2, 0x5

    aget-byte v11, p1, v11

    and-int/lit8 v11, v11, 0x38

    shr-int/lit8 v10, v11, 0x3

    .line 598
    .local v10, "windowStyle":I
    add-int/lit8 v11, p2, 0x5

    aget-byte v11, p1, v11

    and-int/2addr v5, v11

    .line 599
    .local v5, "penStyle":I
    add-int/lit8 v1, p2, 0x6

    .line 600
    .end local p2    # "pos":I
    .local v1, "pos":I
    new-instance v11, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v13, 0x10

    new-instance v12, Landroid/media/Cea708CCParser$CaptionWindow;

    move-object/from16 v26, v12

    move/from16 v27, v1

    move v1, v13

    move v13, v2

    .end local v1    # "pos":I
    .local v27, "pos":I
    move/from16 v17, v4

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v3

    move/from16 v23, v9

    move/from16 v24, v5

    move/from16 v25, v10

    invoke-direct/range {v12 .. v25}, Landroid/media/Cea708CCParser$CaptionWindow;-><init>(IZZZIZIIIIIII)V

    invoke-direct {v11, v1, v12}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v11}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 615
    nop

    .line 621
    move/from16 v1, v27

    goto/16 :goto_8

    .line 542
    .end local v2    # "windowId":I
    .end local v3    # "rowCount":I
    .end local v4    # "priority":I
    .end local v5    # "penStyle":I
    .end local v6    # "anchorVertical":I
    .end local v7    # "anchorHorizontal":I
    .end local v8    # "anchorId":I
    .end local v9    # "columnCount":I
    .end local v10    # "windowStyle":I
    .end local v14    # "visible":Z
    .end local v15    # "rowLock":Z
    .end local v16    # "columnLock":Z
    .end local v18    # "relativePositioning":Z
    .end local v27    # "pos":I
    .restart local p2    # "pos":I
    :pswitch_1
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xc0

    shr-int/2addr v2, v6

    .line 543
    .local v2, "opacity":I
    aget-byte v5, p1, p2

    and-int/lit8 v5, v5, 0x30

    shr-int/2addr v5, v9

    .line 544
    .local v5, "red":I
    aget-byte v12, p1, p2

    and-int/2addr v12, v7

    shr-int/lit8 v12, v12, 0x2

    .line 545
    .local v12, "green":I
    aget-byte v13, p1, p2

    and-int/2addr v13, v10

    .line 546
    .local v13, "blue":I
    new-instance v14, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v14, v2, v5, v12, v13}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    move-object v15, v14

    .line 547
    .local v15, "fillColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/lit8 v14, p2, 0x1

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xc0

    shr-int/lit8 v6, v14, 0x6

    add-int/lit8 v14, p2, 0x2

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0x80

    shr-int/lit8 v4, v14, 0x5

    or-int/2addr v4, v6

    .line 548
    .local v4, "borderType":I
    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    and-int/lit8 v6, v6, 0x30

    shr-int/lit8 v5, v6, 0x4

    .line 549
    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x2

    .line 550
    .end local v12    # "green":I
    .local v6, "green":I
    add-int/lit8 v12, p2, 0x1

    aget-byte v12, p1, v12

    and-int/2addr v12, v10

    .line 551
    .end local v13    # "blue":I
    .local v12, "blue":I
    new-instance v13, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v13, v8, v5, v6, v12}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    move-object/from16 v16, v13

    .line 553
    .local v16, "borderColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/lit8 v13, p2, 0x2

    aget-byte v13, p1, v13

    and-int/lit8 v13, v13, 0x40

    if-eqz v13, :cond_4

    move/from16 v18, v11

    goto :goto_4

    :cond_4
    move/from16 v18, v8

    .line 554
    .local v18, "wordWrap":Z
    :goto_4
    add-int/lit8 v8, p2, 0x2

    aget-byte v8, p1, v8

    and-int/lit8 v8, v8, 0x30

    shr-int/2addr v8, v9

    .line 555
    .local v8, "printDirection":I
    add-int/lit8 v11, p2, 0x2

    aget-byte v11, p1, v11

    and-int/2addr v11, v7

    shr-int/lit8 v11, v11, 0x2

    .line 556
    .local v11, "scrollDirection":I
    add-int/lit8 v13, p2, 0x2

    aget-byte v13, p1, v13

    and-int/2addr v13, v10

    .line 557
    .local v13, "justify":I
    add-int/lit8 v14, p2, 0x3

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xf0

    shr-int/lit8 v9, v14, 0x4

    .line 558
    .local v9, "effectSpeed":I
    add-int/lit8 v14, p2, 0x3

    aget-byte v14, p1, v14

    and-int/2addr v7, v14

    shr-int/lit8 v7, v7, 0x2

    .line 559
    .local v7, "effectDirection":I
    add-int/lit8 v14, p2, 0x3

    aget-byte v14, p1, v14

    and-int/2addr v10, v14

    .line 560
    .local v10, "displayEffect":I
    add-int/lit8 v1, p2, 0x4

    .line 561
    .end local p2    # "pos":I
    .restart local v1    # "pos":I
    new-instance v14, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v3, Landroid/media/Cea708CCParser$CaptionWindowAttr;

    move/from16 v28, v1

    move-object v1, v14

    move-object v14, v3

    .end local v1    # "pos":I
    .local v28, "pos":I
    move/from16 v17, v4

    move/from16 v19, v8

    move/from16 v20, v11

    move/from16 v21, v13

    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-direct/range {v14 .. v24}, Landroid/media/Cea708CCParser$CaptionWindowAttr;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;IZIIIIII)V

    const/16 v14, 0xf

    invoke-direct {v1, v14, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 574
    nop

    .line 621
    move/from16 v1, v28

    goto/16 :goto_8

    .line 528
    .end local v2    # "opacity":I
    .end local v4    # "borderType":I
    .end local v5    # "red":I
    .end local v6    # "green":I
    .end local v7    # "effectDirection":I
    .end local v8    # "printDirection":I
    .end local v9    # "effectSpeed":I
    .end local v10    # "displayEffect":I
    .end local v11    # "scrollDirection":I
    .end local v12    # "blue":I
    .end local v13    # "justify":I
    .end local v15    # "fillColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v16    # "borderColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v18    # "wordWrap":Z
    .end local v28    # "pos":I
    .restart local p2    # "pos":I
    :pswitch_2
    move v14, v3

    aget-byte v2, p1, p2

    and-int/2addr v2, v14

    .line 529
    .local v2, "row":I
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x3f

    .line 530
    .local v3, "column":I
    add-int/lit8 v1, p2, 0x2

    .line 531
    .end local p2    # "pos":I
    .restart local v1    # "pos":I
    new-instance v4, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v5, 0xe

    new-instance v6, Landroid/media/Cea708CCParser$CaptionPenLocation;

    invoke-direct {v6, v2, v3}, Landroid/media/Cea708CCParser$CaptionPenLocation;-><init>(II)V

    invoke-direct {v4, v5, v6}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v4}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 537
    goto/16 :goto_8

    .line 497
    .end local v1    # "pos":I
    .end local v2    # "row":I
    .end local v3    # "column":I
    .restart local p2    # "pos":I
    :pswitch_3
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xc0

    shr-int/2addr v2, v6

    .line 498
    .local v2, "opacity":I
    aget-byte v3, p1, p2

    and-int/lit8 v3, v3, 0x30

    shr-int/2addr v3, v9

    .line 499
    .local v3, "red":I
    aget-byte v4, p1, p2

    and-int/2addr v4, v7

    shr-int/lit8 v4, v4, 0x2

    .line 500
    .local v4, "green":I
    aget-byte v5, p1, p2

    and-int/2addr v5, v10

    .line 501
    .local v5, "blue":I
    new-instance v12, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v12, v2, v3, v4, v5}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 502
    .local v12, "foregroundColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/lit8 v1, p2, 0x1

    .line 503
    .end local p2    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v13, p1, v1

    and-int/lit16 v13, v13, 0xc0

    shr-int/lit8 v2, v13, 0x6

    .line 504
    aget-byte v6, p1, v1

    and-int/lit8 v6, v6, 0x30

    shr-int/lit8 v3, v6, 0x4

    .line 505
    aget-byte v6, p1, v1

    and-int/2addr v6, v7

    shr-int/lit8 v4, v6, 0x2

    .line 506
    aget-byte v6, p1, v1

    and-int/lit8 v5, v6, 0x3

    .line 507
    new-instance v6, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 508
    .local v6, "backgroundColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/2addr v1, v11

    .line 509
    aget-byte v13, p1, v1

    and-int/lit8 v13, v13, 0x30

    shr-int/lit8 v3, v13, 0x4

    .line 510
    aget-byte v9, p1, v1

    and-int/2addr v7, v9

    shr-int/lit8 v4, v7, 0x2

    .line 511
    aget-byte v7, p1, v1

    and-int/lit8 v5, v7, 0x3

    .line 512
    new-instance v7, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v7, v8, v3, v4, v5}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 514
    .local v7, "edgeColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/2addr v1, v11

    .line 515
    new-instance v8, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v9, 0xd

    new-instance v10, Landroid/media/Cea708CCParser$CaptionPenColor;

    invoke-direct {v10, v12, v6, v7}, Landroid/media/Cea708CCParser$CaptionPenColor;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;)V

    invoke-direct {v8, v9, v10}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v8}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 522
    goto/16 :goto_8

    .line 475
    .end local v1    # "pos":I
    .end local v2    # "opacity":I
    .end local v3    # "red":I
    .end local v4    # "green":I
    .end local v5    # "blue":I
    .end local v6    # "backgroundColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v7    # "edgeColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v12    # "foregroundColor":Landroid/media/Cea708CCParser$CaptionColor;
    .restart local p2    # "pos":I
    :pswitch_4
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xf0

    shr-int/2addr v2, v9

    .line 476
    .local v2, "textTag":I
    aget-byte v3, p1, p2

    and-int/2addr v3, v10

    .line 477
    .local v3, "penSize":I
    aget-byte v4, p1, p2

    and-int/2addr v4, v7

    shr-int/lit8 v4, v4, 0x2

    .line 478
    .local v4, "penOffset":I
    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_5

    move/from16 v19, v11

    goto :goto_5

    :cond_5
    move/from16 v19, v8

    .line 479
    .local v19, "italic":Z
    :goto_5
    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_6

    move/from16 v18, v11

    goto :goto_6

    :cond_6
    move/from16 v18, v8

    .line 480
    .local v18, "underline":Z
    :goto_6
    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    and-int/lit8 v6, v6, 0x38

    shr-int/2addr v6, v10

    .line 481
    .local v6, "edgeType":I
    add-int/lit8 v8, p2, 0x1

    aget-byte v8, p1, v8

    and-int/2addr v5, v8

    .line 482
    .local v5, "fontTag":I
    add-int/lit8 v1, p2, 0x2

    .line 483
    .end local p2    # "pos":I
    .restart local v1    # "pos":I
    new-instance v8, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v9, Landroid/media/Cea708CCParser$CaptionPenAttr;

    move-object v12, v9

    move v13, v3

    move v14, v4

    move v15, v2

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-direct/range {v12 .. v19}, Landroid/media/Cea708CCParser$CaptionPenAttr;-><init>(IIIIIZZ)V

    invoke-direct {v8, v7, v9}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v8}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 492
    goto/16 :goto_8

    .line 466
    .end local v1    # "pos":I
    .end local v2    # "textTag":I
    .end local v3    # "penSize":I
    .end local v4    # "penOffset":I
    .end local v5    # "fontTag":I
    .end local v6    # "edgeType":I
    .end local v18    # "underline":Z
    .end local v19    # "italic":Z
    .restart local p2    # "pos":I
    :pswitch_5
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 470
    goto/16 :goto_7

    .line 457
    :pswitch_6
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 461
    goto/16 :goto_7

    .line 446
    :pswitch_7
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    .line 447
    .local v2, "tenthsOfSeconds":I
    add-int/lit8 v1, p2, 0x1

    .line 448
    .end local p2    # "pos":I
    .restart local v1    # "pos":I
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v4, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 453
    goto/16 :goto_8

    .line 435
    .end local v1    # "pos":I
    .end local v2    # "tenthsOfSeconds":I
    .restart local p2    # "pos":I
    :pswitch_8
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    .line 436
    .local v2, "windowBitmap":I
    add-int/lit8 v1, p2, 0x1

    .line 437
    .end local p2    # "pos":I
    .restart local v1    # "pos":I
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v4, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 441
    goto :goto_8

    .line 424
    .end local v1    # "pos":I
    .end local v2    # "windowBitmap":I
    .restart local p2    # "pos":I
    :pswitch_9
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    .line 425
    .restart local v2    # "windowBitmap":I
    add-int/lit8 v1, p2, 0x1

    .line 426
    .end local p2    # "pos":I
    .restart local v1    # "pos":I
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 430
    goto :goto_8

    .line 413
    .end local v1    # "pos":I
    .end local v2    # "windowBitmap":I
    .restart local p2    # "pos":I
    :pswitch_a
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    .line 414
    .restart local v2    # "windowBitmap":I
    add-int/lit8 v1, p2, 0x1

    .line 415
    .end local p2    # "pos":I
    .restart local v1    # "pos":I
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 419
    goto :goto_8

    .line 402
    .end local v1    # "pos":I
    .end local v2    # "windowBitmap":I
    .restart local p2    # "pos":I
    :pswitch_b
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    .line 403
    .restart local v2    # "windowBitmap":I
    add-int/lit8 v1, p2, 0x1

    .line 404
    .end local p2    # "pos":I
    .restart local v1    # "pos":I
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 408
    goto :goto_8

    .line 391
    .end local v1    # "pos":I
    .end local v2    # "windowBitmap":I
    .restart local p2    # "pos":I
    :pswitch_c
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    .line 392
    .restart local v2    # "windowBitmap":I
    add-int/lit8 v1, p2, 0x1

    .line 393
    .end local p2    # "pos":I
    .restart local v1    # "pos":I
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v9, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 397
    goto :goto_8

    .line 381
    .end local v1    # "pos":I
    .end local v2    # "windowBitmap":I
    .restart local p2    # "pos":I
    :pswitch_d
    iget v2, v0, Landroid/media/Cea708CCParser;->mCommand:I

    add-int/lit8 v2, v2, -0x80

    .line 382
    .local v2, "windowId":I
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 386
    nop

    .line 621
    .end local v2    # "windowId":I
    :goto_7
    move/from16 v1, p2

    .end local p2    # "pos":I
    .restart local v1    # "pos":I
    :goto_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x97
        :pswitch_1
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

.method private parseC2([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 670
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 675
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 676
    :cond_1
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_2

    .line 678
    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 679
    :cond_2
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_3

    .line 681
    add-int/lit8 p2, p2, 0x3

    .line 683
    :cond_3
    :goto_0
    return p2
.end method

.method private parseC3([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 690
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x80

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x87

    if-gt v0, v1, :cond_0

    .line 692
    add-int/lit8 p2, p2, 0x4

    goto :goto_0

    .line 693
    :cond_0
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x88

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x8f

    if-gt v0, v1, :cond_1

    .line 695
    add-int/lit8 p2, p2, 0x5

    .line 697
    :cond_1
    :goto_0
    return p2
.end method

.method private parseExt1([BI)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 648
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    .line 649
    add-int/lit8 p2, p2, 0x1

    .line 650
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_0

    .line 652
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC2([BI)I

    move-result p2

    goto :goto_0

    .line 653
    :cond_0
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0x80

    if-lt v0, v2, :cond_1

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_1

    .line 655
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC3([BI)I

    move-result p2

    goto :goto_0

    .line 656
    :cond_1
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0x20

    if-lt v0, v2, :cond_2

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_2

    .line 658
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG2([BI)I

    move-result p2

    goto :goto_0

    .line 659
    :cond_2
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0xa0

    if-lt v0, v2, :cond_3

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-gt v0, v1, :cond_3

    .line 661
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG3([BI)I

    move-result p2

    .line 663
    :cond_3
    :goto_0
    return p2
.end method

.method private parseG0([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 627
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 629
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 632
    :cond_0
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 634
    :goto_0
    return p2
.end method

.method private parseG1([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 641
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 642
    return p2
.end method

.method private parseG2([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 703
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 709
    :pswitch_0
    goto :goto_0

    .line 706
    :pswitch_1
    goto :goto_0

    .line 713
    :cond_0
    nop

    .line 717
    :goto_0
    return p2

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseG3([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 723
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    .line 728
    return p2
.end method

.method private parseServiceBlockData([BI)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 279
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    .line 280
    add-int/lit8 p2, p2, 0x1

    .line 281
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    .line 285
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseExt1([BI)I

    move-result p2

    goto :goto_0

    .line 286
    :cond_0
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_1

    .line 291
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC0([BI)I

    move-result p2

    goto :goto_0

    .line 292
    :cond_1
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0x80

    if-lt v0, v2, :cond_2

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_2

    .line 297
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC1([BI)I

    move-result p2

    goto :goto_0

    .line 298
    :cond_2
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0x20

    if-lt v0, v2, :cond_3

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_3

    .line 303
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG0([BI)I

    move-result p2

    goto :goto_0

    .line 304
    :cond_3
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v2, 0xa0

    if-lt v0, v2, :cond_4

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-gt v0, v1, :cond_4

    .line 309
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG1([BI)I

    move-result p2

    .line 311
    :cond_4
    :goto_0
    return p2
.end method


# virtual methods
.method public parse([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "pos":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 269
    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCParser;->parseServiceBlockData([BI)I

    move-result v0

    goto :goto_0

    .line 273
    :cond_0
    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    .line 274
    return-void
.end method
