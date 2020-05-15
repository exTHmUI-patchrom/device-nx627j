.class final Landroid/graphics/drawable/ClipDrawable$ClipState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "ClipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ClipDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClipState"
.end annotation


# instance fields
.field mGravity:I

.field mOrientation:I

.field private mThemeAttrs:[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "orig"    # Landroid/graphics/drawable/ClipDrawable$ClipState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 220
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 216
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 217
    const/4 v0, 0x3

    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 222
    if-eqz p1, :cond_0

    .line 223
    iget v0, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 224
    iget v0, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 226
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/ClipDrawable$ClipState;)[I
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 213
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mThemeAttrs:[I

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/ClipDrawable$ClipState;[I)[I
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/ClipDrawable$ClipState;
    .param p1, "x1"    # [I

    .line 213
    iput-object p1, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mThemeAttrs:[I

    return-object p1
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 230
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;Landroid/graphics/drawable/ClipDrawable$1;)V

    return-object v0
.end method
