.class Landroid/service/voice/VoiceInteractionSessionService$2;
.super Ljava/lang/Object;
.source "VoiceInteractionSessionService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSessionService;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSessionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/voice/VoiceInteractionSessionService;

    .line 55
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSessionService$2;->this$0:Landroid/service/voice/VoiceInteractionSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 58
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 59
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSessionService$2;->this$0:Landroid/service/voice/VoiceInteractionSessionService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/voice/VoiceInteractionSessionService;->doNewSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 64
    :goto_0
    return-void
.end method
