.class public Lnubia/config/DualScreenTouchFeatureConfig;
.super Ljava/lang/Object;
.source "DualScreenTouchFeatureConfig.java"


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "nubia_double_screen_touch_feature"

.field private static mIsEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-string v0, "true"

    const-string v1, "nubia_double_screen_touch_feature"

    invoke-static {v1}, Landroid/util/NubiaConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lnubia/config/DualScreenTouchFeatureConfig;->mIsEnable:Z

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnable()Z
    .locals 1

    .line 18
    sget-boolean v0, Lnubia/config/DualScreenTouchFeatureConfig;->mIsEnable:Z

    return v0
.end method
