.class public Landroid/media/audiofx/NoiseSuppressor;
.super Landroid/media/audiofx/AudioEffect;
.source "NoiseSuppressor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NoiseSuppressor"


# direct methods
.method private constructor <init>(I)V
    .locals 3
    .param p1, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 96
    sget-object v0, Landroid/media/audiofx/NoiseSuppressor;->EFFECT_TYPE_NS:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/NoiseSuppressor;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 97
    return-void
.end method

.method public static create(I)Landroid/media/audiofx/NoiseSuppressor;
    .locals 5
    .param p0, "audioSession"    # I

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "ns":Landroid/media/audiofx/NoiseSuppressor;
    :try_start_0
    new-instance v1, Landroid/media/audiofx/NoiseSuppressor;

    invoke-direct {v1, p0}, Landroid/media/audiofx/NoiseSuppressor;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 73
    :goto_0
    goto :goto_1

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "NoiseSuppressor"

    const-string/jumbo v3, "not enough memory"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v1    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 69
    :catch_1
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const-string v2, "NoiseSuppressor"

    const-string/jumbo v3, "not enough resources"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0

    .line 67
    :catch_2
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "NoiseSuppressor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not implemented on this device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 74
    :goto_1
    return-object v0
.end method

.method public static isAvailable()Z
    .locals 1

    .line 52
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->isEffectTypeAvailable(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method
