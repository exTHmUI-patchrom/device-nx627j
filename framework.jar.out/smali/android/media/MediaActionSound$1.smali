.class Landroid/media/MediaActionSound$1;
.super Ljava/lang/Object;
.source "MediaActionSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaActionSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaActionSound;


# direct methods
.method constructor <init>(Landroid/media/MediaActionSound;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaActionSound;

    .line 263
    iput-object p1, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 12
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .line 266
    iget-object v0, p0, Landroid/media/MediaActionSound$1;->this$0:Landroid/media/MediaActionSound;

    invoke-static {v0}, Landroid/media/MediaActionSound;->access$000(Landroid/media/MediaActionSound;)[Landroid/media/MediaActionSound$SoundState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 267
    .local v4, "sound":Landroid/media/MediaActionSound$SoundState;
    iget v5, v4, Landroid/media/MediaActionSound$SoundState;->id:I

    if-eq v5, p2, :cond_0

    .line 268
    nop

    .line 266
    .end local v4    # "sound":Landroid/media/MediaActionSound$SoundState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    .restart local v4    # "sound":Landroid/media/MediaActionSound$SoundState;
    :cond_0
    const/4 v0, 0x0

    .line 271
    .local v0, "playSoundId":I
    monitor-enter v4

    .line 272
    if-eqz p3, :cond_1

    .line 273
    :try_start_0
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 274
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->id:I

    .line 275
    const-string v1, "MediaActionSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnLoadCompleteListener() error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " loading sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Landroid/media/MediaActionSound$SoundState;->name:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    monitor-exit v4

    return-void

    .line 292
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 279
    :cond_1
    iget v1, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    const/4 v2, 0x3

    packed-switch v1, :pswitch_data_0

    .line 288
    const-string v1, "MediaActionSound"

    goto :goto_1

    .line 284
    :pswitch_0
    iget v1, v4, Landroid/media/MediaActionSound$SoundState;->id:I

    move v0, v1

    .line 285
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 286
    goto :goto_2

    .line 281
    :pswitch_1
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    .line 282
    goto :goto_2

    .line 288
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnLoadCompleteListener() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Landroid/media/MediaActionSound$SoundState;->name:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    if-eqz v0, :cond_2

    .line 294
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v5, p1

    move v6, v0

    invoke-virtual/range {v5 .. v11}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_4

    .line 292
    :goto_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 298
    .end local v0    # "playSoundId":I
    .end local v4    # "sound":Landroid/media/MediaActionSound$SoundState;
    :cond_2
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
