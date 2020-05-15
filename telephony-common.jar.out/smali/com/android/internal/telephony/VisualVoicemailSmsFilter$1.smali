.class Lcom/android/internal/telephony/VisualVoicemailSmsFilter$1;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilter.java"

# interfaces
.implements Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/VisualVoicemailSmsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromSubId(I)Landroid/telecom/PhoneAccountHandle;
    .locals 4
    .param p1, "subId"    # I

    .line 79
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    return-object v1

    .line 82
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 83
    .local v0, "phoneId":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 84
    return-object v1

    .line 86
    :cond_1
    new-instance v1, Landroid/telecom/PhoneAccountHandle;

    invoke-static {}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->access$000()Landroid/content/ComponentName;

    move-result-object v2

    .line 87
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getFullIccSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 86
    return-object v1
.end method
