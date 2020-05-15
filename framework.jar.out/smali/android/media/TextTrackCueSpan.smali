.class Landroid/media/TextTrackCueSpan;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# instance fields
.field mEnabled:Z

.field mText:Ljava/lang/String;

.field mTimestampMs:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-wide p2, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 76
    iput-object p1, p0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    .line 78
    iget-wide v0, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    .line 79
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 83
    instance-of v0, p1, Landroid/media/TextTrackCueSpan;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 84
    return v1

    .line 86
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/media/TextTrackCueSpan;

    .line 87
    .local v0, "span":Landroid/media/TextTrackCueSpan;
    iget-wide v2, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    iget-wide v4, v0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    iget-object v3, v0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 87
    :cond_1
    return v1
.end method
