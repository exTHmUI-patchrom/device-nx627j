.class Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;
.super Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.source "SoundTriggerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecognitionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/soundtrigger/SoundTriggerDetector;


# direct methods
.method private constructor <init>(Landroid/media/soundtrigger/SoundTriggerDetector;)V
    .locals 0

    .line 310
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-direct {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/media/soundtrigger/SoundTriggerDetector$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/soundtrigger/SoundTriggerDetector;
    .param p2, "x1"    # Landroid/media/soundtrigger/SoundTriggerDetector$1;

    .line 310
    invoke-direct {p0, p1}, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;-><init>(Landroid/media/soundtrigger/SoundTriggerDetector;)V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .param p1, "status"    # I

    .line 335
    const-string v0, "SoundTriggerDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->access$100(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 337
    return-void
.end method

.method public onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .line 317
    const-string v0, "SoundTriggerDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGenericSoundTriggerDetected()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->access$100(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;

    iget-boolean v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->triggerInData:Z

    iget-boolean v3, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->captureAvailable:Z

    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    iget v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->captureSession:I

    iget-object v6, p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->data:[B

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;-><init>(ZZLandroid/media/AudioFormat;I[BLandroid/media/soundtrigger/SoundTriggerDetector$1;)V

    const/4 v1, 0x2

    invoke-static {v0, v1, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 323
    return-void
.end method

.method public onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 327
    const-string v0, "SoundTriggerDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring onKeyphraseDetected() called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public onRecognitionPaused()V
    .locals 2

    .line 344
    const-string v0, "SoundTriggerDetector"

    const-string/jumbo v1, "onRecognitionPaused()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->access$100(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 346
    return-void
.end method

.method public onRecognitionResumed()V
    .locals 2

    .line 353
    const-string v0, "SoundTriggerDetector"

    const-string/jumbo v1, "onRecognitionResumed()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$RecognitionCallback;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->access$100(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 355
    return-void
.end method
