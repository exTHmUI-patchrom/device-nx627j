.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# static fields
.field private static final CARRIAGE_RETURN:I = 0xd

.field private static final LINE_FEED:I = 0xa

.field static final OLD_SEL_START:Ljava/lang/Object;

.field static sCachedPaint:Landroid/graphics/Paint;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "moveToStart"    # Z

    .line 94
    instance-of v0, p0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    .line 95
    return p1

    .line 98
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p1, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    .line 99
    .local v0, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 100
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 101
    .local v2, "start":I
    move-object v3, p0

    check-cast v3, Landroid/text/Spanned;

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 103
    .local v3, "end":I
    if-ge v2, p1, :cond_2

    if-le v3, p1, :cond_2

    .line 104
    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    move p1, v4

    .line 99
    .end local v2    # "start":I
    .end local v3    # "end":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    :cond_3
    return p1
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;
    .param p5, "isForwardDelete"    # Z

    .line 322
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0x70f4

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 324
    return v1

    .line 328
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 329
    return v2

    .line 333
    :cond_1
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 334
    .local v0, "isCtrlActive":Z
    :goto_0
    invoke-static {p2, v2, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    .line 335
    .local v3, "isShiftActive":Z
    :goto_1
    const/4 v4, 0x2

    invoke-static {p2, v4, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v1

    .line 337
    .local v4, "isAltActive":Z
    :goto_2
    if-eqz v0, :cond_7

    .line 338
    if-nez v4, :cond_6

    if-eqz v3, :cond_5

    goto :goto_3

    .line 342
    :cond_5
    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z

    move-result v1

    return v1

    .line 340
    :cond_6
    :goto_3
    return v1

    .line 346
    :cond_7
    if-eqz v4, :cond_8

    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 347
    return v2

    .line 351
    :cond_8
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    .line 353
    .local v5, "start":I
    if-eqz p5, :cond_b

    .line 355
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_9

    .line 356
    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .local v6, "paint":Landroid/graphics/Paint;
    goto :goto_4

    .line 358
    .end local v6    # "paint":Landroid/graphics/Paint;
    :cond_9
    iget-object v6, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 359
    :try_start_0
    sget-object v7, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    if-nez v7, :cond_a

    .line 360
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    sput-object v7, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    .line 362
    :cond_a
    sget-object v7, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    .line 363
    .local v7, "paint":Landroid/graphics/Paint;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v7

    .line 365
    .end local v7    # "paint":Landroid/graphics/Paint;
    .restart local v6    # "paint":Landroid/graphics/Paint;
    :goto_4
    invoke-static {p2, v5, v6}, Landroid/text/method/BaseKeyListener;->getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I

    move-result v6

    .line 366
    .local v6, "end":I
    goto :goto_5

    .line 363
    .end local v6    # "end":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 367
    :cond_b
    invoke-static {p2, v5}, Landroid/text/method/BaseKeyListener;->getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 369
    .restart local v6    # "end":I
    :goto_5
    if-eq v5, v6, :cond_c

    .line 370
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {p2, v1, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 371
    return v2

    .line 373
    :cond_c
    return v1
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    .line 440
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 441
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 442
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_0

    .line 443
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 444
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 445
    .local v2, "start":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 446
    .local v3, "end":I
    if-eq v3, v2, :cond_0

    .line 447
    invoke-interface {p2, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 448
    const/4 v4, 0x1

    return v4

    .line 452
    .end local v0    # "layout":Landroid/text/Layout;
    .end local v1    # "line":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;

    .line 425
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 426
    .local v0, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 427
    .local v1, "selectionEnd":I
    if-ge v1, v0, :cond_0

    .line 428
    move v2, v1

    .line 429
    .local v2, "temp":I
    move v1, v0

    .line 430
    move v0, v2

    .line 432
    .end local v2    # "temp":I
    :cond_0
    if-eq v0, v1, :cond_1

    .line 433
    invoke-interface {p2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 434
    const/4 v2, 0x1

    return v2

    .line 436
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "isForwardDelete"    # Z

    .line 377
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 380
    .local v0, "currentCursorOffset":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 381
    return v2

    .line 385
    :cond_0
    if-nez p3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    .line 386
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 387
    :cond_2
    return v2

    .line 390
    :cond_3
    const/4 v1, 0x0

    .line 391
    .local v1, "wordIterator":Landroid/text/method/WordIterator;
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 392
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v1

    .line 395
    :cond_4
    if-nez v1, :cond_5

    .line 399
    new-instance v3, Landroid/text/method/WordIterator;

    invoke-direct {v3}, Landroid/text/method/WordIterator;-><init>()V

    move-object v1, v3

    .line 405
    :cond_5
    const/4 v3, -0x1

    if-eqz p3, :cond_6

    .line 406
    move v2, v0

    .line 407
    .local v2, "deleteFrom":I
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v1, p2, v2, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 408
    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->following(I)I

    move-result v4

    .line 409
    .local v4, "deleteTo":I
    if-ne v4, v3, :cond_7

    .line 410
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    goto :goto_0

    .line 413
    .end local v2    # "deleteFrom":I
    .end local v4    # "deleteTo":I
    :cond_6
    move v4, v0

    .line 414
    .restart local v4    # "deleteTo":I
    invoke-virtual {v1, p2, v2, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 415
    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v2

    .line 416
    .restart local v2    # "deleteFrom":I
    if-ne v2, v3, :cond_7

    .line 417
    const/4 v2, 0x0

    .line 420
    :cond_7
    :goto_0
    invoke-interface {p2, v2, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 421
    const/4 v3, 0x1

    return v3
.end method

.method private static getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I
    .locals 27
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    move-object/from16 v0, p0

    .line 112
    move/from16 v1, p1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 113
    const/4 v2, 0x0

    return v2

    .line 117
    :cond_0
    const/4 v3, 0x0

    .line 120
    .local v3, "STATE_START":I
    const/4 v4, 0x1

    .line 123
    .local v4, "STATE_LF":I
    const/4 v5, 0x2

    .line 125
    .local v5, "STATE_BEFORE_KEYCAP":I
    const/4 v6, 0x3

    .line 128
    .local v6, "STATE_BEFORE_VS_AND_KEYCAP":I
    const/4 v7, 0x4

    .line 130
    .local v7, "STATE_BEFORE_EMOJI_MODIFIER":I
    const/4 v8, 0x5

    .line 133
    .local v8, "STATE_BEFORE_VS_AND_EMOJI_MODIFIER":I
    const/4 v9, 0x6

    .line 136
    .local v9, "STATE_BEFORE_VS":I
    const/4 v10, 0x7

    .line 138
    .local v10, "STATE_BEFORE_EMOJI":I
    const/16 v11, 0x8

    .line 141
    .local v11, "STATE_BEFORE_ZWJ":I
    const/16 v12, 0x9

    .line 144
    .local v12, "STATE_BEFORE_VS_AND_ZWJ":I
    const/16 v13, 0xa

    .line 146
    .local v13, "STATE_ODD_NUMBERED_RIS":I
    const/16 v14, 0xb

    .line 149
    .local v14, "STATE_EVEN_NUMBERED_RIS":I
    const/16 v15, 0xc

    .line 152
    .local v15, "STATE_IN_TAG_SEQUENCE":I
    const/16 v16, 0xd

    .line 154
    .local v16, "STATE_FINISHED":I
    const/16 v17, 0x0

    .line 155
    .local v17, "deleteCharCount":I
    const/16 v18, 0x0

    .line 157
    .local v18, "lastSeenVSCharCount":I
    const/16 v19, 0x0

    .line 159
    .local v19, "state":I
    move/from16 v2, v19

    move/from16 v19, v18

    move/from16 v18, v17

    move/from16 v17, v1

    .line 159
    .local v2, "state":I
    .local v17, "tmpOffset":I
    .local v18, "deleteCharCount":I
    .local v19, "lastSeenVSCharCount":I
    :goto_0
    move/from16 v21, v17

    .line 161
    .end local v17    # "tmpOffset":I
    .local v21, "tmpOffset":I
    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v3, v21

    invoke-static {v0, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 162
    .end local v21    # "tmpOffset":I
    .local v3, "tmpOffset":I
    .local v4, "codePoint":I
    .local v22, "STATE_START":I
    .local v23, "STATE_LF":I
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v17

    sub-int v17, v3, v17

    .line 164
    .end local v3    # "tmpOffset":I
    .restart local v17    # "tmpOffset":I
    packed-switch v2, :pswitch_data_0

    .line 298
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 284
    :pswitch_0
    invoke-static {v4}, Landroid/text/Emoji;->isTagSpecChar(I)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 285
    add-int/lit8 v18, v18, 0x2

    goto/16 :goto_4

    .line 287
    :cond_1
    invoke-static {v4}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 288
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v21

    add-int v18, v18, v21

    .line 289
    const/16 v2, 0xd

    goto/16 :goto_4

    .line 292
    :cond_2
    const/16 v18, 0x2

    .line 293
    const/16 v2, 0xd

    .line 296
    goto/16 :goto_4

    .line 200
    :pswitch_1
    invoke-static {v4}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 201
    add-int/lit8 v18, v18, -0x2

    .line 202
    const/16 v2, 0xa

    goto/16 :goto_4

    .line 204
    :cond_3
    const/16 v2, 0xd

    .line 206
    goto/16 :goto_4

    .line 192
    :pswitch_2
    invoke-static {v4}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 193
    add-int/lit8 v18, v18, 0x2

    .line 194
    const/16 v2, 0xb

    goto/16 :goto_4

    .line 196
    :cond_4
    const/16 v2, 0xd

    .line 198
    goto/16 :goto_4

    .line 274
    :pswitch_3
    invoke-static {v4}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 276
    add-int/lit8 v21, v19, 0x1

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v24

    add-int v21, v21, v24

    add-int v18, v18, v21

    .line 277
    const/16 v19, 0x0

    .line 278
    const/4 v2, 0x7

    goto/16 :goto_4

    .line 280
    :cond_5
    const/16 v2, 0xd

    .line 282
    goto/16 :goto_4

    .line 262
    :pswitch_4
    invoke-static {v4}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 263
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v21

    const/16 v20, 0x1

    add-int/lit8 v21, v21, 0x1

    add-int v18, v18, v21

    .line 264
    invoke-static {v4}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 265
    const/16 v21, 0x4

    goto :goto_1

    :cond_6
    const/16 v21, 0x7

    :goto_1
    move/from16 v2, v21

    goto/16 :goto_4

    .line 266
    :cond_7
    invoke-static {v4}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 267
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v19

    .line 268
    const/16 v2, 0x9

    goto/16 :goto_4

    .line 270
    :cond_8
    const/16 v2, 0xd

    .line 272
    goto/16 :goto_4

    .line 255
    :pswitch_5
    sget v3, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    if-ne v4, v3, :cond_9

    .line 256
    const/16 v2, 0x8

    goto/16 :goto_4

    .line 258
    :cond_9
    const/16 v2, 0xd

    .line 260
    goto/16 :goto_4

    .line 242
    :pswitch_6
    invoke-static {v4}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 243
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int v18, v18, v3

    .line 244
    const/4 v2, 0x7

    .line 245
    goto/16 :goto_4

    .line 248
    :cond_a
    invoke-static {v4}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 249
    invoke-static {v4}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v3

    if-nez v3, :cond_b

    .line 250
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int v18, v18, v3

    .line 252
    :cond_b
    const/16 v2, 0xd

    .line 253
    goto/16 :goto_4

    .line 236
    :pswitch_7
    invoke-static {v4}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 237
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int v3, v19, v3

    add-int v18, v18, v3

    .line 239
    :cond_c
    const/16 v2, 0xd

    .line 240
    goto/16 :goto_4

    .line 226
    :pswitch_8
    invoke-static {v4}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 227
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    .line 228
    .end local v19    # "lastSeenVSCharCount":I
    .local v3, "lastSeenVSCharCount":I
    const/4 v2, 0x5

    .line 229
    goto :goto_2

    .line 230
    .end local v3    # "lastSeenVSCharCount":I
    .restart local v19    # "lastSeenVSCharCount":I
    :cond_d
    invoke-static {v4}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 231
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int v18, v18, v3

    .line 233
    :cond_e
    const/16 v2, 0xd

    .line 234
    goto/16 :goto_4

    .line 220
    :pswitch_9
    invoke-static {v4}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 221
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int v3, v19, v3

    add-int v18, v18, v3

    .line 223
    :cond_f
    const/16 v2, 0xd

    .line 224
    goto/16 :goto_4

    .line 208
    :pswitch_a
    invoke-static {v4}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 209
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    .line 210
    .end local v19    # "lastSeenVSCharCount":I
    .restart local v3    # "lastSeenVSCharCount":I
    const/4 v2, 0x3

    .line 211
    nop

    .line 300
    .end local v3    # "lastSeenVSCharCount":I
    .end local v4    # "codePoint":I
    .restart local v19    # "lastSeenVSCharCount":I
    :goto_2
    move/from16 v19, v3

    goto :goto_4

    .line 214
    .restart local v4    # "codePoint":I
    :cond_10
    invoke-static {v4}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 215
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int v18, v18, v3

    .line 217
    :cond_11
    const/16 v2, 0xd

    .line 218
    goto :goto_4

    .line 186
    :pswitch_b
    const/16 v3, 0xd

    if-ne v4, v3, :cond_12

    .line 187
    add-int/lit8 v18, v18, 0x1

    .line 189
    :cond_12
    const/16 v2, 0xd

    .line 190
    goto :goto_4

    .line 166
    :pswitch_c
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    .line 167
    .end local v18    # "deleteCharCount":I
    .local v3, "deleteCharCount":I
    move/from16 v25, v3

    const/16 v3, 0xa

    .line 167
    .end local v3    # "deleteCharCount":I
    .local v25, "deleteCharCount":I
    if-ne v4, v3, :cond_13

    .line 168
    const/4 v2, 0x1

    .line 300
    .end local v4    # "codePoint":I
    .end local v25    # "deleteCharCount":I
    .restart local v18    # "deleteCharCount":I
    :goto_3
    move/from16 v18, v25

    goto :goto_4

    .line 169
    .end local v18    # "deleteCharCount":I
    .restart local v4    # "codePoint":I
    .restart local v25    # "deleteCharCount":I
    :cond_13
    invoke-static {v4}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 170
    const/4 v2, 0x6

    goto :goto_3

    .line 171
    :cond_14
    invoke-static {v4}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 172
    const/16 v2, 0xa

    goto :goto_3

    .line 173
    :cond_15
    invoke-static {v4}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 174
    const/4 v2, 0x4

    goto :goto_3

    .line 175
    :cond_16
    sget v3, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    if-ne v4, v3, :cond_17

    .line 176
    const/4 v2, 0x2

    goto :goto_3

    .line 177
    :cond_17
    invoke-static {v4}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 178
    const/4 v2, 0x7

    goto :goto_3

    .line 179
    :cond_18
    sget v3, Landroid/text/Emoji;->CANCEL_TAG:I

    if-ne v4, v3, :cond_19

    .line 180
    const/16 v2, 0xc

    goto :goto_3

    .line 182
    :cond_19
    const/16 v2, 0xd

    .line 184
    goto :goto_3

    .line 300
    .end local v4    # "codePoint":I
    .end local v25    # "deleteCharCount":I
    .restart local v18    # "deleteCharCount":I
    :goto_4
    if-lez v17, :cond_1b

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1a

    goto :goto_5

    .line 159
    :cond_1a
    move/from16 v3, v22

    move/from16 v4, v23

    goto/16 :goto_0

    .line 302
    :cond_1b
    :goto_5
    sub-int v3, v1, v18

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result v3

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 307
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 309
    .local v7, "len":I
    add-int/lit8 v0, v7, -0x1

    if-lt p1, v0, :cond_0

    .line 310
    return v7

    .line 313
    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p0

    move v2, p1

    move v3, v7

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result p1

    .line 316
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static isVariationSelector(I)Z
    .locals 1
    .param p0, "codepoint"    # I

    .line 88
    const/16 v0, 0x24

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 3
    .param p0, "caps"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p1, "autoText"    # Z

    .line 456
    const/4 v0, 0x1

    .line 457
    .local v0, "contentType":I
    sget-object v1, Landroid/text/method/BaseKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 465
    :pswitch_0
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    .line 462
    :pswitch_1
    or-int/lit16 v0, v0, 0x2000

    .line 463
    goto :goto_0

    .line 459
    :pswitch_2
    or-int/lit16 v0, v0, 0x1000

    .line 460
    nop

    .line 468
    :goto_0
    if-eqz p1, :cond_0

    .line 469
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 471
    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 71
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 83
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 477
    const/16 v0, 0x43

    if-eq p3, v0, :cond_1

    const/16 v0, 0x70

    if-eq p3, v0, :cond_0

    .line 485
    const/4 v0, 0x0

    goto :goto_0

    .line 482
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 483
    .local v0, "handled":Z
    goto :goto_0

    .line 479
    .end local v0    # "handled":Z
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 480
    .restart local v0    # "handled":Z
    nop

    .line 485
    :goto_0
    nop

    .line 489
    if-eqz v0, :cond_2

    .line 490
    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 491
    const/4 v1, 0x1

    return v1

    .line 494
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 502
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 503
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 508
    :cond_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 509
    .local v0, "selectionStart":I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 510
    .local v2, "selectionEnd":I
    if-ge v2, v0, :cond_1

    .line 511
    move v3, v2

    .line 512
    .local v3, "temp":I
    move v2, v0

    .line 513
    move v0, v3

    .line 516
    .end local v3    # "temp":I
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "text":Ljava/lang/CharSequence;
    if-nez v3, :cond_2

    .line 518
    return v1

    .line 521
    :cond_2
    invoke-interface {p2, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 522
    const/4 v1, 0x1

    return v1

    .line 505
    .end local v0    # "selectionStart":I
    .end local v2    # "selectionEnd":I
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_3
    :goto_0
    return v1
.end method
