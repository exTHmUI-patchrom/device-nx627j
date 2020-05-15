.class public Landroid/app/LauncherActivity$IconResizer;
.super Ljava/lang/Object;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconResizer"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mIconHeight:I

.field private mIconWidth:I

.field private final mOldBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/app/LauncherActivity;


# direct methods
.method public constructor <init>(Landroid/app/LauncherActivity;)V
    .locals 4
    .param p1, "this$0"    # Landroid/app/LauncherActivity;

    .line 256
    iput-object p1, p0, Landroid/app/LauncherActivity$IconResizer;->this$0:Landroid/app/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    .line 251
    iput v0, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    .line 253
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    .line 254
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 257
    iget-object v0, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 260
    invoke-virtual {p1}, Landroid/app/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 261
    .local v0, "resources":Landroid/content/res/Resources;
    const/high16 v1, 0x1050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    iput v1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    .line 263
    return-void
.end method


# virtual methods
.method public createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 278
    iget v0, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    .line 279
    .local v0, "width":I
    iget v1, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    .line 281
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 282
    .local v2, "iconWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 284
    .local v3, "iconHeight":I
    instance-of v4, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v4, :cond_0

    .line 285
    move-object v4, p1

    check-cast v4, Landroid/graphics/drawable/PaintDrawable;

    .line 286
    .local v4, "painter":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 287
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 290
    .end local v4    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    if-lez v0, :cond_6

    if-lez v1, :cond_6

    .line 291
    const/4 v4, 0x0

    if-lt v0, v2, :cond_2

    if-ge v1, v3, :cond_1

    goto :goto_0

    .line 318
    :cond_1
    if-ge v2, v0, :cond_6

    if-ge v3, v1, :cond_6

    .line 319
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 320
    .local v5, "c":Landroid/graphics/Bitmap$Config;
    iget v6, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    iget v7, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    invoke-static {v6, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 321
    .local v6, "thumb":Landroid/graphics/Bitmap;
    iget-object v7, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 322
    .local v7, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 323
    iget-object v8, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 324
    sub-int v8, v0, v2

    div-int/lit8 v8, v8, 0x2

    .line 325
    .local v8, "x":I
    sub-int v9, v1, v3

    div-int/lit8 v9, v9, 0x2

    .line 326
    .local v9, "y":I
    add-int v10, v8, v2

    add-int v11, v9, v3

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 327
    invoke-virtual {p1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 328
    iget-object v10, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 329
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v11, p0, Landroid/app/LauncherActivity$IconResizer;->this$0:Landroid/app/LauncherActivity;

    invoke-virtual {v11}, Landroid/app/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v10, v11, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p1, v10

    .line 330
    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .end local v5    # "c":Landroid/graphics/Bitmap$Config;
    .end local v6    # "thumb":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "x":I
    .end local v9    # "y":I
    goto :goto_3

    .line 292
    :cond_2
    :goto_0
    int-to-float v5, v2

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 294
    .local v5, "ratio":F
    if-le v2, v3, :cond_3

    .line 295
    int-to-float v6, v0

    div-float/2addr v6, v5

    float-to-int v1, v6

    goto :goto_1

    .line 296
    :cond_3
    if-le v3, v2, :cond_4

    .line 297
    int-to-float v6, v1

    mul-float/2addr v6, v5

    float-to-int v0, v6

    .line 300
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 301
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_5
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 302
    .local v6, "c":Landroid/graphics/Bitmap$Config;
    :goto_2
    iget v7, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    iget v8, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    invoke-static {v7, v8, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 303
    .local v7, "thumb":Landroid/graphics/Bitmap;
    iget-object v8, p0, Landroid/app/LauncherActivity$IconResizer;->mCanvas:Landroid/graphics/Canvas;

    .line 304
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 310
    iget-object v9, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 311
    iget v9, p0, Landroid/app/LauncherActivity$IconResizer;->mIconWidth:I

    sub-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    .line 312
    .local v9, "x":I
    iget v10, p0, Landroid/app/LauncherActivity$IconResizer;->mIconHeight:I

    sub-int/2addr v10, v1

    div-int/lit8 v10, v10, 0x2

    .line 313
    .local v10, "y":I
    add-int v11, v9, v0

    add-int v12, v10, v1

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 314
    invoke-virtual {p1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 315
    iget-object v11, p0, Landroid/app/LauncherActivity$IconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 316
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v12, p0, Landroid/app/LauncherActivity$IconResizer;->this$0:Landroid/app/LauncherActivity;

    invoke-virtual {v12}, Landroid/app/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v11, v12, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p1, v11

    .line 317
    invoke-virtual {v8, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 318
    .end local v5    # "ratio":F
    .end local v6    # "c":Landroid/graphics/Bitmap$Config;
    .end local v7    # "thumb":Landroid/graphics/Bitmap;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "x":I
    .end local v10    # "y":I
    nop

    .line 334
    :cond_6
    :goto_3
    return-object p1
.end method
