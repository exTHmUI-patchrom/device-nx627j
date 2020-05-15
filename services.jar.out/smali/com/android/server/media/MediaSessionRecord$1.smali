.class Lcom/android/server/media/MediaSessionRecord$1;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;

.field final synthetic val$direction:I

.field final synthetic val$flags:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$previousFlagPlaySound:I

.field final synthetic val$stream:I

.field final synthetic val$uid:I

.field final synthetic val$useSuggested:Z


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;ZIIILjava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 467
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$useSuggested:Z

    iput p3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$stream:I

    iput p4, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$direction:I

    iput p5, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$flags:I

    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$packageName:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$uid:I

    iput p8, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$previousFlagPlaySound:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 471
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$useSuggested:Z

    if-eqz v0, :cond_1

    .line 472
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$stream:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$200(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$stream:I

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$direction:I

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$flags:I

    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$uid:I

    invoke-virtual/range {v1 .. v6}, Landroid/media/AudioManagerInternal;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$200(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    move-result-object v1

    const/high16 v2, -0x80000000

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$direction:I

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$flags:I

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$previousFlagPlaySound:I

    or-int/2addr v4, v0

    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$uid:I

    invoke-virtual/range {v1 .. v6}, Landroid/media/AudioManagerInternal;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V

    goto :goto_0

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$200(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$stream:I

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$direction:I

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$flags:I

    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$uid:I

    invoke-virtual/range {v1 .. v6}, Landroid/media/AudioManagerInternal;->adjustStreamVolumeForUid(IIILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    goto :goto_1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaSessionRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot adjust volume: direction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$direction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$stream:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$flags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", useSuggested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$useSuggested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", previousFlagPlaySound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$previousFlagPlaySound:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    return-void
.end method
