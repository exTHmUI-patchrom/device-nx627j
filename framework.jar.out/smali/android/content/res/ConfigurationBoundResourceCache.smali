.class public Landroid/content/res/ConfigurationBoundResourceCache;
.super Landroid/content/res/ThemedResourceCache;
.source "ConfigurationBoundResourceCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/res/ThemedResourceCache<",
        "Landroid/content/res/ConstantState<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-direct {p0}, Landroid/content/res/ThemedResourceCache;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .line 27
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-super {p0}, Landroid/content/res/ThemedResourceCache;->clear()V

    return-void
.end method

.method public getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # J
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    .line 38
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-virtual {p0, p1, p2, p4}, Landroid/content/res/ConfigurationBoundResourceCache;->get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ConstantState;

    .line 39
    .local v0, "entry":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<TT;>;"
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p3, p4}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 43
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic onConfigurationChange(I)V
    .locals 0

    .line 27
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    invoke-super {p0, p1}, Landroid/content/res/ThemedResourceCache;->onConfigurationChange(I)V

    return-void
.end method

.method public shouldInvalidateEntry(Landroid/content/res/ConstantState;I)Z
    .locals 1
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ConstantState<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 48
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    .local p1, "entry":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<TT;>;"
    invoke-virtual {p1}, Landroid/content/res/ConstantState;->getChangingConfigurations()I

    move-result v0

    invoke-static {p2, v0}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldInvalidateEntry(Ljava/lang/Object;I)Z
    .locals 0

    .line 27
    .local p0, "this":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<TT;>;"
    check-cast p1, Landroid/content/res/ConstantState;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/ConfigurationBoundResourceCache;->shouldInvalidateEntry(Landroid/content/res/ConstantState;I)Z

    move-result p1

    return p1
.end method
