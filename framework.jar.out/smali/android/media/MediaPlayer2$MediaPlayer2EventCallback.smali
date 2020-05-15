.class public abstract Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;
.super Ljava/lang/Object;
.source "MediaPlayer2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MediaPlayer2EventCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallCompleted(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer2;
    .param p2, "dsd"    # Landroid/media/DataSourceDesc;
    .param p3, "what"    # I
    .param p4, "status"    # I

    .line 1788
    return-void
.end method

.method public onCommandLabelReached(Landroid/media/MediaPlayer2;Ljava/lang/Object;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer2;
    .param p2, "label"    # Ljava/lang/Object;

    .line 1807
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer2;
    .param p2, "dsd"    # Landroid/media/DataSourceDesc;
    .param p3, "what"    # I
    .param p4, "extra"    # I

    .line 1765
    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer2;
    .param p2, "dsd"    # Landroid/media/DataSourceDesc;
    .param p3, "what"    # I
    .param p4, "extra"    # I

    .line 1776
    return-void
.end method

.method public onMediaTimeChanged(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;Landroid/media/MediaTimestamp;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer2;
    .param p2, "dsd"    # Landroid/media/DataSourceDesc;
    .param p3, "timestamp"    # Landroid/media/MediaTimestamp;

    .line 1798
    return-void
.end method

.method public onTimedMetaDataAvailable(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;Landroid/media/TimedMetaData;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer2;
    .param p2, "dsd"    # Landroid/media/DataSourceDesc;
    .param p3, "data"    # Landroid/media/TimedMetaData;

    .line 1753
    return-void
.end method

.method public onTimedText(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;Landroid/media/TimedText;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer2;
    .param p2, "dsd"    # Landroid/media/DataSourceDesc;
    .param p3, "text"    # Landroid/media/TimedText;

    .line 1732
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer2;
    .param p2, "dsd"    # Landroid/media/DataSourceDesc;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 1721
    return-void
.end method
