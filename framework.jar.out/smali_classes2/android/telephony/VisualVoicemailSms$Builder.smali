.class public Landroid/telephony/VisualVoicemailSms$Builder;
.super Ljava/lang/Object;
.source "VisualVoicemailSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFields:Landroid/os/Bundle;

.field private mMessageBody:Ljava/lang/String;

.field private mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/VisualVoicemailSms$Builder;)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/VisualVoicemailSms$Builder;

    .line 85
    iget-object v0, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telephony/VisualVoicemailSms$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/VisualVoicemailSms$Builder;

    .line 85
    iget-object v0, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telephony/VisualVoicemailSms$Builder;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/VisualVoicemailSms$Builder;

    .line 85
    iget-object v0, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mFields:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Landroid/telephony/VisualVoicemailSms$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/VisualVoicemailSms$Builder;

    .line 85
    iget-object v0, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Landroid/telephony/VisualVoicemailSms;
    .locals 1

    .line 93
    new-instance v0, Landroid/telephony/VisualVoicemailSms;

    invoke-direct {v0, p0}, Landroid/telephony/VisualVoicemailSms;-><init>(Landroid/telephony/VisualVoicemailSms$Builder;)V

    return-object v0
.end method

.method public setFields(Landroid/os/Bundle;)Landroid/telephony/VisualVoicemailSms$Builder;
    .locals 0
    .param p1, "fields"    # Landroid/os/Bundle;

    .line 107
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mFields:Landroid/os/Bundle;

    .line 108
    return-object p0
.end method

.method public setMessageBody(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSms$Builder;
    .locals 0
    .param p1, "messageBody"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mMessageBody:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/VisualVoicemailSms$Builder;
    .locals 0
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 97
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 98
    return-object p0
.end method

.method public setPrefix(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSms$Builder;
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Landroid/telephony/VisualVoicemailSms$Builder;->mPrefix:Ljava/lang/String;

    .line 103
    return-object p0
.end method
