.class Landroid/media/TextTrackCue;
.super Landroid/media/SubtitleTrack$Cue;
.source "WebVttRenderer.java"


# static fields
.field static final ALIGNMENT_END:I = 0xca

.field static final ALIGNMENT_LEFT:I = 0xcb

.field static final ALIGNMENT_MIDDLE:I = 0xc8

.field static final ALIGNMENT_RIGHT:I = 0xcc

.field static final ALIGNMENT_START:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "TTCue"

.field static final WRITING_DIRECTION_HORIZONTAL:I = 0x64

.field static final WRITING_DIRECTION_VERTICAL_LR:I = 0x66

.field static final WRITING_DIRECTION_VERTICAL_RL:I = 0x65


# instance fields
.field mAlignment:I

.field mAutoLinePosition:Z

.field mId:Ljava/lang/String;

.field mLinePosition:Ljava/lang/Integer;

.field mLines:[[Landroid/media/TextTrackCueSpan;

.field mPauseOnExit:Z

.field mRegion:Landroid/media/TextTrackRegion;

.field mRegionId:Ljava/lang/String;

.field mSize:I

.field mSnapToLines:Z

.field mStrings:[Ljava/lang/String;

.field mTextPosition:I

.field mWritingDirection:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 405
    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    .line 406
    const-string v0, ""

    iput-object v0, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    .line 408
    const/16 v0, 0x64

    iput v0, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    .line 409
    const-string v1, ""

    iput-object v1, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 410
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 411
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 412
    const/16 v2, 0x32

    iput v2, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 413
    iput v0, p0, Landroid/media/TextTrackCue;->mSize:I

    .line 414
    const/16 v0, 0xc8

    iput v0, p0, Landroid/media/TextTrackCue;->mAlignment:I

    .line 415
    iput-object v1, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 416
    iput-object v1, p0, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .line 417
    return-void
.end method


# virtual methods
.method public appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 14
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 481
    iget-object v0, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    if-nez v0, :cond_0

    .line 482
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 484
    :cond_0
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const/4 v0, 0x1

    .line 486
    .local v0, "first":Z
    iget-object v1, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .line 486
    .end local v0    # "first":Z
    .local v4, "first":Z
    :goto_0
    if-ge v0, v2, :cond_6

    aget-object v5, v1, v0

    .line 487
    .local v5, "spans":[Landroid/media/TextTrackCueSpan;
    if-nez v4, :cond_1

    .line 488
    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_1
    if-nez v5, :cond_2

    .line 491
    const-string/jumbo v6, "null"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 493
    :cond_2
    const-string v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const/4 v6, 0x1

    .line 495
    .local v6, "innerFirst":Z
    const-wide/16 v7, -0x1

    .line 496
    .local v7, "lastTimestamp":J
    array-length v9, v5

    move-wide v10, v7

    move v7, v6

    move v6, v3

    .line 496
    .end local v6    # "innerFirst":Z
    .local v7, "innerFirst":Z
    .local v10, "lastTimestamp":J
    :goto_1
    if-ge v6, v9, :cond_5

    aget-object v8, v5, v6

    .line 497
    .local v8, "span":Landroid/media/TextTrackCueSpan;
    if-nez v7, :cond_3

    .line 498
    const-string v12, " "

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :cond_3
    iget-wide v12, v8, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v12, v12, v10

    if-eqz v12, :cond_4

    .line 501
    const-string v12, "<"

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v8, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 502
    invoke-static {v12, v13}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ">"

    .line 504
    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    iget-wide v10, v8, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 507
    :cond_4
    iget-object v12, v8, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const/4 v7, 0x0

    .line 496
    .end local v8    # "span":Landroid/media/TextTrackCueSpan;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 510
    :cond_5
    const-string v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .end local v7    # "innerFirst":Z
    .end local v10    # "lastTimestamp":J
    :goto_2
    const/4 v4, 0x0

    .line 486
    .end local v5    # "spans":[Landroid/media/TextTrackCueSpan;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    :cond_6
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .end local v4    # "first":Z
    :goto_3
    return-object p1
.end method

.method public appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 457
    iget-object v0, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 458
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 460
    :cond_0
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const/4 v0, 0x1

    .line 462
    .local v0, "first":Z
    iget-object v1, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 463
    .local v4, "s":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 464
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_1
    if-nez v4, :cond_2

    .line 467
    const-string/jumbo v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 469
    :cond_2
    const-string v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :goto_1
    const/4 v0, 0x0

    .line 462
    .end local v4    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 475
    :cond_3
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .end local v0    # "first":Z
    :goto_2
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 421
    instance-of v0, p1, Landroid/media/TextTrackCue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 422
    return v1

    .line 424
    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    .line 425
    return v0

    .line 429
    :cond_1
    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/media/TextTrackCue;

    .line 430
    .local v2, "cue":Landroid/media/TextTrackCue;
    iget-object v3, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    iget-boolean v4, v2, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    iget v4, v2, Landroid/media/TextTrackCue;->mWritingDirection:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 433
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    iget-boolean v4, v2, Landroid/media/TextTrackCue;->mSnapToLines:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    iget-boolean v4, v2, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    iget-object v4, v2, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 437
    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v3, :cond_4

    iget-object v3, v2, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v3, :cond_4

    :cond_3
    iget v3, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    iget v4, v2, Landroid/media/TextTrackCue;->mTextPosition:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/media/TextTrackCue;->mSize:I

    iget v4, v2, Landroid/media/TextTrackCue;->mSize:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/media/TextTrackCue;->mAlignment:I

    iget v4, v2, Landroid/media/TextTrackCue;->mAlignment:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v3, v3

    iget-object v4, v2, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v4, v4

    if-ne v3, v4, :cond_4

    move v3, v0

    goto :goto_0

    :cond_4
    move v3, v1

    .line 443
    .local v3, "res":Z
    :goto_0
    if-ne v3, v0, :cond_6

    .line 444
    move v0, v1

    .local v0, "line":I
    :goto_1
    iget-object v4, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 445
    iget-object v4, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    aget-object v4, v4, v0

    iget-object v5, v2, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    aget-object v5, v5, v0

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_5

    .line 446
    return v1

    .line 444
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 450
    .end local v0    # "line":I
    :cond_6
    return v3

    .line 451
    .end local v2    # "cue":Landroid/media/TextTrackCue;
    .end local v3    # "res":Z
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/IncompatibleClassChangeError;
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 550
    invoke-virtual {p0}, Landroid/media/TextTrackCue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public onTime(J)V
    .locals 10
    .param p1, "timeMs"    # J

    .line 555
    iget-object v0, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 556
    .local v4, "line":[Landroid/media/TextTrackCueSpan;
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 557
    .local v7, "span":Landroid/media/TextTrackCueSpan;
    iget-wide v8, v7, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v8, p1, v8

    if-ltz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :cond_0
    move v8, v2

    :goto_2
    iput-boolean v8, v7, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    .line 556
    .end local v7    # "span":Landroid/media/TextTrackCueSpan;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 555
    .end local v4    # "line":[Landroid/media/TextTrackCueSpan;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 560
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .local v0, "res":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    invoke-static {v1, v2}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> "

    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    invoke-static {v1, v2}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {id:\""

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", pauseOnExit:"

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", direction:"

    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    const-string v1, "horizontal"

    goto :goto_0

    .line 528
    :cond_0
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "vertical_lr"

    goto :goto_0

    .line 529
    :cond_1
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "vertical_rl"

    goto :goto_0

    .line 530
    :cond_2
    const-string v1, "INVALID"

    .line 527
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regionId:\""

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", snapToLines:"

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", linePosition:"

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-eqz v1, :cond_3

    const-string v1, "auto"

    goto :goto_1

    .line 534
    :cond_3
    iget-object v1, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 533
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textPosition:"

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size:"

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackCue;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alignment:"

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v2, 0xca

    if-ne v1, v2, :cond_4

    const-string v1, "end"

    goto :goto_2

    .line 539
    :cond_4
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v2, 0xcb

    if-ne v1, v2, :cond_5

    const-string/jumbo v1, "left"

    goto :goto_2

    .line 540
    :cond_5
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_6

    const-string/jumbo v1, "middle"

    goto :goto_2

    .line 541
    :cond_6
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_7

    const-string/jumbo v1, "right"

    goto :goto_2

    .line 542
    :cond_7
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_8

    const-string/jumbo v1, "start"

    goto :goto_2

    :cond_8
    const-string v1, "INVALID"

    .line 538
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text:"

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {p0, v0}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
