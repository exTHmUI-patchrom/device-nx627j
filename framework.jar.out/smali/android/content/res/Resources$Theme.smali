.class public final Landroid/content/res/Resources$Theme;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Theme"
.end annotation


# instance fields
.field private mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

.field final synthetic this$0:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/res/Resources;

    .line 1457
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1458
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/Resources;
    .param p2, "x1"    # Landroid/content/res/Resources$1;

    .line 1454
    invoke-direct {p0, p1}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method

.method private getResourceNameFromHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "hexString"    # Ljava/lang/String;

    .line 1717
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyStyle(IZ)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .line 1482
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ResourcesImpl$ThemeImpl;->applyStyle(IZ)V

    .line 1483
    return-void
.end method

.method public dump(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 1697
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl$ThemeImpl;->dump(ILjava/lang/String;Ljava/lang/String;)V

    .line 1698
    return-void
.end method

.method public encode(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 1734
    invoke-virtual {p1, p0}, Landroid/view/ViewHierarchyEncoder;->beginObject(Ljava/lang/Object;)V

    .line 1735
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getTheme()[Ljava/lang/String;

    move-result-object v0

    .line 1736
    .local v0, "properties":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1737
    aget-object v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1739
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewHierarchyEncoder;->endObject()V

    .line 1740
    return-void
.end method

.method public getAllAttributes()[I
    .locals 1

    .line 1650
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAllAttributes()[I

    move-result-object v0

    return-object v0
.end method

.method getAppliedStyleResId()I
    .locals 1

    .line 1706
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAppliedStyleResId()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1686
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1674
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Landroid/content/res/Resources$ThemeKey;
    .locals 1

    .line 1713
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v0

    return-object v0
.end method

.method getNativeTheme()J
    .locals 2

    .line 1702
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getNativeTheme()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1659
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme()[Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "theme"
        hasAdjacentMapping = true
    .end annotation

    .line 1729
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getTheme()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 6
    .param p1, "resId"    # I
    .param p2, "attrs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1545
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ResourcesImpl$ThemeImpl;->obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 6
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 1599
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ResourcesImpl$ThemeImpl;->obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 6
    .param p1, "attrs"    # [I

    .line 1519
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ResourcesImpl$ThemeImpl;->obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public rebase()V
    .locals 1

    .line 1750
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->rebase()V

    .line 1751
    return-void
.end method

.method public resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .locals 1
    .param p1, "resid"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .line 1640
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl$ThemeImpl;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    return v0
.end method

.method public resolveAttributes([I[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "values"    # [I
    .param p2, "attrs"    # [I

    .line 1619
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/ResourcesImpl$ThemeImpl;->resolveAttributes(Landroid/content/res/Resources$Theme;[I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method setImpl(Landroid/content/res/ResourcesImpl$ThemeImpl;)V
    .locals 0
    .param p1, "impl"    # Landroid/content/res/ResourcesImpl$ThemeImpl;

    .line 1461
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    .line 1462
    return-void
.end method

.method public setTo(Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "other"    # Landroid/content/res/Resources$Theme;

    .line 1495
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    iget-object v1, p1, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v0, v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->setTo(Landroid/content/res/ResourcesImpl$ThemeImpl;)V

    .line 1496
    return-void
.end method
