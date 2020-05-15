.class public final Landroid/util/LauncherIcons;
.super Ljava/lang/Object;
.source "LauncherIcons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/LauncherIcons$ShadowDrawable;
    }
.end annotation


# static fields
.field private static final AMBIENT_SHADOW_ALPHA:I = 0x1e

.field private static final ICON_SIZE_BLUR_FACTOR:F = 0.010416667f

.field private static final ICON_SIZE_KEY_SHADOW_DELTA_FACTOR:F = 0.020833334f

.field private static final KEY_SHADOW_ALPHA:I = 0x3d


# instance fields
.field private final mIconSize:I

.field private final mRes:Landroid/content/res/Resources;

.field private final mShadowCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/util/LauncherIcons;->mRes:Landroid/content/res/Resources;

    .line 50
    iget-object v0, p0, Landroid/util/LauncherIcons;->mRes:Landroid/content/res/Resources;

    const/high16 v1, 0x1050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/util/LauncherIcons;->mIconSize:I

    .line 51
    return-void
.end method

.method private getShadowBitmap(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "d"    # Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 62
    iget v0, p0, Landroid/util/LauncherIcons;->mIconSize:I

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 63
    .local v0, "shadowSize":I
    iget-object v1, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v2, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 65
    .local v2, "shadow":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 66
    monitor-exit v1

    return-object v2

    .line 68
    .end local v2    # "shadow":Landroid/graphics/Bitmap;
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 72
    const v2, 0x3c2aaaab

    int-to-float v3, v0

    mul-float/2addr v2, v3

    .line 73
    .local v2, "blur":F
    const v3, 0x3caaaaab

    int-to-float v4, v0

    mul-float/2addr v3, v4

    .line 75
    .local v3, "keyShadowDistance":F
    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v5, v2

    add-float/2addr v4, v6

    add-float/2addr v4, v3

    float-to-int v4, v4

    .line 76
    .local v4, "bitmapSize":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 78
    .local v6, "shadow":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 79
    .local v7, "canvas":Landroid/graphics/Canvas;
    div-float v5, v3, v5

    add-float/2addr v5, v2

    invoke-virtual {v7, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    new-instance v5, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 82
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    const/high16 v1, 0x1e000000

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8, v8, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v7, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 89
    invoke-virtual {v7, v8, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    const/high16 v1, 0x3d000000    # 0.03125f

    invoke-virtual {v5, v2, v8, v8, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v7, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    iget-object v8, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    monitor-enter v8

    .line 95
    :try_start_1
    iget-object v1, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    monitor-exit v8

    .line 97
    return-object v6

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 68
    .end local v2    # "blur":F
    .end local v3    # "keyShadowDistance":F
    .end local v4    # "bitmapSize":I
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "shadow":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method


# virtual methods
.method public getBadgeDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "foregroundRes"    # I
    .param p2, "backgroundColor"    # I

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/util/LauncherIcons;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "base"    # Landroid/graphics/drawable/Drawable;
    .param p2, "foregroundRes"    # I
    .param p3, "backgroundColor"    # I

    .line 105
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    .local v0, "sysRes":Landroid/content/res/Resources;
    const v1, 0x108033d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 110
    .local v1, "badgeShadow":Landroid/graphics/drawable/Drawable;
    const v2, 0x108033c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 114
    .local v2, "badgeColor":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 115
    .local v3, "badgeForeground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 117
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-nez p1, :cond_0

    .line 118
    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v7, v6

    aput-object v2, v7, v5

    aput-object v3, v7, v4

    goto :goto_0

    .line 119
    :cond_0
    const/4 v8, 0x4

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v8, v6

    aput-object v1, v8, v5

    aput-object v2, v8, v4

    aput-object v3, v8, v7

    move-object v7, v8

    :goto_0
    move-object v4, v7

    .line 120
    .local v4, "drawables":[Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v5
.end method

.method public wrapIconDrawableWithShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 54
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v0, :cond_0

    .line 55
    return-object p1

    .line 57
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {p0, v0}, Landroid/util/LauncherIcons;->getShadowBitmap(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    .local v0, "shadow":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/util/LauncherIcons$ShadowDrawable;

    invoke-direct {v1, v0, p1}, Landroid/util/LauncherIcons$ShadowDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method
