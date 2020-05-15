.class public abstract Landroid/os/VibrationEffect;
.super Ljava/lang/Object;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationEffect$Prebaked;,
        Landroid/os/VibrationEffect$Waveform;,
        Landroid/os/VibrationEffect$OneShot;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AMPLITUDE:I = -0x1

.field public static final EFFECT_CLICK:I = 0x0

.field public static final EFFECT_DOUBLE_CLICK:I = 0x1

.field public static final EFFECT_HEAVY_CLICK:I = 0x5

.field public static final EFFECT_POP:I = 0x4

.field public static final EFFECT_THUD:I = 0x3

.field public static final EFFECT_TICK:I = 0x2

.field public static final MAX_AMPLITUDE:I = 0xff

.field private static final PARCEL_TOKEN_EFFECT:I = 0x3

.field private static final PARCEL_TOKEN_ONE_SHOT:I = 0x1

.field private static final PARCEL_TOKEN_WAVEFORM:I = 0x2

.field public static final RINGTONES:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/os/VibrationEffect;->RINGTONES:[I

    .line 752
    new-instance v0, Landroid/os/VibrationEffect$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOneShot(JI)Landroid/os/VibrationEffect;
    .locals 1
    .param p0, "milliseconds"    # J
    .param p2, "amplitude"    # I

    .line 139
    new-instance v0, Landroid/os/VibrationEffect$OneShot;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/VibrationEffect$OneShot;-><init>(JI)V

    .line 140
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 141
    return-object v0
.end method

.method public static createWaveform([JI)Landroid/os/VibrationEffect;
    .locals 4
    .param p0, "timings"    # [J
    .param p1, "repeat"    # I

    .line 170
    array-length v0, p0

    new-array v0, v0, [I

    .line 171
    .local v0, "amplitudes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 172
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    aput v3, v0, v2

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "i":I
    :cond_0
    invoke-static {p0, v0, p1}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method public static createWaveform([J[II)Landroid/os/VibrationEffect;
    .locals 1
    .param p0, "timings"    # [J
    .param p1, "amplitudes"    # [I
    .param p2, "repeat"    # I

    .line 200
    new-instance v0, Landroid/os/VibrationEffect$Waveform;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/VibrationEffect$Waveform;-><init>([J[II)V

    .line 201
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 202
    return-object v0
.end method

.method public static get(I)Landroid/os/VibrationEffect;
    .locals 1
    .param p0, "effectId"    # I

    .line 224
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static get(IZ)Landroid/os/VibrationEffect;
    .locals 1
    .param p0, "effectId"    # I
    .param p1, "fallback"    # Z

    .line 250
    new-instance v0, Landroid/os/VibrationEffect$Prebaked;

    invoke-direct {v0, p0, p1}, Landroid/os/VibrationEffect$Prebaked;-><init>(IZ)V

    .line 251
    .local v0, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 252
    return-object v0
.end method

.method public static get(Landroid/net/Uri;Landroid/content/Context;)Landroid/os/VibrationEffect;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "uris":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    sget-object v2, Landroid/os/VibrationEffect;->RINGTONES:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 276
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 277
    goto :goto_1

    .line 279
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 280
    .local v2, "cr":Landroid/content/ContentResolver;
    aget-object v3, v0, v1

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 281
    .local v3, "mappedUri":Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 282
    goto :goto_1

    .line 284
    :cond_1
    invoke-virtual {v3, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 285
    sget-object v4, Landroid/os/VibrationEffect;->RINGTONES:[I

    aget v4, v4, v1

    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v4

    return-object v4

    .line 275
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "mappedUri":Landroid/net/Uri;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method protected static scale(IFI)I
    .locals 2
    .param p0, "amplitude"    # I
    .param p1, "gamma"    # F
    .param p2, "maxAmplitude"    # I

    .line 317
    int-to-float v0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {v0, p1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    .line 318
    .local v0, "val":F
    int-to-float v1, p2

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getDuration()J
.end method

.method public abstract validate()V
.end method
