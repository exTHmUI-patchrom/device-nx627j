.class Landroid/graphics/drawable/VectorDrawable$VClipPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VClipPath"
.end annotation


# static fields
.field private static final NATIVE_ALLOCATION_SIZE:I = 0x78


# instance fields
.field private final mNativePtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1648
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    .line 1649
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->access$3700()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    .line 1650
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VClipPath;)V
    .locals 2
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VClipPath;

    .line 1653
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    .line 1654
    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->access$3800(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    .line 1655
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 1702
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mChangingConfigurations:I

    .line 1704
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1705
    .local v0, "pathName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1706
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mPathName:Ljava/lang/String;

    .line 1707
    iget-wide v1, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mPathName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->access$2000(JLjava/lang/String;)V

    .line 1710
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1711
    .local v1, "pathDataString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1712
    new-instance v2, Landroid/util/PathParser$PathData;

    invoke-direct {v2, v1}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 1713
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/graphics/drawable/VectorDrawable;->access$3900(JLjava/lang/String;I)V

    .line 1715
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1678
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 1672
    const/4 v0, 0x0

    return v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1659
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mNativePtr:J

    return-wide v0
.end method

.method getNativeSize()I
    .locals 1

    .line 1697
    const/16 v0, 0x78

    return v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 1

    .line 1692
    const/4 v0, 0x0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1664
    sget-object v0, Lcom/android/internal/R$styleable;->VectorDrawableClipPath:[I

    invoke-static {p1, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1666
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1667
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1668
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1687
    const/4 v0, 0x0

    return v0
.end method

.method public onStateChange([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .line 1682
    const/4 v0, 0x0

    return v0
.end method
