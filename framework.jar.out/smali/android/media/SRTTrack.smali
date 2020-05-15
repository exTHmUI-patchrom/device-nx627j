.class Landroid/media/SRTTrack;
.super Landroid/media/WebVttTrack;
.source "SRTRenderer.java"


# static fields
.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final TAG:Ljava/lang/String; = "SRTTrack"


# instance fields
.field private final mEventHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "renderingWidget"    # Landroid/media/WebVttRenderingWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Landroid/media/WebVttTrack;-><init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V

    .line 80
    iput-object p1, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method private static parseMs(Ljava/lang/String;)J
    .locals 15
    .param p0, "in"    # Ljava/lang/String;

    .line 194
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 195
    .local v2, "hours":J
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 196
    .local v5, "minutes":J
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x2

    aget-object v0, v0, v7

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 197
    .local v0, "seconds":J
    const-string v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v4, v7, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 199
    .local v7, "millies":J
    const-wide/16 v9, 0x3c

    mul-long v11, v2, v9

    mul-long/2addr v11, v9

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    mul-long/2addr v9, v5

    mul-long/2addr v9, v13

    add-long/2addr v11, v9

    mul-long/2addr v13, v0

    add-long/2addr v11, v13

    add-long/2addr v11, v7

    return-wide v11
.end method


