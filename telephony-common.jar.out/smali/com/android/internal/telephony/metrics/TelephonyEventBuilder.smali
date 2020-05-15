.class public Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
.super Ljava/lang/Object;
.source "TelephonyEventBuilder.java"


# instance fields
.field private final mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    .line 43
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "phoneId"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-wide p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput p3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    .line 48
    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    return-object v0
.end method

.method public setCarrierIdMatching(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "carrierIdMatching"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xd

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    .line 128
    return-object p0
.end method

.method public setCarrierKeyChange(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "carrierKeyChange"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xe

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    .line 134
    return-object p0
.end method

.method public setDataCalls([Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "dataCalls"    # [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x7

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 107
    return-object p0
.end method

.method public setDataStallRecoveryAction(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "action"    # I

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xa

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    .line 77
    return-object p0
.end method

.method public setDeactivateDataCall(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "request"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x8

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 95
    return-object p0
.end method

.method public setDeactivateDataCallResponse(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "errno"    # I

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0x9

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    .line 101
    return-object p0
.end method

.method public setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "capabilities"    # Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 71
    return-object p0
.end method

.method public setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 65
    return-object p0
.end method

.method public setModemRestart(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "modemRestart"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xb

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    .line 119
    return-object p0
.end method

.method public setNITZ(J)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "timestamp"    # J

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/16 v1, 0xc

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-wide p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    .line 113
    return-object p0
.end method

.method public setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 59
    return-object p0
.end method

.method public setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "settings"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 53
    return-object p0
.end method

.method public setSetupDataCall(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "request"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x5

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 83
    return-object p0
.end method

.method public setSetupDataCallResponse(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;
    .locals 2
    .param p1, "rsp"    # Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    const/4 v1, 0x6

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->mEvent:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .line 89
    return-object p0
.end method
