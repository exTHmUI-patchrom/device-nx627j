.class public final Landroid/view/accessibility/CaptioningManager$CaptionStyle;
.super Ljava/lang/Object;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptionStyle"
.end annotation


# static fields
.field private static final BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final COLOR_NONE_OPAQUE:I = 0xff

.field public static final COLOR_UNSPECIFIED:I = 0xffffff

.field public static final DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final EDGE_TYPE_DEPRESSED:I = 0x4

.field public static final EDGE_TYPE_DROP_SHADOW:I = 0x2

.field public static final EDGE_TYPE_NONE:I = 0x0

.field public static final EDGE_TYPE_OUTLINE:I = 0x1

.field public static final EDGE_TYPE_RAISED:I = 0x3

.field public static final EDGE_TYPE_UNSPECIFIED:I = -0x1

.field public static final PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final PRESET_CUSTOM:I = -0x1

.field private static final UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;


# instance fields
.field public final backgroundColor:I

.field public final edgeColor:I

.field public final edgeType:I

.field public final foregroundColor:I

.field private final mHasBackgroundColor:Z

.field private final mHasEdgeColor:Z

.field private final mHasEdgeType:Z

.field private final mHasForegroundColor:Z

.field private final mHasWindowColor:Z

.field private mParsedTypeface:Landroid/graphics/Typeface;

.field public final mRawTypeface:Ljava/lang/String;

.field public final windowColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 497
    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    const/high16 v4, -0x1000000

    const/16 v5, 0xff

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 499
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/high16 v9, -0x1000000

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/high16 v12, -0x1000000

    const/16 v13, 0xff

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 501
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/16 v2, -0x100

    const/high16 v3, -0x1000000

    const/4 v4, 0x0

    const/high16 v5, -0x1000000

    const/16 v6, 0xff

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 503
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/16 v9, -0x100

    const v10, -0xffff01

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 505
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const v2, 0xffffff

    const v3, 0xffffff

    const/4 v4, -0x1

    const v5, 0xffffff

    const v6, 0xffffff

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 510
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 514
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 515
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 516
    return-void
.end method

.method private constructor <init>(IIIIILjava/lang/String;)V
    .locals 3
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "edgeType"    # I
    .param p4, "edgeColor"    # I
    .param p5, "windowColor"    # I
    .param p6, "rawTypeface"    # Ljava/lang/String;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    .line 357
    invoke-static {p2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    .line 358
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    .line 359
    invoke-static {p4}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    .line 360
    invoke-static {p5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    .line 364
    iget-boolean v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    if-eqz v2, :cond_1

    move v1, p1

    nop

    :cond_1
    iput v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 365
    iget-boolean v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    const/high16 v2, -0x1000000

    if-eqz v1, :cond_2

    move v1, p2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 366
    iget-boolean v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    if-eqz v1, :cond_3

    move v0, p3

    nop

    :cond_3
    iput v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 367
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    if-eqz v0, :cond_4

    move v2, p4

    nop

    :cond_4
    iput v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 368
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    if-eqz v0, :cond_5

    move v0, p5

    goto :goto_2

    :cond_5
    const/16 v0, 0xff

    :goto_2
    iput v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 370
    iput-object p6, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public static getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 15
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 475
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 476
    .local v0, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    const-string v1, "accessibility_captioning_foreground_color"

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 478
    .local v1, "foregroundColor":I
    const-string v2, "accessibility_captioning_background_color"

    iget v3, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 480
    .local v2, "backgroundColor":I
    const-string v3, "accessibility_captioning_edge_type"

    iget v4, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-static {p0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 482
    .local v10, "edgeType":I
    const-string v3, "accessibility_captioning_edge_color"

    iget v4, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-static {p0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 484
    .local v11, "edgeColor":I
    const-string v3, "accessibility_captioning_window_color"

    iget v4, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-static {p0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 487
    .local v12, "windowColor":I
    const-string v3, "accessibility_captioning_typeface"

    invoke-static {p0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "rawTypeface":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 489
    iget-object v3, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 492
    .end local v3    # "rawTypeface":Ljava/lang/String;
    .local v13, "rawTypeface":Ljava/lang/String;
    :cond_0
    move-object v13, v3

    new-instance v14, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-object v3, v14

    move v4, v1

    move v5, v2

    move v6, v10

    move v7, v11

    move v8, v12

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    return-object v14
.end method

.method public static hasColor(I)Z
    .locals 1
    .param p0, "packedColor"    # I

    .line 384
    ushr-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_1

    const v0, 0xffff00

    and-int/2addr v0, p0

    if-nez v0, :cond_0

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


# virtual methods
.method public applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 8
    .param p1, "overlay"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 397
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_0

    .line 399
    .local v2, "newForegroundColor":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    :goto_2
    move v3, v0

    goto :goto_3

    :cond_1
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_2

    .line 401
    .local v3, "newBackgroundColor":I
    :goto_3
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    :goto_4
    move v4, v0

    goto :goto_5

    :cond_2
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_4

    .line 403
    .local v4, "newEdgeType":I
    :goto_5
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 404
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    :goto_6
    move v5, v0

    goto :goto_7

    :cond_3
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_6

    .line 405
    .local v5, "newEdgeColor":I
    :goto_7
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 406
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    :goto_8
    move v6, v0

    goto :goto_9

    :cond_4
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    goto :goto_8

    .line 407
    .local v6, "newWindowColor":I
    :goto_9
    iget-object v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 408
    iget-object v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    :goto_a
    move-object v7, v0

    goto :goto_b

    :cond_5
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    goto :goto_a

    .line 409
    .local v7, "newRawTypeface":Ljava/lang/String;
    :goto_b
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2

    .line 464
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    .line 467
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public hasBackgroundColor()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    return v0
.end method

.method public hasEdgeColor()Z
    .locals 1

    .line 446
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    return v0
.end method

.method public hasEdgeType()Z
    .locals 1

    .line 437
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    return v0
.end method

.method public hasForegroundColor()Z
    .locals 1

    .line 428
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    return v0
.end method

.method public hasWindowColor()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    return v0
.end method
