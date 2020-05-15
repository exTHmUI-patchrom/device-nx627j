.class public Lnubia/config/GameHelperFeatureConfig;
.super Ljava/lang/Object;
.source "GameHelperFeatureConfig.java"


# static fields
.field private static final FEATURE_FINGER_PRINT_GAME_NAME:Ljava/lang/String; = "nubia_fingerprint_game_feature"

.field private static final FEATURE_GAME_KEY_NAME:Ljava/lang/String; = "game_key_enable"

.field private static final FEATURE_NAME:Ljava/lang/String; = "nubia_game_helper_feature"

.field public static final TAG:Ljava/lang/String; = "GameHelperFeatureConfig"

.field private static mIsEnable:Z

.field private static mIsFingerGameKeyEnable:Z

.field private static mIsGameKeyEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    const-string v0, "true"

    const-string v1, "nubia_game_helper_feature"

    invoke-static {v1}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lnubia/config/GameHelperFeatureConfig;->mIsEnable:Z

    .line 21
    sget-boolean v0, Lnubia/config/GameHelperFeatureConfig;->mIsEnable:Z

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "true"

    const-string v1, "nubia_game_helper_feature"

    const-string v2, "game_key_enable"

    invoke-static {v1, v2}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lnubia/config/GameHelperFeatureConfig;->mIsGameKeyEnable:Z

    .line 24
    :cond_0
    const-string v0, "true"

    const-string v1, "nubia_fingerprint_game_feature"

    invoke-static {v1}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lnubia/config/GameHelperFeatureConfig;->mIsFingerGameKeyEnable:Z

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFingerprintGameKeyEnable()Z
    .locals 1

    .line 32
    sget-boolean v0, Lnubia/config/GameHelperFeatureConfig;->mIsFingerGameKeyEnable:Z

    return v0
.end method

.method public static isGameKeyEnable()Z
    .locals 1

    .line 28
    sget-boolean v0, Lnubia/config/GameHelperFeatureConfig;->mIsGameKeyEnable:Z

    return v0
.end method
