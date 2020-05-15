.class Lcom/android/server/display/NubiaRampAnimator$1;
.super Landroid/os/Handler;
.source "NubiaRampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/NubiaRampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/NubiaRampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/NubiaRampAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/NubiaRampAnimator;

    .line 223
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator$1;, "Lcom/android/server/display/NubiaRampAnimator$1;"
    iput-object p1, p0, Lcom/android/server/display/NubiaRampAnimator$1;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 226
    .local p0, "this":Lcom/android/server/display/NubiaRampAnimator$1;, "Lcom/android/server/display/NubiaRampAnimator$1;"
    invoke-static {}, Lcom/android/server/display/NubiaRampAnimator;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDcSetBrightAndAlphaAnimating:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/NubiaRampAnimator$1;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v2}, Lcom/android/server/display/NubiaRampAnimator;->access$100(Lcom/android/server/display/NubiaRampAnimator;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 243
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$1;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v0, v1}, Lcom/android/server/display/NubiaRampAnimator;->access$300(Lcom/android/server/display/NubiaRampAnimator;Z)V

    goto :goto_0

    .line 239
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$1;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/NubiaRampAnimator;->access$600(Lcom/android/server/display/NubiaRampAnimator;)V

    .line 240
    goto :goto_0

    .line 229
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$1;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/android/server/display/NubiaRampAnimator;->access$200(Lcom/android/server/display/NubiaRampAnimator;I)V

    .line 230
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$1;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/NubiaRampAnimator;->access$100(Lcom/android/server/display/NubiaRampAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$1;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v0, v1}, Lcom/android/server/display/NubiaRampAnimator;->access$300(Lcom/android/server/display/NubiaRampAnimator;Z)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$1;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    invoke-static {v0}, Lcom/android/server/display/NubiaRampAnimator;->access$400(Lcom/android/server/display/NubiaRampAnimator;)V

    .line 234
    iget-object v0, p0, Lcom/android/server/display/NubiaRampAnimator$1;->this$0:Lcom/android/server/display/NubiaRampAnimator;

    const-wide/16 v3, 0x7d0

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/display/NubiaRampAnimator;->access$500(Lcom/android/server/display/NubiaRampAnimator;IJ)V

    .line 236
    nop

    .line 247
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
