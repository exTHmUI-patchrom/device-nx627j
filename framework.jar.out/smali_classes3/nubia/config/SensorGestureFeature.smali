.class public Lnubia/config/SensorGestureFeature;
.super Ljava/lang/Object;
.source "SensorGestureFeature.java"


# static fields
.field private static final DEFAULT_PALM_SCREEN_LOCK_VALUE:Ljava/lang/String; = "/data/vendor/tp/easy_sleep_palm"

.field private static final DEFAULT_WAKE_GESTURE_VALUE:Ljava/lang/String; = "/data/vendor/tp/easy_wakeup_gesture"

.field private static final FEATURE_NAME:Ljava/lang/String; = "nubia_sensor_gesture_feature"

.field private static final PALM_SCREEN_LOCK_NODE:Ljava/lang/String; = "palm_node"

.field private static final WAKE_GESTURE_NODE:Ljava/lang/String; = "double_tap_node"

.field private static mPalmGestureNode:Ljava/lang/String;

.field private static mWakeGestureNode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPalmScreenLockNode()Ljava/lang/String;
    .locals 7

    .line 51
    sget-object v0, Lnubia/config/SensorGestureFeature;->mPalmGestureNode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lnubia/config/SensorGestureFeature;->mPalmGestureNode:Ljava/lang/String;

    return-object v0

    .line 54
    :cond_0
    const-string v0, "nubia_sensor_gesture_feature"

    const-string v1, "palm_node"

    invoke-static {v0, v1}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "palmGestureNode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const-string v1, "/data/vendor/tp/easy_sleep_palm"

    sput-object v1, Lnubia/config/SensorGestureFeature;->mPalmGestureNode:Ljava/lang/String;

    .line 58
    sget-object v1, Lnubia/config/SensorGestureFeature;->mPalmGestureNode:Ljava/lang/String;

    return-object v1

    .line 60
    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "nodes":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 62
    sput-object v0, Lnubia/config/SensorGestureFeature;->mPalmGestureNode:Ljava/lang/String;

    .line 63
    sget-object v2, Lnubia/config/SensorGestureFeature;->mPalmGestureNode:Ljava/lang/String;

    return-object v2

    .line 65
    :cond_2
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 66
    .local v4, "node":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 67
    goto :goto_1

    .line 69
    :cond_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 71
    sput-object v4, Lnubia/config/SensorGestureFeature;->mPalmGestureNode:Ljava/lang/String;

    .line 72
    return-object v4

    .line 65
    .end local v4    # "node":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :cond_5
    const-string v2, "/data/vendor/tp/easy_sleep_palm"

    sput-object v2, Lnubia/config/SensorGestureFeature;->mPalmGestureNode:Ljava/lang/String;

    .line 76
    sget-object v2, Lnubia/config/SensorGestureFeature;->mPalmGestureNode:Ljava/lang/String;

    return-object v2
.end method

.method public static getWakeGestureNode()Ljava/lang/String;
    .locals 7

    .line 21
    sget-object v0, Lnubia/config/SensorGestureFeature;->mWakeGestureNode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    sget-object v0, Lnubia/config/SensorGestureFeature;->mWakeGestureNode:Ljava/lang/String;

    return-object v0

    .line 24
    :cond_0
    const-string v0, "nubia_sensor_gesture_feature"

    const-string v1, "double_tap_node"

    invoke-static {v0, v1}, Landroid/util/NubiaConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "wakeGestureNode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    const-string v1, "/data/vendor/tp/easy_wakeup_gesture"

    sput-object v1, Lnubia/config/SensorGestureFeature;->mWakeGestureNode:Ljava/lang/String;

    .line 28
    sget-object v1, Lnubia/config/SensorGestureFeature;->mWakeGestureNode:Ljava/lang/String;

    return-object v1

    .line 31
    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "nodes":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 33
    sput-object v0, Lnubia/config/SensorGestureFeature;->mWakeGestureNode:Ljava/lang/String;

    .line 34
    sget-object v2, Lnubia/config/SensorGestureFeature;->mWakeGestureNode:Ljava/lang/String;

    return-object v2

    .line 36
    :cond_2
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 37
    .local v4, "node":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 38
    goto :goto_1

    .line 40
    :cond_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 42
    sput-object v4, Lnubia/config/SensorGestureFeature;->mWakeGestureNode:Ljava/lang/String;

    .line 43
    return-object v4

    .line 36
    .end local v4    # "node":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    :cond_5
    const-string v2, "/data/vendor/tp/easy_wakeup_gesture"

    sput-object v2, Lnubia/config/SensorGestureFeature;->mWakeGestureNode:Ljava/lang/String;

    .line 47
    sget-object v2, Lnubia/config/SensorGestureFeature;->mWakeGestureNode:Ljava/lang/String;

    return-object v2
.end method
