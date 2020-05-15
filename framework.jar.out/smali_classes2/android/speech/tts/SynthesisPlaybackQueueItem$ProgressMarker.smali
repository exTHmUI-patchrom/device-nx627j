.class Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;
.super Ljava/lang/Object;
.source "SynthesisPlaybackQueueItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/SynthesisPlaybackQueueItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressMarker"
.end annotation


# instance fields
.field public final end:I

.field public final frames:I

.field public final start:I

.field final synthetic this$0:Landroid/speech/tts/SynthesisPlaybackQueueItem;


# direct methods
.method public constructor <init>(Landroid/speech/tts/SynthesisPlaybackQueueItem;III)V
    .locals 0
    .param p2, "frames"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 219
    iput-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->this$0:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput p2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->frames:I

    .line 221
    iput p3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->start:I

    .line 222
    iput p4, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->end:I

    .line 223
    return-void
.end method
