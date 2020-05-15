.class public Lnubia/os/presssensor/PressSensorFeatureConfig;
.super Ljava/lang/Object;
.source "PressSensorFeatureConfig.java"


# static fields
.field private static final PRESS_SENSOR_FEATURE_NAME:Ljava/lang/String; = "nubia_press_sensor_feature"

.field private static mIsEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-string v0, "true"

    const-string v1, "nubia_press_sensor_feature"

    .line 14
    invoke-static {v1}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lnubia/os/presssensor/PressSensorFeatureConfig;->mIsEnable:Z

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnable()Z
    .locals 1

    .line 18
    sget-boolean v0, Lnubia/os/presssensor/PressSensorFeatureConfig;->mIsEnable:Z

    return v0
.end method
