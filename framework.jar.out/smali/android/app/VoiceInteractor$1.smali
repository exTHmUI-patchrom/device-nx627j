.class Landroid/app/VoiceInteractor$1;
.super Ljava/lang/Object;
.source "VoiceInteractor.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/VoiceInteractor;


# direct methods
.method constructor <init>(Landroid/app/VoiceInteractor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/VoiceInteractor;

    .line 77
    iput-object p1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 80
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 83
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 145
    :pswitch_0
    iget-object v1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v1, v2, v3}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v1

    .line 148
    .local v1, "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v1, :cond_4

    .line 149
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->onCancel()V

    .line 150
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->clear()V

    .end local v1    # "request":Landroid/app/VoiceInteractor$Request;
    goto/16 :goto_1

    .line 131
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 132
    .local v1, "complete":Z
    :goto_0
    iget-object v4, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v4, v5, v1}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v4

    .line 136
    .local v4, "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v4, :cond_4

    .line 137
    move-object v5, v4

    check-cast v5, Landroid/app/VoiceInteractor$CommandRequest;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_1

    move v2, v3

    nop

    :cond_1
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v5, v2, v3}, Landroid/app/VoiceInteractor$CommandRequest;->onCommandResult(ZLandroid/os/Bundle;)V

    .line 139
    if-eqz v1, :cond_4

    .line 140
    invoke-virtual {v4}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto/16 :goto_1

    .line 121
    .end local v1    # "complete":Z
    .end local v4    # "request":Landroid/app/VoiceInteractor$Request;
    :pswitch_2
    iget-object v1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v1, v2, v3}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v1

    .line 125
    .local v1, "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v1, :cond_4

    .line 126
    move-object v2, v1

    check-cast v2, Landroid/app/VoiceInteractor$AbortVoiceRequest;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/VoiceInteractor$AbortVoiceRequest;->onAbortResult(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto :goto_1

    .line 111
    .end local v1    # "request":Landroid/app/VoiceInteractor$Request;
    :pswitch_3
    iget-object v1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v1, v2, v3}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v1

    .line 115
    .restart local v1    # "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v1, :cond_4

    .line 116
    move-object v2, v1

    check-cast v2, Landroid/app/VoiceInteractor$CompleteVoiceRequest;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->onCompleteResult(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto :goto_1

    .line 96
    .end local v1    # "request":Landroid/app/VoiceInteractor$Request;
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_2

    move v2, v3

    nop

    :cond_2
    move v1, v2

    .line 97
    .local v1, "complete":Z
    iget-object v2, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v2, v3, v1}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v2

    .line 102
    .local v2, "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v2, :cond_4

    .line 103
    move-object v3, v2

    check-cast v3, Landroid/app/VoiceInteractor$PickOptionRequest;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v3, v1, v4, v5}, Landroid/app/VoiceInteractor$PickOptionRequest;->onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    .line 105
    if-eqz v1, :cond_4

    .line 106
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto :goto_1

    .line 85
    .end local v1    # "complete":Z
    .end local v2    # "request":Landroid/app/VoiceInteractor$Request;
    :pswitch_5
    iget-object v1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v1, v4, v3}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v1

    .line 89
    .local v1, "request":Landroid/app/VoiceInteractor$Request;
    if-eqz v1, :cond_4

    .line 90
    move-object v4, v1

    check-cast v4, Landroid/app/VoiceInteractor$ConfirmationRequest;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_3

    move v2, v3

    nop

    :cond_3
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v4, v2, v3}, Landroid/app/VoiceInteractor$ConfirmationRequest;->onConfirmationResult(ZLandroid/os/Bundle;)V

    .line 92
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->clear()V

    .line 154
    .end local v1    # "request":Landroid/app/VoiceInteractor$Request;
    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
