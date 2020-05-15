.class public Landroid/media/DecoderCapabilities;
.super Ljava/lang/Object;
.source "DecoderCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/DecoderCapabilities$AudioDecoder;,
        Landroid/media/DecoderCapabilities$VideoDecoder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Landroid/media/DecoderCapabilities;->native_init()V

    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioDecoders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/DecoderCapabilities$AudioDecoder;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "decoderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$AudioDecoder;>;"
    invoke-static {}, Landroid/media/DecoderCapabilities;->native_get_num_audio_decoders()I

    move-result v1

    .line 70
    .local v1, "nDecoders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 71
    invoke-static {}, Landroid/media/DecoderCapabilities$AudioDecoder;->values()[Landroid/media/DecoderCapabilities$AudioDecoder;

    move-result-object v3

    invoke-static {v2}, Landroid/media/DecoderCapabilities;->native_get_audio_decoder_type(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getVideoDecoders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/DecoderCapabilities$VideoDecoder;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "decoderList":Ljava/util/List;, "Ljava/util/List<Landroid/media/DecoderCapabilities$VideoDecoder;>;"
    invoke-static {}, Landroid/media/DecoderCapabilities;->native_get_num_video_decoders()I

    move-result v1

    .line 57
    .local v1, "nDecoders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 58
    invoke-static {}, Landroid/media/DecoderCapabilities$VideoDecoder;->values()[Landroid/media/DecoderCapabilities$VideoDecoder;

    move-result-object v3

    invoke-static {v2}, Landroid/media/DecoderCapabilities;->native_get_video_decoder_type(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private static final native native_get_audio_decoder_type(I)I
.end method

.method private static final native native_get_num_audio_decoders()I
.end method

.method private static final native native_get_num_video_decoders()I
.end method

.method private static final native native_get_video_decoder_type(I)I
.end method

.method private static final native native_init()V
.end method
