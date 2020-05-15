.class Landroid/service/voice/VoiceInteractionSession$2$1;
.super Ljava/lang/Thread;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/voice/VoiceInteractionSession$2;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/voice/VoiceInteractionSession$2;

.field final synthetic val$content:Landroid/app/assist/AssistContent;

.field final synthetic val$count:I

.field final synthetic val$data:Landroid/os/Bundle;

.field final synthetic val$index:I

.field final synthetic val$structure:Landroid/app/assist/AssistStructure;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession$2;Ljava/lang/String;Landroid/app/assist/AssistStructure;Landroid/os/Bundle;Landroid/app/assist/AssistContent;II)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/voice/VoiceInteractionSession$2;
    .param p2, "x0"    # Ljava/lang/String;

    .line 240
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->this$1:Landroid/service/voice/VoiceInteractionSession$2;

    iput-object p3, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    iput-object p4, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$data:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$content:Landroid/app/assist/AssistContent;

    iput p6, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$index:I

    iput p7, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$count:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "failure":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    if-eqz v1, :cond_0

    .line 246
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v1}, Landroid/app/assist/AssistStructure;->ensureData()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_0

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "VoiceInteractionSession"

    const-string v3, "Failure retrieving AssistStructure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    move-object v0, v1

    .line 252
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->this$1:Landroid/service/voice/VoiceInteractionSession$2;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v9, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->this$1:Landroid/service/voice/VoiceInteractionSession$2;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x68

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$data:Landroid/os/Bundle;

    .line 253
    if-nez v0, :cond_1

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v6, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$content:Landroid/app/assist/AssistContent;

    iget v7, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$index:I

    iget v8, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$count:I

    .line 252
    move-object v5, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOOII(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 255
    return-void
.end method
