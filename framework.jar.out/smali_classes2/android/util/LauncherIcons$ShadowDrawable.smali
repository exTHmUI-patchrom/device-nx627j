.class Landroid/util/LauncherIcons$ShadowDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "LauncherIcons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/LauncherIcons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShadowDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;
    }
.end annotation


# instance fields
.field final mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "shadow"    # Landroid/graphics/Bitmap;
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-direct {p0, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 132
    new-instance v0, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v0, p0, Landroid/util/LauncherIcons$ShadowDrawable;->mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    .line 133
    return-void
.end method

.method constructor <init>(Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;)V
    .locals 1
    .param p1, "state"    # Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    .line 136
    iget-object v0, p1, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iput-object p1, p0, Landroid/util/LauncherIcons$ShadowDrawable;->mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    .line 138
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 147
    invoke-virtual {p0}, Landroid/util/LauncherIcons$ShadowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 148
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/util/LauncherIcons$ShadowDrawable;->mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    iget-object v1, v1, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mShadow:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/util/LauncherIcons$ShadowDrawable;->mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    iget-object v2, v2, Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 151
    const v1, 0x3f75c28e    # 0.9599999f

    .line 153
    .local v1, "factor":F
    nop

    .line 154
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const v3, 0x3caaaaab

    mul-float/2addr v2, v3

    .line 156
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    const v4, 0x3c2aaaab

    mul-float/2addr v3, v4

    .line 153
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 157
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 158
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 160
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 142
    iget-object v0, p0, Landroid/util/LauncherIcons$ShadowDrawable;->mState:Landroid/util/LauncherIcons$ShadowDrawable$MyConstantState;

    return-object v0
.end method
