.class public abstract Landroid/media/AudioTrack$StreamEventCallback;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StreamEventCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamDataRequest(Landroid/media/AudioTrack;)V
    .locals 0
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 3026
    return-void
.end method

.method public onStreamPresentationEnd(Landroid/media/AudioTrack;)V
    .locals 0
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 3021
    return-void
.end method

.method public onTearDown(Landroid/media/AudioTrack;)V
    .locals 0
    .param p1, "track"    # Landroid/media/AudioTrack;

    .line 3014
    return-void
.end method
