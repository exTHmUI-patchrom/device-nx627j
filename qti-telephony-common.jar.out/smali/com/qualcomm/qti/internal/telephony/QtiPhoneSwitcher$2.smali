.class Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;
.super Ljava/lang/Object;
.source "QtiPhoneSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onAllowDataResponse(ILandroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    .line 499
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->val$phoneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    const-string v1, "Running retry connect/allow_data"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$300(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->val$phoneId:I

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$400(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->val$phoneId:I

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resendDataAllowed(I)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    const-string v1, "Abandon Retry"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$500(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->val$phoneId:I

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$600(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)V

    .line 509
    :goto_0
    return-void
.end method
