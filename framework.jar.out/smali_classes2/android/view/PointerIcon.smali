.class public final Landroid/view/PointerIcon;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PointerIcon"

.field public static final TYPE_ALIAS:I = 0x3f2

.field public static final TYPE_ALL_SCROLL:I = 0x3f5

.field public static final TYPE_ARROW:I = 0x3e8

.field public static final TYPE_CELL:I = 0x3ee

.field public static final TYPE_CONTEXT_MENU:I = 0x3e9

.field public static final TYPE_COPY:I = 0x3f3

.field public static final TYPE_CROSSHAIR:I = 0x3ef

.field public static final TYPE_CUSTOM:I = -0x1

.field public static final TYPE_DEFAULT:I = 0x3e8

.field public static final TYPE_GRAB:I = 0x3fc

.field public static final TYPE_GRABBING:I = 0x3fd

.field public static final TYPE_HAND:I = 0x3ea

.field public static final TYPE_HELP:I = 0x3eb

.field public static final TYPE_HORIZONTAL_DOUBLE_ARROW:I = 0x3f6

.field public static final TYPE_NOT_SPECIFIED:I = 0x1

.field public static final TYPE_NO_DROP:I = 0x3f4

.field public static final TYPE_NULL:I = 0x0

.field private static final TYPE_OEM_FIRST:I = 0x2710

.field public static final TYPE_SPOT_ANCHOR:I = 0x7d2

.field public static final TYPE_SPOT_HOVER:I = 0x7d0

.field public static final TYPE_SPOT_TOUCH:I = 0x7d1

.field public static final TYPE_TEXT:I = 0x3f0

.field public static final TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x3f9

.field public static final TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x3f8

.field public static final TYPE_VERTICAL_DOUBLE_ARROW:I = 0x3f7

.field public static final TYPE_VERTICAL_TEXT:I = 0x3f1

.field public static final TYPE_WAIT:I = 0x3ec

.field public static final TYPE_ZOOM_IN:I = 0x3fa

.field public static final TYPE_ZOOM_OUT:I = 0x3fb

.field private static final gNullIcon:Landroid/view/PointerIcon;

