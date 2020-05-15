.class public Lnubia/twolevel/TwoLevelUtils;
.super Ljava/lang/Object;
.source "TwoLevelUtils.java"


# static fields
.field public static mIs2LevelPreStartEnabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const/4 v0, -0x1

    sput v0, Lnubia/twolevel/TwoLevelUtils;->mIs2LevelPreStartEnabled:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static is2LevelPreStartEnabled()Z
    .locals 8

    .line 36
    sget v0, Lnubia/twolevel/TwoLevelUtils;->mIs2LevelPreStartEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 37
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 38
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 39
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    long-to-float v3, v3

    const/high16 v4, 0x4e800000

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 40
    .local v3, "totalMemGb":I
    const/4 v4, 0x1

    .line 41
    .local v4, "isConfigSupport":Z
    const-string v5, "nubia_preformance_feature"

    invoke-static {v5}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 42
    const-string v5, "true"

    const-string v6, "nubia_preformance_feature"

    const-string v7, "support_two_level_prelaunch"

    invoke-static {v6, v7}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 45
    :cond_0
    const/4 v5, 0x6

    if-lt v3, v5, :cond_1

    if-eqz v4, :cond_1

    .line 46
    sput v2, Lnubia/twolevel/TwoLevelUtils;->mIs2LevelPreStartEnabled:I

    goto :goto_0

    .line 48
    :cond_1
    sput v1, Lnubia/twolevel/TwoLevelUtils;->mIs2LevelPreStartEnabled:I

    .line 50
    .end local v0    # "minfo":Lcom/android/internal/util/MemInfoReader;
    .end local v3    # "totalMemGb":I
    .end local v4    # "isConfigSupport":Z
    :cond_2
    :goto_0
    sget v0, Lnubia/twolevel/TwoLevelUtils;->mIs2LevelPreStartEnabled:I

    if-ne v0, v2, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1
.end method

.method public static isThirdPartyApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 15
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "cn.nubia.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "cn.nubia.mms"

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_2

    .line 24
    return v0

    .line 26
    :cond_2
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "cn.nubia."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    return v0

    .line 29
    :cond_3
    return v2

    .line 20
    :cond_4
    :goto_0
    return v2

    .line 16
    :cond_5
    :goto_1
    return v0
.end method
