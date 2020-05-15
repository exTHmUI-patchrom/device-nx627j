.class public Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
.super Ljava/lang/Object;
.source "CallSessionEventBuilder.java"


# instance fields
.field private final mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    .line 36
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    .line 37
    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    return-object v0
.end method

.method public setAudioCodec(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "audioCodec"    # I

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->audioCodec:I

    .line 137
    return-object p0
.end method

.method public setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "callIndex"    # I

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callIndex:I

    .line 61
    return-object p0
.end method

.method public setCallState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "state"    # I

    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callState:I

    .line 66
    return-object p0
.end method

.method public setDataCalls([Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "dataCalls"    # [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 116
    return-object p0
.end method

.method public setDelay(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "delay"    # I

    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->delay:I

    .line 41
    return-object p0
.end method

.method public setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "capabilities"    # Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 111
    return-object p0
.end method

.method public setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "imsCommand"    # I

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCommand:I

    .line 76
    return-object p0
.end method

.method public setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 106
    return-object p0
.end method

.method public setImsReasonInfo(Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "reasonInfo"    # Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    .line 81
    return-object p0
.end method

.method public setNITZ(J)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "timestamp"    # J

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-wide p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis:J

    .line 126
    return-object p0
.end method

.method public setPhoneState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "phoneState"    # I

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->phoneState:I

    .line 121
    return-object p0
.end method

.method public setRilCalls([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "rilCalls"    # [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 131
    return-object p0
.end method

.method public setRilError(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "rilError"    # I

    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->error:I

    .line 56
    return-object p0
.end method

.method public setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "rilRequestType"    # I

    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequest:I

    .line 46
    return-object p0
.end method

.method public setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "rilRequestId"    # I

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequestId:I

    .line 51
    return-object p0
.end method

.method public setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 101
    return-object p0
.end method

.method public setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "settings"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 96
    return-object p0
.end method

.method public setSrcAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "tech"    # I

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech:I

    .line 86
    return-object p0
.end method

.method public setSrvccState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "srvccState"    # I

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srvccState:I

    .line 71
    return-object p0
.end method

.method public setTargetAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;
    .locals 1
    .param p1, "tech"    # I

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech:I

    .line 91
    return-object p0
.end method
