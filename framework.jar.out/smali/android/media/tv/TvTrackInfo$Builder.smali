.class public final Landroid/media/tv/TvTrackInfo$Builder;
.super Ljava/lang/Object;
.source "TvTrackInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvTrackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioChannelCount:I

.field private mAudioSampleRate:I

.field private mDescription:Ljava/lang/CharSequence;

.field private mExtra:Landroid/os/Bundle;

.field private final mId:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private final mType:I

.field private mVideoActiveFormatDescription:B

.field private mVideoFrameRate:F

.field private mVideoHeight:I

.field private mVideoPixelAspectRatio:F

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoPixelAspectRatio:F

    .line 333
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    .line 340
    iput-object p2, p0, Landroid/media/tv/TvTrackInfo$Builder;->mId:Ljava/lang/String;

    .line 341
    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/TvTrackInfo;
    .locals 15

    .line 493
    new-instance v14, Landroid/media/tv/TvTrackInfo;

    iget v1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    iget-object v2, p0, Landroid/media/tv/TvTrackInfo$Builder;->mId:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo$Builder;->mLanguage:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/tv/TvTrackInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    iget v5, p0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioChannelCount:I

    iget v6, p0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioSampleRate:I

    iget v7, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoWidth:I

    iget v8, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoHeight:I

    iget v9, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoFrameRate:F

    iget v10, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoPixelAspectRatio:F

    iget-byte v11, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoActiveFormatDescription:B

    iget-object v12, p0, Landroid/media/tv/TvTrackInfo$Builder;->mExtra:Landroid/os/Bundle;

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroid/media/tv/TvTrackInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFBLandroid/os/Bundle;Landroid/media/tv/TvTrackInfo$1;)V

    return-object v14
.end method

.method public final setAudioChannelCount(I)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "audioChannelCount"    # I

    .line 370
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    if-nez v0, :cond_0

    .line 373
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioChannelCount:I

    .line 374
    return-object p0

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setAudioSampleRate(I)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "audioSampleRate"    # I

    .line 385
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    if-nez v0, :cond_0

    .line 388
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mAudioSampleRate:I

    .line 389
    return-object p0

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setDescription(Ljava/lang/CharSequence;)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 359
    iput-object p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 360
    return-object p0
.end method

.method public final setExtra(Landroid/os/Bundle;)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 1
    .param p1, "extra"    # Landroid/os/Bundle;

    .line 483
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mExtra:Landroid/os/Bundle;

    .line 484
    return-object p0
.end method

.method public final setLanguage(Ljava/lang/String;)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .line 349
    iput-object p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mLanguage:Ljava/lang/String;

    .line 350
    return-object p0
.end method

.method public final setVideoActiveFormatDescription(B)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "videoActiveFormatDescription"    # B

    .line 470
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 473
    iput-byte p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoActiveFormatDescription:B

    .line 474
    return-object p0

    .line 471
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setVideoFrameRate(F)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "videoFrameRate"    # F

    .line 430
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 433
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoFrameRate:F

    .line 434
    return-object p0

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setVideoHeight(I)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "videoHeight"    # I

    .line 415
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 418
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoHeight:I

    .line 419
    return-object p0

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setVideoPixelAspectRatio(F)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "videoPixelAspectRatio"    # F

    .line 450
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 453
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoPixelAspectRatio:F

    .line 454
    return-object p0

    .line 451
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setVideoWidth(I)Landroid/media/tv/TvTrackInfo$Builder;
    .locals 2
    .param p1, "videoWidth"    # I

    .line 400
    iget v0, p0, Landroid/media/tv/TvTrackInfo$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 403
    iput p1, p0, Landroid/media/tv/TvTrackInfo$Builder;->mVideoWidth:I

    .line 404
    return-object p0

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
