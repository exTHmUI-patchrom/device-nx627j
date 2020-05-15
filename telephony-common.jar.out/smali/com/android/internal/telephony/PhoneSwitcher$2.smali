.class Lcom/android/internal/telephony/PhoneSwitcher$2;
.super Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneSwitcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/PhoneSwitcher;

    .line 179
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher$2;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-direct {p0}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$2;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 183
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 184
    return-void
.end method
