.class public Landroid/util/IconDrawableFactory;
.super Ljava/lang/Object;
.source "IconDrawableFactory.java"


# static fields
.field public static final CORP_BADGE_COLORS:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mEmbedShadow:Z

.field protected final mLauncherIcons:Landroid/util/LauncherIcons;

.field protected final mPm:Landroid/content/pm/PackageManager;

.field protected final mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/util/IconDrawableFactory;->CORP_BADGE_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1060123
        0x1060124
        0x1060125
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "embedShadow"    # Z

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/util/IconDrawableFactory;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mPm:Landroid/content/pm/PackageManager;

    .line 46
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    .line 47
    new-instance v0, Landroid/util/LauncherIcons;

    invoke-direct {v0, p1}, Landroid/util/LauncherIcons;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    .line 48
    iput-boolean p2, p0, Landroid/util/IconDrawableFactory;->mEmbedShadow:Z

    .line 49
    return-void
.end method

.method public static getUserBadgeColor(Landroid/os/UserManager;I)I
    .locals 4
    .param p0, "um"    # Landroid/os/UserManager;
    .param p1, "userId"    # I

    .line 102
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getManagedProfileBadge(I)I

    move-result v0

    .line 103
    .local v0, "badge":I
    if-gez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :cond_0
    sget-object v1, Landroid/util/IconDrawableFactory;->CORP_BADGE_COLORS:[I

    sget-object v2, Landroid/util/IconDrawableFactory;->CORP_BADGE_COLORS:[I

    array-length v2, v2

    rem-int v2, v0, v2

    aget v1, v1, v2

    .line 107
    .local v1, "resourceId":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    return v2
.end method

.method public static newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 111
    new-instance v0, Landroid/util/IconDrawableFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/util/IconDrawableFactory;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "embedShadow"    # Z

    .line 115
    new-instance v0, Landroid/util/IconDrawableFactory;

    invoke-direct {v0, p0, p1}, Landroid/util/IconDrawableFactory;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method


# virtual methods
.method public getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 56
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I

    .line 60
    invoke-virtual {p0, p1, p1, p2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "userId"    # I

    .line 65
    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Landroid/util/IconDrawableFactory;->mEmbedShadow:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/util/IconDrawableFactory;->needsBadging(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/IconDrawableFactory;->getShadowedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10600b1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 74
    .local v1, "badgeColor":I
    iget-object v2, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    const v3, 0x108037c

    invoke-virtual {v2, v0, v3, v1}, Landroid/util/LauncherIcons;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 78
    .end local v1    # "badgeColor":I
    :cond_1
    iget-object v1, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1, p3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    const v2, 0x108033b

    iget-object v3, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    .line 81
    invoke-static {v3, p3}, Landroid/util/IconDrawableFactory;->getUserBadgeColor(Landroid/os/UserManager;I)I

    move-result v3

    .line 79
    invoke-virtual {v1, v0, v2, v3}, Landroid/util/LauncherIcons;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 83
    :cond_2
    return-object v0
.end method

.method public getShadowedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 90
    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    invoke-virtual {v0, p1}, Landroid/util/LauncherIcons;->wrapIconDrawableWithShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected needsBadging(Landroid/content/pm/ApplicationInfo;I)Z
    .locals 1
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I

    .line 52
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isManagedProfile(I)Z

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
