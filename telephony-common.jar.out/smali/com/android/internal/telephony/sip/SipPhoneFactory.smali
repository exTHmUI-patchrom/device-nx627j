.class public Lcom/android/internal/telephony/sip/SipPhoneFactory;
.super Ljava/lang/Object;
.source "SipPhoneFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 3
    .param p0, "sipUri"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNotifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .line 42
    :try_start_0
    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v0, p0}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 43
    .local v0, "profile":Landroid/net/sip/SipProfile;
    new-instance v1, Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/internal/telephony/sip/SipPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 44
    .end local v0    # "profile":Landroid/net/sip/SipProfile;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/text/ParseException;
    const-string v1, "SipPhoneFactory"

    const-string v2, "makePhone"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    const/4 v1, 0x0

    return-object v1
.end method
