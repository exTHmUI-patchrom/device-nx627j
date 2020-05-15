.class public Lcn/nubia/server/breathinglight/NubiaLightsManager;
.super Ljava/lang/Object;
.source "NubiaLightsManager.java"


# static fields
.field private static final LEFT:I = 0x20

.field private static final LIGHTS:[I

.field private static final LIGHT_ID_NUBIA:I = 0x8

.field private static final MAX_GRADE:I = 0xff

.field private static final MIDDLE:I = 0x10

.field private static final MIN_GRADE:I = 0x0

.field private static final RIGHT:I = 0x8


# instance fields
.field private mCurrentBrightness:I

.field private mNubiaLight:Lcom/android/server/lights/Light;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/server/breathinglight/NubiaLightsManager;->LIGHTS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x20
        0x10
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0xa

    iput v0, p0, Lcn/nubia/server/breathinglight/NubiaLightsManager;->mCurrentBrightness:I

    .line 20
    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/breathinglight/NubiaLightsManager;->mNubiaLight:Lcom/android/server/lights/Light;

    .line 22
    return-void
.end method

.method private hasValue(II)Z
    .locals 1
    .param p1, "lights"    # I
    .param p2, "light"    # I

    .line 70
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setBottomLights(IIIII)V
    .locals 7
    .param p1, "lights"    # I
    .param p2, "mode"    # I
    .param p3, "color"    # I
    .param p4, "onMs"    # I
    .param p5, "offMs"    # I

    .line 36
    sget-object v0, Lcn/nubia/server/breathinglight/NubiaLightsManager;->LIGHTS:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget v3, v0, v2

    .line 37
    .local v3, "light":I
    invoke-direct {p0, p1, v3}, Lcn/nubia/server/breathinglight/NubiaLightsManager;->hasValue(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 38
    const/4 v4, 0x0

    .line 39
    .local v4, "minGrade":I
    const/4 v5, 0x6

    if-eq p2, v5, :cond_0

    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    .line 41
    :cond_0
    iget v4, p0, Lcn/nubia/server/breathinglight/NubiaLightsManager;->mCurrentBrightness:I

    .line 44
    :cond_1
    if-nez p2, :cond_2

    .line 45
    const/4 p2, 0x2

    .line 47
    :cond_2
    const/high16 v5, -0x1000000

    shl-int/lit8 v6, v4, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0x8

    or-int/2addr v5, v6

    or-int/2addr v5, p2

    .line 48
    .local v5, "mergedMode":I
    iget-object v6, p0, Lcn/nubia/server/breathinglight/NubiaLightsManager;->mNubiaLight:Lcom/android/server/lights/Light;

    if-eqz v6, :cond_3

    .line 49
    iget-object v6, p0, Lcn/nubia/server/breathinglight/NubiaLightsManager;->mNubiaLight:Lcom/android/server/lights/Light;

    invoke-virtual {v6, p3, v5, p4, p5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 36
    .end local v3    # "light":I
    .end local v4    # "minGrade":I
    .end local v5    # "mergedMode":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_4
    return-void
.end method


# virtual methods
.method getBrightness()I
    .locals 1

    .line 74
    iget v0, p0, Lcn/nubia/server/breathinglight/NubiaLightsManager;->mCurrentBrightness:I

    return v0
.end method

.method setBreathingLight(IIIIZ)V
    .locals 13
    .param p1, "lights"    # I
    .param p2, "mode"    # I
    .param p3, "frequency"    # I
    .param p4, "color"    # I
    .param p5, "isGreenAndRedEnabled"    # Z

    move/from16 v0, p3

    .line 56
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x10

    .line 57
    .local v1, "fade_time":I
    const v2, 0xff00

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    .line 58
    .local v2, "fullon_time":I
    and-int/lit16 v3, v0, 0xff

    .line 59
    .local v3, "fulloff_time":I
    shl-int/lit8 v4, v1, 0x10

    or-int/2addr v4, v1

    .line 60
    .local v4, "onMs":I
    shl-int/lit8 v5, v2, 0x10

    or-int v11, v5, v3

    .line 62
    .local v11, "offMs":I
    const/4 v5, 0x1

    move/from16 v12, p5

    if-ne v12, v5, :cond_0

    .line 63
    move-object v5, p0

    move v6, p1

    move v7, p2

    move/from16 v8, p4

    move v9, v4

    move v10, v11

    invoke-virtual/range {v5 .. v10}, Lcn/nubia/server/breathinglight/NubiaLightsManager;->setGreenAndRedLights(IIIII)V

    goto :goto_0

    .line 65
    :cond_0
    move-object v5, p0

    move v6, p1

    move v7, p2

    move/from16 v8, p4

    move v9, v4

    move v10, v11

    invoke-direct/range {v5 .. v10}, Lcn/nubia/server/breathinglight/NubiaLightsManager;->setBottomLights(IIIII)V

    .line 67
    :goto_0
    return-void
.end method

.method setBrightness(I)V
    .locals 0
    .param p1, "brightness"    # I

    .line 78
    iput p1, p0, Lcn/nubia/server/breathinglight/NubiaLightsManager;->mCurrentBrightness:I

    .line 79
    return-void
.end method

.method setGreenAndRedLights(IIIII)V
    .locals 3
    .param p1, "lights"    # I
    .param p2, "mode"    # I
    .param p3, "color"    # I
    .param p4, "onMs"    # I
    .param p5, "offMs"    # I

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "minGrade":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 27
    iget v0, p0, Lcn/nubia/server/breathinglight/NubiaLightsManager;->mCurrentBrightness:I

    .line 29
    :cond_0
    const/high16 v1, -0x1000000

    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, p2

    .line 30
    .local v1, "mergedMode":I
    iget-object v2, p0, Lcn/nubia/server/breathinglight/NubiaLightsManager;->mNubiaLight:Lcom/android/server/lights/Light;

    if-eqz v2, :cond_1

    .line 31
    iget-object v2, p0, Lcn/nubia/server/breathinglight/NubiaLightsManager;->mNubiaLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2, p3, v1, p4, p5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 33
    :cond_1
    return-void
.end method
