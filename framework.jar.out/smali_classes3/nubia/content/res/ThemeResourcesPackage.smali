.class public Lnubia/content/res/ThemeResourcesPackage;
.super Lnubia/content/res/ThemeResources;
.source "ThemeResourcesPackage.java"


# static fields
.field public static final sPackageResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lnubia/content/res/ThemeResourcesPackage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lnubia/content/res/ThemeResourcesPackage;Landroid/content/res/Resources;Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;)V
    .locals 0
    .param p1, "wrappedResources"    # Lnubia/content/res/ThemeResourcesPackage;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "metaData"    # Lnubia/content/res/ThemeResources$MetaData;

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lnubia/content/res/ThemeResources;-><init>(Lnubia/content/res/ThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;)V

    .line 20
    return-void
.end method

.method public static clearPackageResources()V
    .locals 2

    .line 51
    sget-object v0, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResourcesPackage;
    .locals 4
    .param p0, "originalResources"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "result":Lnubia/content/res/ThemeResourcesPackage;
    sget-object v1, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v2, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    sget-object v2, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 37
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnubia/content/res/ThemeResourcesPackage;

    move-object v0, v2

    .line 39
    :cond_0
    if-nez v0, :cond_1

    .line 41
    invoke-static {p0, p1}, Lnubia/content/res/ThemeResourcesPackage;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResourcesPackage;

    move-result-object v2

    move-object v0, v2

    .line 43
    sget-object v2, Lnubia/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_1
    monitor-exit v1

    .line 47
    return-object v0

    .line 46
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResourcesPackage;
    .locals 4
    .param p0, "originalResources"    # Landroid/content/res/Resources;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "finalThemeResources":Lnubia/content/res/ThemeResourcesPackage;
    new-instance v1, Lnubia/content/res/ThemeResourcesPackage;

    sget-object v2, Lnubia/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-direct {v1, v3, p0, p1, v2}, Lnubia/content/res/ThemeResourcesPackage;-><init>(Lnubia/content/res/ThemeResourcesPackage;Landroid/content/res/Resources;Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;)V

    move-object v0, v1

    .line 72
    return-object v0
.end method


# virtual methods
.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .line 77
    invoke-super {p0, p1}, Lnubia/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 80
    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lnubia/content/res/ThemeResourcesPackage;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResourcesSystem;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 82
    :cond_0
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 3
    .param p1, "cookieType"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "fileInfo":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framework-res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnubia/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 91
    if-nez v0, :cond_2

    .line 92
    invoke-static {}, Lnubia/content/res/ThemeResourcesPackage;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnubia/content/res/ThemeResourcesSystem;->getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framework-nubia-res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnubia/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 96
    if-nez v0, :cond_2

    .line 97
    invoke-static {}, Lnubia/content/res/ThemeResourcesPackage;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnubia/content/res/ThemeResourcesSystem;->getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0, p2}, Lnubia/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 103
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .line 108
    invoke-super {p0, p1}, Lnubia/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 109
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lnubia/content/res/ThemeResourcesPackage;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResourcesSystem;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 111
    :cond_0
    return-object v0
.end method

.method public hasValues()Z
    .locals 1

    .line 116
    invoke-super {p0}, Lnubia/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lnubia/content/res/ThemeResourcesPackage;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/content/res/ThemeResourcesSystem;->hasValues()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
