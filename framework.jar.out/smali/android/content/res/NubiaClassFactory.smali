.class public Landroid/content/res/NubiaClassFactory;
.super Ljava/lang/Object;
.source "NubiaClassFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newResources()Landroid/content/res/Resources;
    .locals 1

    .line 14
    sget-boolean v0, Landroid/app/ActivityThread;->IS_SYSTEM_APP:Z

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Landroid/content/res/NubiaResources;

    invoke-direct {v0}, Landroid/content/res/NubiaResources;-><init>()V

    return-object v0

    .line 17
    :cond_0
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0}, Landroid/content/res/Resources;-><init>()V

    return-object v0
.end method

.method public static newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 22
    sget-boolean v0, Landroid/app/ActivityThread;->IS_SYSTEM_APP:Z

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Landroid/content/res/NubiaResources;

    invoke-direct {v0, p0, p1, p2}, Landroid/content/res/NubiaResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, p0, p1, p2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public static newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 31
    sget-boolean v0, Landroid/app/ActivityThread;->IS_SYSTEM_APP:Z

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Landroid/content/res/NubiaResources;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/NubiaResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, p0, p1, p2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public static newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    .line 46
    sget-boolean v0, Landroid/app/ActivityThread;->IS_SYSTEM_APP:Z

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Landroid/content/res/NubiaResources;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/NubiaResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 49
    :cond_0
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static newResources(Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 38
    sget-boolean v0, Landroid/app/ActivityThread;->IS_SYSTEM_APP:Z

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Landroid/content/res/NubiaResources;

    invoke-direct {v0, p0}, Landroid/content/res/NubiaResources;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, p0}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method
