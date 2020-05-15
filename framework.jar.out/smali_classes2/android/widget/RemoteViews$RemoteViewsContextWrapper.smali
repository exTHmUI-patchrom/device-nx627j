.class Landroid/widget/RemoteViews$RemoteViewsContextWrapper;
.super Landroid/content/ContextWrapper;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsContextWrapper"
.end annotation


# instance fields
.field private final mContextForResources:Landroid/content/Context;

.field private mPluginRes:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextForResources"    # Landroid/content/Context;

    .line 562
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mPluginRes:Landroid/content/res/Resources;

    .line 593
    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 563
    iput-object p2, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    .line 564
    return-void
.end method

.method static synthetic access$1900(Landroid/widget/RemoteViews$RemoteViewsContextWrapper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/RemoteViews$RemoteViewsContextWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 558
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->initPluginRes(Ljava/lang/String;)V

    return-void
.end method

.method private initPluginRes(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .line 596
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 597
    :cond_0
    const-string v0, "cn.nubia.edge"

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 600
    :cond_1
    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 601
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 602
    .local v1, "addAssetPath":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 604
    .local v2, "superRes":Landroid/content/res/Resources;
    new-instance v3, Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 605
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v3, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mPluginRes:Landroid/content/res/Resources;

    .line 606
    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mPluginRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "addAssetPath":Ljava/lang/reflect/Method;
    .end local v2    # "superRes":Landroid/content/res/Resources;
    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 610
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 596
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 588
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 569
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mPluginRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mPluginRes:Landroid/content/res/Resources;

    return-object v0

    .line 573
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 579
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0

    .line 583
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;->mContextForResources:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method
