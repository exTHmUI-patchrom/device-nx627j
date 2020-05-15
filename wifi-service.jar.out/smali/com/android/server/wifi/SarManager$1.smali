.class Lcom/android/server/wifi/SarManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/SarManager;->registerVoiceStreamListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SarManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SarManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/SarManager;

    .line 260
    iput-object p1, p0, Lcom/android/server/wifi/SarManager$1;->this$0:Lcom/android/server/wifi/SarManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 263
    iget-object v0, p0, Lcom/android/server/wifi/SarManager$1;->this$0:Lcom/android/server/wifi/SarManager;

    invoke-static {v0}, Lcom/android/server/wifi/SarManager;->access$100(Lcom/android/server/wifi/SarManager;)Z

    move-result v0

    .line 264
    .local v0, "voiceStreamActive":Z
    if-nez v0, :cond_0

    .line 266
    return-void

    .line 269
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 271
    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 272
    .local v2, "streamType":I
    const-string v4, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 274
    .local v4, "device":I
    const-string v5, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 277
    .local v3, "oldDevice":I
    if-nez v2, :cond_5

    .line 278
    iget-object v5, p0, Lcom/android/server/wifi/SarManager$1;->this$0:Lcom/android/server/wifi/SarManager;

    invoke-static {v5}, Lcom/android/server/wifi/SarManager;->access$200(Lcom/android/server/wifi/SarManager;)Lcom/android/server/wifi/SarInfo;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wifi/SarInfo;->isEarPieceActive:Z

    .line 279
    .local v5, "earPieceActive":Z
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 280
    iget-object v6, p0, Lcom/android/server/wifi/SarManager$1;->this$0:Lcom/android/server/wifi/SarManager;

    invoke-static {v6}, Lcom/android/server/wifi/SarManager;->access$300(Lcom/android/server/wifi/SarManager;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 281
    const-string v6, "WifiSarManager"

    const-string v7, "Switching to earpiece : HEAD ON"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v6, "WifiSarManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Old device = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    .line 285
    :cond_2
    if-ne v3, v6, :cond_4

    .line 286
    iget-object v6, p0, Lcom/android/server/wifi/SarManager$1;->this$0:Lcom/android/server/wifi/SarManager;

    invoke-static {v6}, Lcom/android/server/wifi/SarManager;->access$300(Lcom/android/server/wifi/SarManager;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 287
    const-string v6, "WifiSarManager"

    const-string v7, "Switching from earpiece : HEAD OFF"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v6, "WifiSarManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New device = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_3
    const/4 v5, 0x0

    .line 293
    :cond_4
    :goto_0
    iget-object v6, p0, Lcom/android/server/wifi/SarManager$1;->this$0:Lcom/android/server/wifi/SarManager;

    invoke-static {v6}, Lcom/android/server/wifi/SarManager;->access$200(Lcom/android/server/wifi/SarManager;)Lcom/android/server/wifi/SarInfo;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/server/wifi/SarInfo;->isEarPieceActive:Z

    if-eq v5, v6, :cond_5

    .line 294
    iget-object v6, p0, Lcom/android/server/wifi/SarManager$1;->this$0:Lcom/android/server/wifi/SarManager;

    invoke-static {v6}, Lcom/android/server/wifi/SarManager;->access$200(Lcom/android/server/wifi/SarManager;)Lcom/android/server/wifi/SarInfo;

    move-result-object v6

    iput-boolean v5, v6, Lcom/android/server/wifi/SarInfo;->isEarPieceActive:Z

    .line 295
    iget-object v6, p0, Lcom/android/server/wifi/SarManager$1;->this$0:Lcom/android/server/wifi/SarManager;

    invoke-static {v6}, Lcom/android/server/wifi/SarManager;->access$400(Lcom/android/server/wifi/SarManager;)V

    .line 298
    .end local v5    # "earPieceActive":Z
    :cond_5
    return-void
.end method
