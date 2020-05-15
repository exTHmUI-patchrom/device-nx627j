.class public final Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;
.super Ljava/lang/Object;
.source "ScreenSwitchFeatureConfig.java"


# static fields
.field private static final NUBIA_SCREEN_SWITCH_FEATURE_NAME:Ljava/lang/String; = "nubia_screen_switch_feature"

.field private static final SUB_FEATURE_DUAL_FINGERPRINT:Ljava/lang/String; = "dual_fingerprint_switch"

.field private static final SUB_FEATURE_POWERON_SWTICH_MODE:Ljava/lang/String; = "poweron_switch_mode"

.field private static final SUB_FEATURE_PRESS_BEZEL:Ljava/lang/String; = "press_switch"

.field public static final SWITCH_DISPLAY:I = 0x1

.field public static final SWITCH_LAYERSTACK:I = 0x2

.field private static mDualFingerprintEnable:Z

.field private static mIsEnable:Z

.field private static mPowerOnMode:I

.field private static mPressBezelEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    const-string v0, "true"

    const-string v1, "nubia_screen_switch_feature"

    invoke-static {v1}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->mIsEnable:Z

    .line 31
    const-string v0, "true"

    const-string v1, "nubia_screen_switch_feature"

    const-string v2, "dual_fingerprint_switch"

    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->mDualFingerprintEnable:Z

    .line 32
    const-string v0, "true"

    const-string v1, "nubia_screen_switch_feature"

    const-string v2, "press_switch"

    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->mPressBezelEnable:Z

    .line 34
    :try_start_0
    const-string v0, "nubia_screen_switch_feature"

    const-string v1, "poweron_switch_mode"

    invoke-static {v0, v1}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->mPowerOnMode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    sput v1, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->mPowerOnMode:I

    .line 38
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSolutionWithDevice(I)Z
    .locals 3
    .param p0, "mode"    # I

    .line 53
    sget-boolean v0, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->mIsEnable:Z

    if-eqz v0, :cond_1

    .line 54
    sget v0, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->mPowerOnMode:I

    const/4 v1, 0x1

    if-ne v0, p0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "NX627"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    return v1

    .line 56
    :cond_0
    sget v0, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->mPowerOnMode:I

    if-ne v0, p0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "NX616"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    return v1

    .line 60
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualFingerprintEnable()Z
    .locals 1

    .line 45
    sget-boolean v0, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->mIsEnable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->mDualFingerprintEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEnable()Z
    .locals 1

    .line 41
    sget-boolean v0, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->mIsEnable:Z

    return v0
.end method

.method public static isThreeFingerSwipeEnable()Z
    .locals 1

    .line 49
    sget-boolean v0, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->mIsEnable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lnubia/os/screenswitch/ScreenSwitchFeatureConfig;->mPressBezelEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
