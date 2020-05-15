.class Lcom/android/internal/telephony/LocaleTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "LocaleTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LocaleTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LocaleTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LocaleTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/LocaleTracker;

    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/LocaleTracker$1;->this$0:Lcom/android/internal/telephony/LocaleTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 115
    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "phone"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, "phoneId":I
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker$1;->this$0:Lcom/android/internal/telephony/LocaleTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/LocaleTracker;->access$000(Lcom/android/internal/telephony/LocaleTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/internal/telephony/LocaleTracker$1;->this$0:Lcom/android/internal/telephony/LocaleTracker;

    const-string v3, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/LocaleTracker;->access$100(Lcom/android/internal/telephony/LocaleTracker;I)V

    .line 122
    .end local v0    # "phoneId":I
    :cond_0
    return-void
.end method
