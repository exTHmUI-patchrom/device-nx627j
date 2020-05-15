.class public abstract Landroid/text/method/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source "MetaKeyKeyListener.java"


# static fields
.field private static final ALT:Ljava/lang/Object;

.field private static final CAP:Ljava/lang/Object;

.field private static final LOCKED:I = 0x4000011

.field private static final LOCKED_RETURN_VALUE:I = 0x2

.field public static final META_ALT_LOCKED:I = 0x200

.field private static final META_ALT_MASK:J = 0x2020200000202L

.field public static final META_ALT_ON:I = 0x2

.field private static final META_ALT_PRESSED:J = 0x20000000000L

.field private static final META_ALT_RELEASED:J = 0x2000000000000L

.field private static final META_ALT_USED:J = 0x200000000L

.field public static final META_CAP_LOCKED:I = 0x100

.field private static final META_CAP_PRESSED:J = 0x10000000000L

.field private static final META_CAP_RELEASED:J = 0x1000000000000L

.field private static final META_CAP_USED:J = 0x100000000L

.field public static final META_SELECTING:I = 0x800

.field private static final META_SHIFT_MASK:J = 0x1010100000101L

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SYM_LOCKED:I = 0x400

.field private static final META_SYM_MASK:J = 0x4040400000404L

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYM_PRESSED:J = 0x40000000000L

.field private static final META_SYM_RELEASED:J = 0x4000000000000L

.field private static final META_SYM_USED:J = 0x400000000L

.field private static final PRESSED:I = 0x1000011

.field private static final PRESSED_RETURN_VALUE:I = 0x1

.field private static final RELEASED:I = 0x2000011

.field private static final SELECTING:Ljava/lang/Object;

.field private static final SYM:Ljava/lang/Object;

.field private static final USED:I = 0x3000011


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    .line 134
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 135
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;

    .line 296
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 298
    .local v0, "current":I
    const v1, 0x1000011

    if-ne v0, v1, :cond_0

    .line 299
    const v1, 0x3000011

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 300
    :cond_0
    const v1, 0x2000011

    if-ne v0, v1, :cond_1

    .line 301
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 302
    :cond_1
    :goto_0
    return-void
.end method

.method public static adjustMetaAfterKeypress(J)J
    .locals 6
    .param p0, "state"    # J

    .line 518
    const-wide v0, 0x10000000000L

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide v4, -0x1010100000102L

    if-eqz v0, :cond_0

    .line 519
    and-long v0, p0, v4

    const-wide/16 v4, 0x1

    or-long/2addr v0, v4

    const-wide v4, 0x100000000L

    or-long p0, v0, v4

    goto :goto_0

    .line 520
    :cond_0
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 521
    and-long/2addr p0, v4

    .line 524
    :cond_1
    :goto_0
    const-wide v0, 0x20000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    const-wide v4, -0x2020200000203L

    if-eqz v0, :cond_2

    .line 525
    and-long v0, p0, v4

    const-wide/16 v4, 0x2

    or-long/2addr v0, v4

    const-wide v4, 0x200000000L

    or-long p0, v0, v4

    goto :goto_1

    .line 526
    :cond_2
    const-wide/high16 v0, 0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 527
    and-long/2addr p0, v4

    .line 530
    :cond_3
    :goto_1
    const-wide v0, 0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    const-wide v4, -0x4040400000405L

    if-eqz v0, :cond_4

    .line 531
    and-long v0, p0, v4

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    const-wide v2, 0x400000000L

    or-long p0, v0, v2

    goto :goto_2

    .line 532
    :cond_4
    const-wide/high16 v0, 0x4000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 533
    and-long/2addr p0, v4

    .line 535
    :cond_5
    :goto_2
    return-wide p0
.end method

.method public static adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "content"    # Landroid/text/Spannable;

    .line 273
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 274
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 275
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method public static clearMetaKeyState(Landroid/text/Editable;I)V
    .locals 1
    .param p0, "content"    # Landroid/text/Editable;
    .param p1, "states"    # I

    .line 422
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 423
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 424
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 425
    :cond_2
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_3

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 426
    :cond_3
    return-void
.end method

.method private static getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # Ljava/lang/Object;
    .param p2, "on"    # I
    .param p3, "lock"    # I

    .line 251
    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 252
    return v1

    .line 255
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 256
    .local v0, "sp":Landroid/text/Spanned;
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 258
    .local v2, "flag":I
    const v3, 0x4000011

    if-ne v2, v3, :cond_1

    .line 259
    return p3

    .line 260
    :cond_1
    if-eqz v2, :cond_2

    .line 261
    return p2

    .line 263
    :cond_2
    return v1
.end method

