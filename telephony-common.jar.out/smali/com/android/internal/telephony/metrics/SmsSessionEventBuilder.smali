.class public Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
.super Ljava/lang/Object;
.source "SmsSessionEventBuilder.java"


# instance fields
.field mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    .line 34
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    .line 35
    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    return-object v0
.end method

.method public setCellBroadcastMessage(Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "msg"    # Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    .line 99
    return-object p0
.end method

.method public setDataCalls([Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "dataCalls"    # [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 84
    return-object p0
.end method

.method public setDelay(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "delay"    # I

    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    .line 39
    return-object p0
.end method

.method public setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "code"    # I

    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    .line 49
    return-object p0
.end method

.method public setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "format"    # I

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->format:I

    .line 94
    return-object p0
.end method

.method public setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "capabilities"    # Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 79
    return-object p0
.end method

.method public setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 74
    return-object p0
.end method

.method public setImsServiceErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "errno"    # I

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    .line 59
    return-object p0
.end method

.method public setRilErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "errno"    # I

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    .line 54
    return-object p0
.end method

.method public setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "id"    # I

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    .line 89
    return-object p0
.end method

.method public setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 69
    return-object p0
.end method

.method public setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "settings"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 64
    return-object p0
.end method

.method public setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;
    .locals 1
    .param p1, "tech"    # I

    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->tech:I

    .line 44
    return-object p0
.end method
