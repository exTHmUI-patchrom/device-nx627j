.class final Landroid/graphics/drawable/InsetDrawable$InsetState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "InsetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/InsetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InsetState"
.end annotation


# instance fields
.field mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

.field mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

.field mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

.field mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

.field private mThemeAttrs:[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "orig"    # Landroid/graphics/drawable/InsetDrawable$InsetState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 324
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 326
    if-eqz p1, :cond_0

    .line 327
    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 328
    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 329
    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 330
    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 332
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    if-eq v0, v1, :cond_1

    .line 333
    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;->applyDensityScaling(II)V

    goto :goto_0

    .line 336
    :cond_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 337
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 338
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 339
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 341
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 315
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/InsetDrawable$InsetState;[I)[I
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/InsetDrawable$InsetState;
    .param p1, "x1"    # [I

    .line 315
    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    return-object p1
.end method

.method private applyDensityScaling(II)V
    .locals 1
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 358
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->scaleFromDensity(II)V

    .line 359
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->scaleFromDensity(II)V

    .line 360
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->scaleFromDensity(II)V

    .line 361
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->scaleFromDensity(II)V

    .line 362
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 369
    if-eqz p1, :cond_2

    .line 370
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 371
    .local v0, "densityDpi":I
    if-nez v0, :cond_0

    const/16 v1, 0xa0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 372
    .local v1, "density":I
    :goto_0
    iget v2, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    if-eq v1, v2, :cond_1

    .line 373
    new-instance v2, Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-direct {v2, p0, p1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    .local v2, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    goto :goto_1

    .line 375
    .end local v2    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    :cond_1
    nop

    .end local v0    # "densityDpi":I
    .end local v1    # "density":I
    move-object v2, p0

    .restart local v2    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    :goto_1
    move-object v0, v2

    .line 377
    .end local v2    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    .local v0, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    goto :goto_2

    .line 378
    .end local v0    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    :cond_2
    move-object v0, p0

    .line 381
    .restart local v0    # "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    :goto_2
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable$1;)V

    return-object v1
.end method

.method onDensityChanged(II)V
    .locals 0
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 345
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->onDensityChanged(II)V

    .line 347
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetState;->applyDensityScaling(II)V

    .line 348
    return-void
.end method
