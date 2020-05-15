.class public final Lnubia/os/edge/EdgeFeatureConfig;
.super Ljava/lang/Object;
.source "EdgeFeatureConfig.java"


# static fields
.field private static final NUBIA_EDGE_FEATURE_NAME:Ljava/lang/String; = "nubia_fit_feature"

.field private static mIsComplete:Z

.field private static mIsDoubleTapWithFloat:Z

.field private static mIsEnable:Z

.field private static mIsSupportFitCard:Z

.field private static mIsSupportThreeFingers:Z

.field private static sCZoneWeakWidth:I

.field private static sCZoneWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    const/4 v0, -0x1

    sput v0, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWidth:I

    .line 15
    sput v0, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWeakWidth:I

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lnubia/os/edge/EdgeFeatureConfig;->mIsEnable:Z

    .line 17
    sput-boolean v0, Lnubia/os/edge/EdgeFeatureConfig;->mIsComplete:Z

    .line 18
    sput-boolean v0, Lnubia/os/edge/EdgeFeatureConfig;->mIsDoubleTapWithFloat:Z

    .line 19
    sput-boolean v0, Lnubia/os/edge/EdgeFeatureConfig;->mIsSupportFitCard:Z

    .line 20
    sput-boolean v0, Lnubia/os/edge/EdgeFeatureConfig;->mIsSupportThreeFingers:Z

    .line 25
    const-string v0, "1"

    const-string v1, "ro.nubia.edge.enable"

    const-string v2, "0"

    .line 26
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lnubia/os/edge/EdgeFeatureConfig;->mIsEnable:Z

    .line 27
    const-string v0, "1"

    const-string v1, "nubia_fit_feature"

    const-string v2, "nubia_edge_incomplete"

    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lnubia/os/edge/EdgeFeatureConfig;->mIsComplete:Z

    .line 29
    const-string v0, "1"

    const-string v1, "nubia_fit_feature"

    const-string v2, "double_tap_for_float_menu"

    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lnubia/os/edge/EdgeFeatureConfig;->mIsDoubleTapWithFloat:Z

    .line 31
    const-string v0, "1"

    const-string v1, "nubia_fit_feature"

    const-string v2, "support_fitcard"

    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lnubia/os/edge/EdgeFeatureConfig;->mIsSupportFitCard:Z

    .line 33
    const-string v0, "1"

    const-string v1, "nubia_fit_feature"

    const-string v2, "support_three_fingers"

    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lnubia/os/edge/EdgeFeatureConfig;->mIsSupportThreeFingers:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEdgeDeviceCWeakWidth()I
    .locals 3

    .line 85
    sget v0, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWeakWidth:I

    if-ltz v0, :cond_0

    .line 86
    sget v0, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWeakWidth:I

    return v0

    .line 88
    :cond_0
    const-string v0, "nubia_fit_feature"

    const-string v1, "nubia_edge_weakwidth"

    invoke-static {v0, v1}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "width":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->getEdgeDeviceCWidth()I

    move-result v1

    sput v1, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWeakWidth:I

    .line 91
    sget v1, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWeakWidth:I

    return v1

    .line 94
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWeakWidth:I

    .line 95
    sget v1, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWeakWidth:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 98
    const/4 v2, 0x0

    sput v2, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWeakWidth:I

    .line 100
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    return v2
.end method

.method public static getEdgeDeviceCWidth()I
    .locals 4

    .line 64
    sget v0, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWidth:I

    if-ltz v0, :cond_0

    .line 65
    sget v0, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWidth:I

    return v0

    .line 67
    :cond_0
    const-string v0, "nubia_fit_feature"

    const-string v1, "nubia_edge_area_width"

    invoke-static {v0, v1}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "width":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 69
    return v2

    .line 71
    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "values":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    .line 74
    :try_start_0
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWidth:I

    .line 75
    sget v3, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWidth:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 76
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 78
    sput v2, Lnubia/os/edge/EdgeFeatureConfig;->sCZoneWidth:I

    .line 81
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    return v2
.end method

.method public static isDoubleTapWithFloat()Z
    .locals 1

    .line 52
    sget-boolean v0, Lnubia/os/edge/EdgeFeatureConfig;->mIsDoubleTapWithFloat:Z

    return v0
.end method

.method public static isEdgeFeatureEnable()Z
    .locals 1

    .line 38
    sget-boolean v0, Lnubia/os/edge/EdgeFeatureConfig;->mIsEnable:Z

    return v0
.end method

.method public static isEdgeIncomplete()Z
    .locals 1

    .line 48
    sget-boolean v0, Lnubia/os/edge/EdgeFeatureConfig;->mIsComplete:Z

    return v0
.end method

.method public static isSupportFitCard()Z
    .locals 1

    .line 56
    sget-boolean v0, Lnubia/os/edge/EdgeFeatureConfig;->mIsSupportFitCard:Z

    return v0
.end method

.method public static isSupportThreeFingers()Z
    .locals 1

    .line 60
    sget-boolean v0, Lnubia/os/edge/EdgeFeatureConfig;->mIsSupportThreeFingers:Z

    return v0
.end method

.method public static loadConfig()V
    .locals 0

    .line 45
    return-void
.end method
