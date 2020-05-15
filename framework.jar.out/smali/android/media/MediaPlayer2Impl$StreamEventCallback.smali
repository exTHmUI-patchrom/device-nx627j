.class Landroid/media/MediaPlayer2Impl$StreamEventCallback;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamEventCallback"
.end annotation


# instance fields
.field public mJAudioTrackPtr:J

.field public mNativeCallbackPtr:J

.field public mUserDataPtr:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0
    .param p1, "jAudioTrackPtr"    # J
    .param p3, "nativeCallbackPtr"    # J
    .param p5, "userDataPtr"    # J

    .line 4065
    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    .line 4066
    iput-wide p1, p0, Landroid/media/MediaPlayer2Impl$StreamEventCallback;->mJAudioTrackPtr:J

    .line 4067
    iput-wide p3, p0, Landroid/media/MediaPlayer2Impl$StreamEventCallback;->mNativeCallbackPtr:J

    .line 4068
    iput-wide p5, p0, Landroid/media/MediaPlayer2Impl$StreamEventCallback;->mUserDataPtr:J

    .line 4069
    return-void
.end method


# virtual methods
.method public onStreamDataRequest(Landroid/media/AudioTrack;)V
    .locals 6
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 4083
    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl$StreamEventCallback;->mJAudioTrackPtr:J

    iget-wide v2, p0, Landroid/media/MediaPlayer2Impl$StreamEventCallback;->mNativeCallbackPtr:J

    iget-wide v4, p0, Landroid/media/MediaPlayer2Impl$StreamEventCallback;->mUserDataPtr:J

    invoke-static/range {v0 .. v5}, Landroid/media/MediaPlayer2Impl;->access$6400(JJJ)V

    .line 4085
    return-void
.end method

.method public onStreamPresentationEnd(Landroid/media/AudioTrack;)V
    .locals 4
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 4078
    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl$StreamEventCallback;->mNativeCallbackPtr:J

    iget-wide v2, p0, Landroid/media/MediaPlayer2Impl$StreamEventCallback;->mUserDataPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaPlayer2Impl;->access$6300(JJ)V

    .line 4079
    return-void
.end method

.method public onTearDown(Landroid/media/AudioTrack;)V
    .locals 4
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 4073
    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl$StreamEventCallback;->mNativeCallbackPtr:J

    iget-wide v2, p0, Landroid/media/MediaPlayer2Impl$StreamEventCallback;->mUserDataPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaPlayer2Impl;->access$6200(JJ)V

    .line 4074
    return-void
.end method