# virtual methods
.method protected onData(Landroid/media/SubtitleData;)V
    .locals 12
    .param p1, "data"    # Landroid/media/SubtitleData;

    .line 86
    :try_start_0
    new-instance v0, Landroid/media/TextTrackCue;

    invoke-direct {v0}, Landroid/media/TextTrackCue;-><init>()V

    .line 87
    .local v0, "cue":Landroid/media/TextTrackCue;
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 88
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v5

    add-long/2addr v1, v5

    div-long/2addr v1, v3

    iput-wide v1, v0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 91
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 92
    .local v1, "paragraph":Ljava/lang/String;
    const-string v2, "\\r?\\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "lines":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [[Landroid/media/TextTrackCueSpan;

    iput-object v3, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 95
    const/4 v3, 0x0

    .line 96
    .local v3, "i":I
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v3

    move v3, v5

    .line 96
    .end local v3    # "i":I
    .local v6, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v7, v2, v3

    .line 97
    .local v7, "line":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/media/TextTrackCueSpan;

    new-instance v9, Landroid/media/TextTrackCueSpan;

    const-wide/16 v10, -0x1

    invoke-direct {v9, v7, v10, v11}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v9, v8, v5

    .line 100
    .local v8, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v9, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v10, v6, 0x1

    .line 100
    .local v10, "i":I
    aput-object v8, v9, v6

    .line 96
    .end local v6    # "i":I
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "span":[Landroid/media/TextTrackCueSpan;
    add-int/lit8 v3, v3, 0x1

    move v6, v10

    goto :goto_0

    .line 103
    .end local v10    # "i":I
    .restart local v6    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/SRTTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v0    # "cue":Landroid/media/TextTrackCue;
    .end local v1    # "paragraph":Ljava/lang/String;
    .end local v2    # "lines":[Ljava/lang/String;
    .end local v6    # "i":I
    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "SRTTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    return-void
.end method

.method public onData([BZJ)V
    .locals 16
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .line 113
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v2, p1

    :try_start_1
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 114
    .local v0, "r":Ljava/io/Reader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 117
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 117
    .local v4, "header":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 119
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 120
    .end local v4    # "header":Ljava/lang/String;
    .local v3, "header":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 121
    goto/16 :goto_3

    .line 124
    :cond_0
    new-instance v4, Landroid/media/TextTrackCue;

    invoke-direct {v4}, Landroid/media/TextTrackCue;-><init>()V

    .line 125
    .local v4, "cue":Landroid/media/TextTrackCue;
    const-string v5, "-->"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "startEnd":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v7, v5, v6

    invoke-static {v7}, Landroid/media/SRTTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v4, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 127
    const/4 v7, 0x1

    aget-object v8, v5, v7

    invoke-static {v8}, Landroid/media/SRTTrack;->parseMs(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v4, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 130
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v8, "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .line 131
    .local v10, "s":Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 132
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    :cond_1
    const/4 v9, 0x0

    .line 136
    .local v9, "i":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [[Landroid/media/TextTrackCueSpan;

    iput-object v11, v4, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 137
    new-array v11, v6, [Ljava/lang/String;

    invoke-interface {v8, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    iput-object v11, v4, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 138
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 139
    .local v12, "line":Ljava/lang/String;
    new-array v13, v7, [Landroid/media/TextTrackCueSpan;

    new-instance v14, Landroid/media/TextTrackCueSpan;

    move-object v15, v8

    const-wide/16 v7, -0x1

    .line 139
    .end local v8    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v14, v12, v7, v8}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    aput-object v14, v13, v6

    move-object v7, v13

    .line 142
    .local v7, "span":[Landroid/media/TextTrackCueSpan;
    iget-object v8, v4, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    aput-object v12, v8, v9

    .line 143
    iget-object v8, v4, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    add-int/lit8 v13, v9, 0x1

    .line 143
    .local v13, "i":I
    aput-object v7, v8, v9
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 144
    .end local v7    # "span":[Landroid/media/TextTrackCueSpan;
    .end local v9    # "i":I
    .end local v12    # "line":Ljava/lang/String;
    nop

    .line 138
    move v9, v13

    move-object v8, v15

    const/4 v7, 0x1

    goto :goto_2

    .line 146
    .end local v13    # "i":I
    .end local v15    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "i":I
    :cond_2
    move-object v15, v8

    .line 146
    .end local v8    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    :try_start_2
    invoke-virtual {v6, v4}, Landroid/media/SRTTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    .end local v4    # "cue":Landroid/media/TextTrackCue;
    .end local v5    # "startEnd":[Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "s":Ljava/lang/String;
    .end local v15    # "paragraph":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 151
    .end local v0    # "r":Ljava/io/Reader;
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "header":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 149
    :catch_1
    move-exception v0

    goto :goto_5

    .line 154
    :cond_3
    :goto_3
    move-object/from16 v6, p0

    goto :goto_6

    .line 151
    :catch_2
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_4

    .line 149
    :catch_3
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_5

    .line 151
    :catch_4
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v2, p1

    .line 153
    .local v0, "ioe":Ljava/io/IOException;
    :goto_4
    const-string v1, "SRTTrack"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .end local v0    # "ioe":Ljava/io/IOException;
    goto :goto_7

    .line 149
    :catch_5
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v2, p1

    .line 150
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_5
    const-string v1, "SRTTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_6
    nop

    .line 155
    :goto_7
    return-void
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    invoke-virtual {p0}, Landroid/media/SRTTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-super {p0, p1}, Landroid/media/WebVttTrack;->updateView(Ljava/util/Vector;)V

    .line 161
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 165
    return-void

    .line 168
    :cond_1
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SubtitleTrack$Cue;

    .line 169
    .local v1, "cue":Landroid/media/SubtitleTrack$Cue;
    move-object v2, v1

    check-cast v2, Landroid/media/TextTrackCue;

    .line 171
    .local v2, "ttc":Landroid/media/TextTrackCue;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 172
    .local v3, "parcel":Landroid/os/Parcel;
    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-wide v4, v1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v5, v2, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_2

    aget-object v9, v5, v8

    .line 179
    .local v9, "line":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0xa

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    .end local v9    # "line":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 183
    .local v5, "buf":[B
    array-length v6, v5

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 186
    iget-object v6, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    const/16 v8, 0x63

    invoke-virtual {v6, v8, v7, v7, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 188
    .local v6, "msg":Landroid/os/Message;
    iget-object v7, p0, Landroid/media/SRTTrack;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    .end local v1    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v2    # "ttc":Landroid/media/TextTrackCue;
    .end local v3    # "parcel":Landroid/os/Parcel;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "buf":[B
    .end local v6    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 191
    return-void
.end method
