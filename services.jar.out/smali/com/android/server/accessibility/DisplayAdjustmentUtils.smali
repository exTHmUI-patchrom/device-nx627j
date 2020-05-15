.class Lcom/android/server/accessibility/DisplayAdjustmentUtils;
.super Ljava/lang/Object;
.source "DisplayAdjustmentUtils.java"


# static fields
.field public static final COLOR_MATRIX_MODE:I = 0x190

.field private static final DEFAULT_DISPLAY_DALTONIZER:I = 0xc

.field private static final MATRIX_GRAYSCALE:[F

.field private static final MATRIX_INVERT_COLOR:[F

.field private static final MATRIX_NORMAL_MODE_COLOR:[F

.field private static final MATRIX_OUTDOOR_MODE_COLOR:[F

.field private static final MATRIX_PLAY_MODE_COLOR:[F

.field private static final MATRIX_READ_MODE_COLOR:[F

.field private static final MATRIX_SLEEP_MODE_COLOR:[F

.field private static final NUBIA_COLOR_MATRIX:Ljava/lang/String; = "nubia_color_matrix"

.field private static final NUBIA_COLOR_MODE:Ljava/lang/String; = "nubia_color_mode"

.field private static lastColorMode:I

.field private static lastMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_GRAYSCALE:[F

    .line 53
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_INVERT_COLOR:[F

    .line 61
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_NORMAL_MODE_COLOR:[F

    .line 68
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_READ_MODE_COLOR:[F

    .line 74
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_PLAY_MODE_COLOR:[F

    .line 80
    new-array v1, v0, [F

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_SLEEP_MODE_COLOR:[F

    .line 86
    new-array v0, v0, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_OUTDOOR_MODE_COLOR:[F

    .line 92
    const/16 v0, 0x1f4

    sput v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->lastMode:I

    .line 93
    const/4 v0, -0x1

    sput v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->lastColorMode:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f7fbe77    # 0.999f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f4ccccd    # 0.8f
        0x0
        0x0
        0x0
        0x0
        0x3f19999a    # 0.6f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f3ae148    # 0.73f
        0x0
        0x0
        0x0
        0x0
        0x3ef0a3d7    # 0.47f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3ea8f5c3    # 0.33f
        0x3e800000    # 0.25f
        0x3e19999a    # 0.15f
        0x0
        0x3ea8f5c3    # 0.33f
        0x3e800000    # 0.25f
        0x3e19999a    # 0.15f
        0x0
        0x3ea8f5c3    # 0.33f
        0x3e800000    # 0.25f
        0x3e19999a    # 0.15f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyChooseColorSetting(Landroid/content/Context;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 182
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "nubia_color_matrix"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "str":Ljava/lang/String;
    const/16 v2, 0x10

    new-array v2, v2, [F

    .line 184
    .local v2, "mColorMatrix":[F
    const/4 v3, 0x0

    .line 185
    .local v3, "index":I
    if-eqz v1, :cond_2

    .line 186
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 187
    .local v7, "tile":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 188
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 188
    .end local v7    # "tile":Ljava/lang/String;
    goto :goto_1

    .line 189
    .restart local v7    # "tile":Ljava/lang/String;
    :cond_0
    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v2, v3

    .line 190
    add-int/lit8 v3, v3, 0x1

    .line 186
    .end local v7    # "tile":Ljava/lang/String;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 195
    :cond_1
    const-class v4, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayTransformManager;

    .line 196
    .local v4, "dtm":Lcom/android/server/display/DisplayTransformManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 199
    .local v5, "identity":J
    const/16 v7, 0x190

    :try_start_0
    invoke-virtual {v4, v7, v2}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    nop

    .line 203
    return-void

    .line 201
    :catchall_0
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 193
    .end local v4    # "dtm":Lcom/android/server/display/DisplayTransformManager;
    .end local v5    # "identity":J
    :cond_2
    return-void
.end method

.method public static applyColorModeSetting(Landroid/content/Context;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "nubia_color_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 145
    .local v1, "colorMode":I
    const-string v2, "EyeProtection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "colorMode ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",lastColorMode ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->lastColorMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget v2, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->lastColorMode:I

    if-ne v1, v2, :cond_0

    .line 147
    return-void

    .line 150
    :cond_0
    const-class v2, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayTransformManager;

    .line 151
    .local v2, "dtm":Lcom/android/server/display/DisplayTransformManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 154
    .local v3, "identity":J
    :try_start_0
    sget v5, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->lastMode:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 155
    if-nez v1, :cond_1

    .line 156
    sget-object v5, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_NORMAL_MODE_COLOR:[F

    const/16 v6, 0x320

    invoke-virtual {v2, v6, v5}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 157
    sput v6, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->lastMode:I

    goto :goto_0

    .line 158
    :cond_1
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 159
    sget-object v5, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_READ_MODE_COLOR:[F

    const/16 v6, 0x190

    invoke-virtual {v2, v6, v5}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 160
    sput v6, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->lastMode:I

    goto :goto_0

    .line 161
    :cond_2
    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    .line 162
    sget-object v5, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_PLAY_MODE_COLOR:[F

    const/16 v6, 0x1f4

    invoke-virtual {v2, v6, v5}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 163
    sput v6, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->lastMode:I

    goto :goto_0

    .line 164
    :cond_3
    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    .line 165
    sget-object v5, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_SLEEP_MODE_COLOR:[F

    const/16 v6, 0x258

    invoke-virtual {v2, v6, v5}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 166
    sput v6, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->lastMode:I

    goto :goto_0

    .line 167
    :cond_4
    const/4 v5, 0x4

    if-ne v1, v5, :cond_5

    .line 168
    sget-object v5, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_OUTDOOR_MODE_COLOR:[F

    const/16 v6, 0x2bc

    invoke-virtual {v2, v6, v5}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 169
    sput v6, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->lastMode:I

    .line 171
    :cond_5
    :goto_0
    sput v1, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->lastColorMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    nop

    .line 175
    return-void

    .line 173
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static applyDaltonizerSetting(Landroid/content/Context;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    .local v0, "cr":Landroid/content/ContentResolver;
    const-class v1, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayTransformManager;

    .line 101
    .local v1, "dtm":Lcom/android/server/display/DisplayTransformManager;
    const/4 v2, -0x1

    .line 102
    .local v2, "daltonizerMode":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 104
    .local v3, "identity":J
    :try_start_0
    const-string v5, "accessibility_display_daltonizer_enabled"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    const-string v5, "accessibility_display_daltonizer"

    const/16 v6, 0xc

    invoke-static {v0, v5, v6, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v5

    .line 110
    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    nop

    .line 113
    const/4 v5, 0x0

    .line 114
    .local v5, "grayscaleMatrix":[F
    if-nez v2, :cond_1

    .line 116
    sget-object v5, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_GRAYSCALE:[F

    .line 117
    const/4 v2, -0x1

    .line 119
    :cond_1
    const/16 v6, 0xc8

    invoke-virtual {v1, v6, v5}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 120
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayTransformManager;->setDaltonizerMode(I)V

    .line 121
    return-void

    .line 110
    .end local v5    # "grayscaleMatrix":[F
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public static applyInversionSetting(Landroid/content/Context;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 128
    .local v0, "cr":Landroid/content/ContentResolver;
    const-class v1, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayTransformManager;

    .line 130
    .local v1, "dtm":Lcom/android/server/display/DisplayTransformManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 132
    .local v2, "identity":J
    :try_start_0
    const-string v4, "accessibility_display_inversion_enabled"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    nop

    :cond_0
    move v4, v5

    .line 134
    .local v4, "invertColors":Z
    const/16 v5, 0x12c

    .line 135
    if-eqz v4, :cond_1

    sget-object v6, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->MATRIX_INVERT_COLOR:[F

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 134
    :goto_0
    invoke-virtual {v1, v5, v6}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v4    # "invertColors":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    nop

    .line 139
    return-void

    .line 137
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