.method public static final getMetaState(J)I
    .locals 5
    .param p0, "state"    # J

    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, "result":I
    const-wide/16 v1, 0x100

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 461
    or-int/lit16 v0, v0, 0x100

    goto :goto_0

    .line 462
    :cond_0
    const-wide/16 v1, 0x1

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 463
    or-int/lit8 v0, v0, 0x1

    .line 466
    :cond_1
    :goto_0
    const-wide/16 v1, 0x200

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 467
    or-int/lit16 v0, v0, 0x200

    goto :goto_1

    .line 468
    :cond_2
    const-wide/16 v1, 0x2

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 469
    or-int/lit8 v0, v0, 0x2

    .line 472
    :cond_3
    :goto_1
    const-wide/16 v1, 0x400

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 473
    or-int/lit16 v0, v0, 0x400

    goto :goto_2

    .line 474
    :cond_4
    const-wide/16 v1, 0x4

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    .line 475
    or-int/lit8 v0, v0, 0x4

    .line 478
    :cond_5
    :goto_2
    return v0
.end method

.method public static final getMetaState(JI)I
    .locals 8
    .param p0, "state"    # J
    .param p2, "meta"    # I

    .line 490
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_0

    .line 507
    return v3

    .line 497
    :pswitch_0
    const-wide/16 v6, 0x200

    and-long/2addr v6, p0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_0

    return v2

    .line 498
    :cond_0
    const-wide/16 v6, 0x2

    and-long/2addr v6, p0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    return v1

    .line 499
    :cond_1
    return v3

    .line 492
    :pswitch_1
    const-wide/16 v6, 0x100

    and-long/2addr v6, p0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_2

    return v2

    .line 493
    :cond_2
    const-wide/16 v6, 0x1

    and-long/2addr v6, p0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    return v1

    .line 494
    :cond_3
    return v3

    .line 502
    :cond_4
    const-wide/16 v6, 0x400

    and-long/2addr v6, p0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_5

    return v2

    .line 503
    :cond_5
    const-wide/16 v6, 0x4

    and-long/2addr v6, p0

    cmp-long v0, v6, v4

    if-eqz v0, :cond_6

    return v1

    .line 504
    :cond_6
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 160
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 161
    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 162
    const/4 v2, 0x4

    const/16 v3, 0x400

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    .line 163
    const/16 v2, 0x800

    invoke-static {p0, v1, v2, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    .line 160
    return v0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # I

    .line 200
    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x800

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 214
    const/4 v0, 0x0

    return v0

    .line 205
    :pswitch_0
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    return v0

    .line 202
    :pswitch_1
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    return v0

    .line 211
    :cond_0
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    return v0

    .line 208
    :cond_1
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "meta"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 232
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 233
    .local v0, "metaState":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 235
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v1

    or-int/2addr v0, v1

    .line 237
    :cond_0
    const/16 v1, 0x800

    if-ne v1, p1, :cond_2

    .line 240
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_1

    .line 242
    return v2

    .line 244
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 246
    :cond_2
    int-to-long v1, v0

    invoke-static {v1, v2, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(JI)I

    move-result v1

    return v1
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 181
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 182
    .local v0, "metaState":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 184
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v1

    or-int/2addr v0, v1

    .line 186
    :cond_0
    return v0
.end method

.method public static handleKeyDown(JILandroid/view/KeyEvent;)J
    .locals 16
    .param p0, "state"    # J
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    move/from16 v0, p2

    .line 542
    const/16 v1, 0x3b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 547
    :cond_0
    const/16 v1, 0x39

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 553
    :cond_1
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_2

    .line 554
    const/4 v4, 0x4

    const-wide v5, 0x4040400000404L

    const-wide/16 v7, 0x400

    const-wide v9, 0x40000000000L

    const-wide/high16 v11, 0x4000000000000L

    const-wide v13, 0x400000000L

    move-wide/from16 v2, p0

    invoke-static/range {v2 .. v14}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v1

    return-wide v1

    .line 557
    :cond_2
    return-wide p0

    .line 549
    :cond_3
    :goto_0
    const/4 v5, 0x2

    const-wide v6, 0x2020200000202L

    const-wide/16 v8, 0x200

    const-wide v10, 0x20000000000L

    const-wide/high16 v12, 0x2000000000000L

    const-wide v14, 0x200000000L

    move-wide/from16 v3, p0

    invoke-static/range {v3 .. v15}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v3

    return-wide v3

    .line 543
    :cond_4
    :goto_1
    const/4 v5, 0x1

    const-wide v6, 0x1010100000101L

    const-wide/16 v8, 0x100

    const-wide v10, 0x10000000000L

    const-wide/high16 v12, 0x1000000000000L

    const-wide v14, 0x100000000L

    move-wide/from16 v3, p0

    invoke-static/range {v3 .. v15}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v3

    return-wide v3
.end method

.method public static handleKeyUp(JILandroid/view/KeyEvent;)J
    .locals 15
    .param p0, "state"    # J
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    move/from16 v0, p2

    .line 580
    const/16 v1, 0x3b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 585
    :cond_0
    const/16 v1, 0x39

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 591
    :cond_1
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_2

    .line 592
    const/4 v4, 0x4

    const-wide v5, 0x4040400000404L

    const-wide v7, 0x40000000000L

    const-wide/high16 v9, 0x4000000000000L

    const-wide v11, 0x400000000L

    move-wide v2, p0

    move-object/from16 v13, p3

    invoke-static/range {v2 .. v13}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide v1

    return-wide v1

    .line 595
    :cond_2
    return-wide p0

    .line 587
    :cond_3
    :goto_0
    const/4 v5, 0x2

    const-wide v6, 0x2020200000202L

    const-wide v8, 0x20000000000L

    const-wide/high16 v10, 0x2000000000000L

    const-wide v12, 0x200000000L

    move-wide v3, p0

    move-object/from16 v14, p3

    invoke-static/range {v3 .. v14}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide v3

    return-wide v3

    .line 581
    :cond_4
    :goto_1
    const/4 v5, 0x1

    const-wide v6, 0x1010100000101L

    const-wide v8, 0x10000000000L

    const-wide/high16 v10, 0x1000000000000L

    const-wide v12, 0x100000000L

    move-wide v3, p0

    move-object/from16 v14, p3

    invoke-static/range {v3 .. v14}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide v3

    return-wide v3
.end method

.method public static isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "what"    # Ljava/lang/Object;

    .line 283
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "what"    # Ljava/lang/Object;

    .line 292
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static press(JIJJJJJ)J
    .locals 13
    .param p0, "state"    # J
    .param p2, "what"    # I
    .param p3, "mask"    # J
    .param p5, "locked"    # J
    .param p7, "pressed"    # J
    .param p9, "released"    # J
    .param p11, "used"    # J

    move v2, p2

    move-wide/from16 v3, p3

    .line 562
    and-long v5, p0, p7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    goto :goto_1

    .line 564
    :cond_0
    and-long v9, p0, p9

    cmp-long v9, v9, v7

    if-eqz v9, :cond_1

    .line 565
    not-long v7, v3

    and-long/2addr v7, p0

    int-to-long v9, v2

    or-long/2addr v7, v9

    or-long v0, v7, p5

    .end local p0    # "state":J
    .local v0, "state":J
    :goto_0
    goto :goto_2

    .line 566
    .end local v0    # "state":J
    .restart local p0    # "state":J
    :cond_1
    and-long v11, p0, p11

    cmp-long v11, v11, v7

    if-eqz v11, :cond_2

    .line 573
    :goto_1
    move-wide v0, p0

    goto :goto_2

    .line 568
    :cond_2
    and-long v11, p0, p5

    cmp-long v7, v11, v7

    if-eqz v7, :cond_3

    .line 569
    not-long v7, v3

    and-long v0, p0, v7

    goto :goto_0

    .line 571
    :cond_3
    int-to-long v7, v2

    or-long v7, v7, p7

    or-long v0, p0, v7

    goto :goto_0

    .line 573
    .end local p0    # "state":J
    .restart local v0    # "state":J
    :goto_2
    return-wide v0
.end method

.method private press(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 5
    .param p1, "content"    # Landroid/text/Editable;
    .param p2, "what"    # Ljava/lang/Object;

    .line 346
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 348
    .local v0, "state":I
    const v1, 0x1000011

    if-ne v0, v1, :cond_0

    .line 349
    goto :goto_0

    .line 350
    :cond_0
    const v2, 0x2000011

    const v3, 0x4000011

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    .line 351
    invoke-interface {p1, p2, v4, v4, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 352
    :cond_1
    const v2, 0x3000011

    if-ne v0, v2, :cond_2

    .line 353
    goto :goto_0

    .line 354
    :cond_2
    if-ne v0, v3, :cond_3

    .line 355
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    :cond_3
    invoke-interface {p1, p2, v4, v4, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 358
    :goto_0
    return-void
.end method

.method private static release(JIJJJJLandroid/view/KeyEvent;)J
    .locals 4
    .param p0, "state"    # J
    .param p2, "what"    # I
    .param p3, "mask"    # J
    .param p5, "pressed"    # J
    .param p7, "released"    # J
    .param p9, "used"    # J
    .param p11, "event"    # Landroid/view/KeyEvent;

    .line 600
    invoke-virtual {p11}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 610
    not-long v0, p3

    and-long/2addr p0, v0

    goto :goto_0

    .line 602
    :cond_0
    and-long v0, p0, p9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 603
    not-long v0, p3

    and-long/2addr p0, v0

    goto :goto_0

    .line 604
    :cond_1
    and-long v0, p0, p5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 605
    int-to-long v0, p2

    or-long/2addr v0, p7

    or-long/2addr p0, v0

    .line 613
    :cond_2
    :goto_0
    return-wide p0
.end method

.method private release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "content"    # Landroid/text/Editable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 401
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 403
    .local v0, "current":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 412
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 405
    :cond_0
    const v1, 0x3000011

    if-ne v0, v1, :cond_1

    .line 406
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 407
    :cond_1
    const v1, 0x1000011

    if-ne v0, v1, :cond_2

    .line 408
    const v1, 0x2000011

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 415
    :cond_2
    :goto_0
    return-void
.end method

.method private static resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2
    .param p0, "content"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;

    .line 316
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 318
    .local v0, "current":I
    const v1, 0x4000011

    if-ne v0, v1, :cond_0

    .line 319
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 320
    :cond_0
    return-void
.end method

.method public static resetLockedMeta(J)J
    .locals 4
    .param p0, "state"    # J

    .line 433
    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 434
    const-wide v0, -0x1010100000102L

    and-long/2addr p0, v0

    .line 436
    :cond_0
    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 437
    const-wide v0, -0x2020200000203L

    and-long/2addr p0, v0

    .line 439
    :cond_1
    const-wide/16 v0, 0x400

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 440
    const-wide v0, -0x4040400000405L

    and-long/2addr p0, v0

    .line 442
    :cond_2
    return-wide p0
.end method

.method protected static resetLockedMeta(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "content"    # Landroid/text/Spannable;

    .line 309
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 310
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 311
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 312
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 313
    return-void
.end method

.method public static resetMetaState(Landroid/text/Spannable;)V
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .line 145
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 146
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 147
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 148
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public static startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "content"    # Landroid/text/Spannable;

    .line 365
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const/4 v1, 0x0

    const v2, 0x1000011

    invoke-interface {p1, v0, v1, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 366
    return-void
.end method

.method public static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "content"    # Landroid/text/Spannable;

    .line 374
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 375
    return-void
.end method


# virtual methods
.method public clearMetaKeyState(JI)J
    .locals 5
    .param p1, "state"    # J
    .param p3, "which"    # I

    .line 623
    and-int/lit8 v0, p3, 0x1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x100

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 624
    const-wide v3, -0x1010100000102L

    and-long/2addr p1, v3

    .line 626
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x200

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 627
    const-wide v3, -0x2020200000203L

    and-long/2addr p1, v3

    .line 629
    :cond_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    const-wide/16 v3, 0x400

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 630
    const-wide v0, -0x4040400000405L

    and-long/2addr p1, v0

    .line 632
    :cond_2
    return-wide p1
.end method

.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "states"    # I

    .line 418
    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 419
    return-void
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 326
    const/4 v0, 0x1

    const/16 v1, 0x3b

    if-eq p3, v1, :cond_4

    const/16 v1, 0x3c

    if-ne p3, v1, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    const/16 v1, 0x39

    if-eq p3, v1, :cond_3

    const/16 v1, 0x3a

    if-eq p3, v1, :cond_3

    const/16 v1, 0x4e

    if-ne p3, v1, :cond_1

    goto :goto_0

    .line 337
    :cond_1
    const/16 v1, 0x3f

    if-ne p3, v1, :cond_2

    .line 338
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 339
    return v0

    .line 342
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 333
    :cond_3
    :goto_0
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 334
    return v0

    .line 327
    :cond_4
    :goto_1
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 328
    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 381
    const/4 v0, 0x1

    const/16 v1, 0x3b

    if-eq p3, v1, :cond_4

    const/16 v1, 0x3c

    if-ne p3, v1, :cond_0

    goto :goto_1

    .line 386
    :cond_0
    const/16 v1, 0x39

    if-eq p3, v1, :cond_3

    const/16 v1, 0x3a

    if-eq p3, v1, :cond_3

    const/16 v1, 0x4e

    if-ne p3, v1, :cond_1

    goto :goto_0

    .line 392
    :cond_1
    const/16 v1, 0x3f

    if-ne p3, v1, :cond_2

    .line 393
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 394
    return v0

    .line 397
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 388
    :cond_3
    :goto_0
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 389
    return v0

    .line 382
    :cond_4
    :goto_1
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 383
    return v0
.end method
