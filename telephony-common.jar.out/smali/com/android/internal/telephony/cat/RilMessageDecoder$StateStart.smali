.class Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;
.super Lcom/android/internal/util/State;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/RilMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateStart"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p2, "x1"    # Lcom/android/internal/telephony/cat/RilMessageDecoder$1;

    .line 131
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$200(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$300(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateStart unexpected expecting START=1 got "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    :cond_1
    :goto_0
    return v1
.end method