.field private static final gSystemIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private static sUseLargeIcons:Z


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapFrames:[Landroid/graphics/Bitmap;

.field private mDurationPerFrame:I

.field private mHotSpotX:F

.field private mHotSpotY:F

.field private mSystemIconResourceId:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 144
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    sput-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    .line 146
    sput-boolean v1, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    .line 335
    new-instance v0, Landroid/view/PointerIcon$1;

    invoke-direct {v0}, Landroid/view/PointerIcon$1;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput p1, p0, Landroid/view/PointerIcon;->mType:I

    .line 160
    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/PointerIcon$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/view/PointerIcon$1;

    .line 47
    invoke-direct {p0, p1}, Landroid/view/PointerIcon;-><init>(I)V

    return-void
.end method

.method static synthetic access$102(Landroid/view/PointerIcon;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/PointerIcon;
    .param p1, "x1"    # I

    .line 47
    iput p1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    return p1
.end method

.method public static create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .line 262
    if-eqz p0, :cond_0

    .line 265
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    .line 267
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 268
    .local v0, "icon":Landroid/view/PointerIcon;
    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 269
    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 270
    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 271
    return-object v0

    .line 263
    .end local v0    # "icon":Landroid/view/PointerIcon;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bitmapDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .line 412
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 413
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 414
    .local v1, "scaledWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    .line 415
    .local v2, "scaledHeight":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 416
    return-object v0

    .line 419
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 420
    .local v3, "src":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 422
    .local v4, "dst":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 423
    .local v5, "scaled":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 424
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 425
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 426
    invoke-virtual {v6, v0, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 427
    return-object v5
.end method

.method public static getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 184
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public static getNullIcon()Landroid/view/PointerIcon;
    .locals 1

    .line 171
    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 198
    if-eqz p0, :cond_7

    .line 202
    if-nez p1, :cond_0

    .line 203
    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v0

    .line 206
    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/PointerIcon;

    .line 207
    .local v0, "icon":Landroid/view/PointerIcon;
    if-eqz v0, :cond_1

    .line 208
    return-object v0

    .line 211
    :cond_1
    invoke-static {p1}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v1

    .line 212
    .local v1, "typeIndex":I
    const/16 v2, 0x3e8

    if-nez v1, :cond_2

    .line 213
    invoke-static {v2}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v1

    .line 216
    :cond_2
    sget-boolean v3, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    if-eqz v3, :cond_3

    .line 217
    const v3, 0x103031b

    goto :goto_0

    :cond_3
    const v3, 0x1030323

    .line 218
    .local v3, "defStyle":I
    :goto_0
    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->Pointer:[I

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 221
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 222
    .local v6, "resourceId":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    if-ne v6, v5, :cond_5

    .line 225
    const-string v5, "PointerIcon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing theme resources for pointer icon type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-ne p1, v2, :cond_4

    sget-object v2, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    goto :goto_1

    :cond_4
    invoke-static {p0, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v2

    :goto_1
    return-object v2

    .line 229
    :cond_5
    new-instance v2, Landroid/view/PointerIcon;

    invoke-direct {v2, p1}, Landroid/view/PointerIcon;-><init>(I)V

    move-object v0, v2

    .line 230
    const/high16 v2, -0x1000000

    and-int/2addr v2, v6

    const/high16 v5, 0x1000000

    if-ne v2, v5, :cond_6

    .line 231
    iput v6, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    goto :goto_2

    .line 233
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, p0, v2, v6}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 235
    :goto_2
    sget-object v2, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 236
    return-object v0

    .line 199
    .end local v0    # "icon":Landroid/view/PointerIcon;
    .end local v1    # "typeIndex":I
    .end local v3    # "defStyle":I
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "resourceId":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSystemIconTypeIndex(I)I
    .locals 1
    .param p0, "type"    # I

    .line 515
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 567
    return v0

    .line 523
    :pswitch_0
    const/16 v0, 0xd

    return v0

    .line 521
    :pswitch_1
    const/16 v0, 0xf

    return v0

    .line 519
    :pswitch_2
    const/16 v0, 0xe

    return v0

    .line 565
    :pswitch_3
    const/16 v0, 0x8

    return v0

    .line 563
    :pswitch_4
    const/4 v0, 0x7

    return v0

    .line 561
    :pswitch_5
    const/16 v0, 0x17

    return v0

    .line 559
    :pswitch_6
    const/16 v0, 0x16

    return v0

    .line 556
    :pswitch_7
    const/16 v0, 0x11

    return v0

    .line 553
    :pswitch_8
    const/16 v0, 0x12

    return v0

    .line 551
    :pswitch_9
    const/16 v0, 0x13

    return v0

    .line 549
    :pswitch_a
    const/16 v0, 0xb

    return v0

    .line 545
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 547
    :pswitch_c
    const/16 v0, 0xc

    return v0

    .line 543
    :pswitch_d
    const/4 v0, 0x5

    return v0

    .line 541
    :pswitch_e
    return v0

    .line 539
    :pswitch_f
    const/16 v0, 0x14

    return v0

    .line 537
    :pswitch_10
    const/16 v0, 0x10

    return v0

    .line 535
    :pswitch_11
    const/4 v0, 0x6

    return v0

    .line 533
    :pswitch_12
    const/4 v0, 0x3

    return v0

    .line 531
    :pswitch_13
    const/16 v0, 0x15

    return v0

    .line 529
    :pswitch_14
    const/16 v0, 0xa

    return v0

    .line 525
    :pswitch_15
    const/16 v0, 0x9

    return v0

    .line 527
    :pswitch_16
    const/4 v0, 0x4

    return v0

    .line 517
    :pswitch_17
    const/4 v0, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3ee
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .line 296
    if-eqz p0, :cond_0

    .line 300
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 301
    .local v0, "icon":Landroid/view/PointerIcon;
    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 302
    return-object v0

    .line 297
    .end local v0    # "icon":Landroid/view/PointerIcon;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resources must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceId"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 431
    invoke-virtual/range {p2 .. p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v4, v0

    .line 436
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v0, "pointer-icon"

    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 438
    sget-object v0, Lcom/android/internal/R$styleable;->PointerIcon:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 440
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 441
    .local v6, "bitmapRes":I
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    .line 442
    .local v9, "hotSpotX":F
    const/4 v10, 0x2

    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 443
    .local v7, "hotSpotY":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    .end local v0    # "a":Landroid/content/res/TypedArray;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 448
    nop

    .line 447
    nop

    .line 450
    if-eqz v6, :cond_7

    .line 455
    if-nez v2, :cond_0

    .line 456
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 456
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 458
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v2, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 460
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    instance-of v10, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v10, :cond_5

    .line 462
    move-object v10, v0

    check-cast v10, Landroid/graphics/drawable/AnimationDrawable;

    .line 463
    .local v10, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v11

    .line 464
    .local v11, "frames":I
    invoke-virtual {v10, v5}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 465
    if-ne v11, v8, :cond_1

    .line 466
    const-string v5, "PointerIcon"

    const-string v8, "Animation icon with single frame -- simply treating the first frame as a normal bitmap icon."

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    move-object/from16 v18, v0

    goto :goto_2

    .line 470
    :cond_1
    invoke-virtual {v10, v5}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    iput v5, v1, Landroid/view/PointerIcon;->mDurationPerFrame:I

    .line 471
    add-int/lit8 v5, v11, -0x1

    new-array v5, v5, [Landroid/graphics/Bitmap;

    iput-object v5, v1, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    .line 472
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 473
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 474
    .local v12, "height":I
    nop

    .line 474
    .local v8, "i":I
    :goto_1
    if-ge v8, v11, :cond_4

    .line 475
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 476
    .local v13, "drawableFrame":Landroid/graphics/drawable/Drawable;
    instance-of v14, v13, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v14, :cond_3

    .line 480
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    if-ne v14, v5, :cond_2

    .line 481
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    if-ne v14, v12, :cond_2

    .line 486
    move-object v14, v13

    check-cast v14, Landroid/graphics/drawable/BitmapDrawable;

    .line 487
    .local v14, "bitmapDrawableFrame":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v15, v1, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    add-int/lit8 v16, v8, -0x1

    invoke-direct {v1, v14}, Landroid/view/PointerIcon;->getBitmapFromDrawable(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object v17

    aput-object v17, v15, v16

    .line 474
    .end local v13    # "drawableFrame":Landroid/graphics/drawable/Drawable;
    .end local v14    # "bitmapDrawableFrame":Landroid/graphics/drawable/BitmapDrawable;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 482
    .restart local v13    # "drawableFrame":Landroid/graphics/drawable/Drawable;
    :cond_2
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string v0, "The bitmap size of "

    .line 482
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v18, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-th frame is different. All frames should have the exact same size and share the same hotspot."

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 477
    .end local v18    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v18, v0

    .line 477
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v14, "Frame of an animated pointer icon must refer to a bitmap drawable."

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    .end local v5    # "width":I
    .end local v8    # "i":I
    .end local v10    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v11    # "frames":I
    .end local v12    # "height":I
    .end local v13    # "drawableFrame":Landroid/graphics/drawable/Drawable;
    .end local v18    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object/from16 v18, v0

    :goto_2
    move-object/from16 v0, v18

    :cond_5
    instance-of v5, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_6

    .line 496
    move-object v5, v0

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 497
    .local v5, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v1, v5}, Landroid/view/PointerIcon;->getBitmapFromDrawable(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 498
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v8, v9, v7}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    .line 500
    iput-object v8, v1, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 501
    iput v9, v1, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 502
    iput v7, v1, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 503
    return-void

    .line 492
    .end local v5    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "<pointer-icon> bitmap attribute must refer to a bitmap drawable."

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 451
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "<pointer-icon> is missing bitmap attribute."

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    .end local v6    # "bitmapRes":I
    .end local v7    # "hotSpotY":F
    .end local v9    # "hotSpotX":F
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Exception parsing pointer icon resource."

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0
.end method

.method public static setUseLargeIcons(Z)V
    .locals 1
    .param p0, "use"    # Z

    .line 244
    sput-boolean p0, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    .line 245
    sget-object v0, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 246
    return-void
.end method

.method private static validateHotSpot(Landroid/graphics/Bitmap;FF)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .line 506
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-gez v1, :cond_1

    .line 509
    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    .line 512
    return-void

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 380
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 381
    return v0

    .line 384
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    instance-of v2, p1, Landroid/view/PointerIcon;

    if-nez v2, :cond_1

    goto :goto_1

    .line 388
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/PointerIcon;

    .line 389
    .local v2, "otherIcon":Landroid/view/PointerIcon;
    iget v3, p0, Landroid/view/PointerIcon;->mType:I

    iget v4, v2, Landroid/view/PointerIcon;->mType:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iget v4, v2, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 394
    :cond_2
    iget v3, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v2, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    iget v4, v2, Landroid/view/PointerIcon;->mHotSpotX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    iget v4, v2, Landroid/view/PointerIcon;->mHotSpotY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 397
    :cond_3
    return v1

    .line 400
    :cond_4
    return v0

    .line 391
    :cond_5
    :goto_0
    return v1

    .line 385
    .end local v2    # "otherIcon":Landroid/view/PointerIcon;
    :cond_6
    :goto_1
    return v1
.end method

.method public getType()I
    .locals 1

    .line 332
    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    return v0
.end method

.method public load(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 316
    if-eqz p1, :cond_2

    .line 320
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance v0, Landroid/view/PointerIcon;

    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 325
    .local v0, "result":Landroid/view/PointerIcon;
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iput v1, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-direct {v0, p1, v1, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 327
    return-object v0

    .line 321
    .end local v0    # "result":Landroid/view/PointerIcon;
    :cond_1
    :goto_0
    return-object p0

    .line 317
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 366
    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    if-eqz v0, :cond_0

    .line 369
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 372
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 373
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 376
    :cond_0
    return-void
.end method
