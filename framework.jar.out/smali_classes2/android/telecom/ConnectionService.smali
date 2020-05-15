.class public abstract Landroid/telecom/ConnectionService;
.super Landroid/app/Service;
.source "ConnectionService.java"


# static fields
.field public static final EXTRA_IS_HANDOVER:Ljava/lang/String; = "android.telecom.extra.IS_HANDOVER"

.field private static final MSG_ABORT:I = 0x3

.field private static final MSG_ADD_CONNECTION_SERVICE_ADAPTER:I = 0x1

.field private static final MSG_ADD_PARTICIPANT_WITH_CONFERENCE:I = 0x28

.field private static final MSG_ANSWER:I = 0x4

.field private static final MSG_ANSWER_VIDEO:I = 0x11

.field private static final MSG_CONFERENCE:I = 0xc

.field private static final MSG_CONNECTION_SERVICE_FOCUS_GAINED:I = 0x1f

.field private static final MSG_CONNECTION_SERVICE_FOCUS_LOST:I = 0x1e

.field private static final MSG_CREATE_CONNECTION:I = 0x2

.field private static final MSG_CREATE_CONNECTION_COMPLETE:I = 0x1d

.field private static final MSG_CREATE_CONNECTION_FAILED:I = 0x19

.field private static final MSG_DEFLECT:I = 0x22

.field private static final MSG_DISCONNECT:I = 0x6

.field private static final MSG_HANDOVER_COMPLETE:I = 0x21

.field private static final MSG_HANDOVER_FAILED:I = 0x20

.field private static final MSG_HOLD:I = 0x7

.field private static final MSG_MERGE_CONFERENCE:I = 0x12

.field private static final MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x9

.field private static final MSG_ON_EXTRAS_CHANGED:I = 0x18

.field private static final MSG_ON_POST_DIAL_CONTINUE:I = 0xe

.field private static final MSG_ON_START_RTT:I = 0x1a

.field private static final MSG_ON_STOP_RTT:I = 0x1b

.field private static final MSG_PLAY_DTMF_TONE:I = 0xa

.field private static final MSG_PULL_EXTERNAL_CALL:I = 0x16

.field private static final MSG_REJECT:I = 0x5

.field private static final MSG_REJECT_WITH_MESSAGE:I = 0x14

.field private static final MSG_REMOVE_CONNECTION_SERVICE_ADAPTER:I = 0x10

.field private static final MSG_RTT_UPGRADE_RESPONSE:I = 0x1c

.field private static final MSG_SEND_CALL_EVENT:I = 0x17

.field private static final MSG_SILENCE:I = 0x15

.field private static final MSG_SPLIT_FROM_CONFERENCE:I = 0xd

.field private static final MSG_STOP_DTMF_TONE:I = 0xb

.field private static final MSG_SWAP_CONFERENCE:I = 0x13

.field private static final MSG_UNHOLD:I = 0x8

.field private static final PII_DEBUG:Z

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.ConnectionService"

.field private static final SESSION_ABORT:Ljava/lang/String; = "CS.ab"

.field private static final SESSION_ADD_CS_ADAPTER:Ljava/lang/String; = "CS.aCSA"

.field private static final SESSION_ANSWER:Ljava/lang/String; = "CS.an"

.field private static final SESSION_ANSWER_VIDEO:Ljava/lang/String; = "CS.anV"

.field private static final SESSION_CALL_AUDIO_SC:Ljava/lang/String; = "CS.cASC"

.field private static final SESSION_CONFERENCE:Ljava/lang/String; = "CS.c"

.field private static final SESSION_CONNECTION_SERVICE_FOCUS_GAINED:Ljava/lang/String; = "CS.cSFG"

.field private static final SESSION_CONNECTION_SERVICE_FOCUS_LOST:Ljava/lang/String; = "CS.cSFL"

.field private static final SESSION_CREATE_CONN:Ljava/lang/String; = "CS.crCo"

.field private static final SESSION_CREATE_CONN_COMPLETE:Ljava/lang/String; = "CS.crCoC"

.field private static final SESSION_CREATE_CONN_FAILED:Ljava/lang/String; = "CS.crCoF"

.field private static final SESSION_DEFLECT:Ljava/lang/String; = "CS.def"

.field private static final SESSION_DISCONNECT:Ljava/lang/String; = "CS.d"

.field private static final SESSION_EXTRAS_CHANGED:Ljava/lang/String; = "CS.oEC"

.field private static final SESSION_HANDLER:Ljava/lang/String; = "H."

.field private static final SESSION_HANDOVER_COMPLETE:Ljava/lang/String; = "CS.hC"

.field private static final SESSION_HANDOVER_FAILED:Ljava/lang/String; = "CS.haF"

.field private static final SESSION_HOLD:Ljava/lang/String; = "CS.h"

.field private static final SESSION_MERGE_CONFERENCE:Ljava/lang/String; = "CS.mC"

.field private static final SESSION_PLAY_DTMF:Ljava/lang/String; = "CS.pDT"

.field private static final SESSION_POST_DIAL_CONT:Ljava/lang/String; = "CS.oPDC"

.field private static final SESSION_PULL_EXTERNAL_CALL:Ljava/lang/String; = "CS.pEC"

.field private static final SESSION_REJECT:Ljava/lang/String; = "CS.r"

.field private static final SESSION_REJECT_MESSAGE:Ljava/lang/String; = "CS.rWM"

.field private static final SESSION_REMOVE_CS_ADAPTER:Ljava/lang/String; = "CS.rCSA"

.field private static final SESSION_RTT_UPGRADE_RESPONSE:Ljava/lang/String; = "CS.rTRUR"

.field private static final SESSION_SEND_CALL_EVENT:Ljava/lang/String; = "CS.sCE"

.field private static final SESSION_SILENCE:Ljava/lang/String; = "CS.s"

.field private static final SESSION_SPLIT_CONFERENCE:Ljava/lang/String; = "CS.sFC"

.field private static final SESSION_START_RTT:Ljava/lang/String; = "CS.+RTT"

.field private static final SESSION_STOP_DTMF:Ljava/lang/String; = "CS.sDT"

.field private static final SESSION_STOP_RTT:Ljava/lang/String; = "CS.-RTT"

.field private static final SESSION_SWAP_CONFERENCE:Ljava/lang/String; = "CS.sC"

.field private static final SESSION_UNHOLD:Ljava/lang/String; = "CS.u"

.field private static final SESSION_UPDATE_RTT_PIPES:Ljava/lang/String; = "CS.uRTT"

.field private static sNullConnection:Landroid/telecom/Connection;


# instance fields
.field private final mAdapter:Landroid/telecom/ConnectionServiceAdapter;

.field private mAreAccountsInitialized:Z

.field private final mBinder:Landroid/os/IBinder;

.field private final mConferenceById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceListener:Landroid/telecom/Conference$Listener;

.field private final mConnectionById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final mHandler:Landroid/os/Handler;

.field private mId:I

.field private final mIdByConference:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/Conference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdByConnection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/Connection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIdSyncRoot:Ljava/lang/Object;

.field private final mPreInitializationConnectionRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

.field private sNullConference:Landroid/telecom/Conference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/ConnectionService;->PII_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 191
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    .line 192
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    .line 193
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    .line 194
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    .line 195
    new-instance v0, Landroid/telecom/RemoteConnectionManager;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionManager;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    .line 198
    new-instance v0, Landroid/telecom/ConnectionServiceAdapter;

    invoke-direct {v0}, Landroid/telecom/ConnectionServiceAdapter;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 202
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/telecom/ConnectionService;->mIdSyncRoot:Ljava/lang/Object;

    .line 203
    iput v0, p0, Landroid/telecom/ConnectionService;->mId:I

    .line 205
    new-instance v0, Landroid/telecom/ConnectionService$1;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$1;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    .line 680
    new-instance v0, Landroid/telecom/ConnectionService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$2;-><init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    .line 1176
    new-instance v0, Landroid/telecom/ConnectionService$3;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$3;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    .line 1280
    new-instance v0, Landroid/telecom/ConnectionService$4;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$4;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    return-void
.end method

.method private abort(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 1647
    const-string v0, "abort %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1648
    const-string v0, "abort"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAbort()V

    .line 1649
    return-void
.end method

.method static synthetic access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .line 88
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .line 88
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/Uri;

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->deflect(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->silence(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/telecom/CallAudioState;

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method static synthetic access$200(Landroid/telecom/ConnectionService;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .line 88
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAdapterAttached()V

    return-void
.end method

.method static synthetic access$2000(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # C

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->playDtmfTone(Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$2100(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->stopDtmfTone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->addParticipantWithConference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->splitFromConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->mergeConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->swapConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2800(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->pullExternalCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/ConnectionService;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Landroid/telecom/ConnectionService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .line 88
    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->notifyHandoverComplete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Landroid/telecom/ConnectionService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Z

    .line 88
    iput-boolean p1, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return p1
.end method

.method static synthetic access$3100(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->handleExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/telecom/Connection$RttTextStream;

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->startRtt(Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->stopRtt(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/telecom/Connection$RttTextStream;

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->handleRttUpgradeResponse(Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .line 88
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/util/List;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createConnectionIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Landroid/telecom/ConnectionService;Landroid/telecom/Conference;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Landroid/telecom/Conference;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->removeConference(Landroid/telecom/Conference;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .line 88
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/util/List;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/telecom/ConnectionRequest;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .line 88
    invoke-direct/range {p0 .. p5}, Landroid/telecom/ConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    return-void
.end method

.method static synthetic access$4000(Landroid/telecom/ConnectionService;)Landroid/telecom/RemoteConnectionManager;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .line 88
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/telecom/ConnectionService;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .line 88
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAccountsInitialized()V

    return-void
.end method

.method static synthetic access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .line 88
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->notifyCreateConnectionComplete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/telecom/ConnectionRequest;
    .param p4, "x4"    # Z

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telecom/ConnectionService;->createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/telecom/ConnectionRequest;
    .param p3, "x3"    # I

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/ConnectionService;->handoverFailed(Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->abort(Ljava/lang/String;)V

    return-void
.end method

.method private addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;
    .locals 6
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 2539
    const/4 v0, 0x0

    .line 2540
    .local v0, "originalId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    .line 2541
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2542
    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2543
    const-string v1, "addConferenceInternal: conf %s reusing original id %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 2544
    invoke-virtual {p1}, Landroid/telecom/Conference;->getTelecomCallId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object v0, v4, v2

    .line 2543
    invoke-static {p0, v1, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2547
    :cond_0
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2548
    const-string v1, "Re-adding an existing conference: %s."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2549
    :cond_1
    if-eqz p1, :cond_3

    .line 2553
    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 2554
    .local v1, "id":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2555
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2556
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v2}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 2557
    return-object v1

    .line 2560
    .end local v1    # "id":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private addConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "connection"    # Landroid/telecom/Connection;

    .line 2516
    invoke-virtual {p3, p2}, Landroid/telecom/Connection;->setTelecomCallId(Ljava/lang/String;)V

    .line 2517
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2518
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2519
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p3, v0}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 2520
    invoke-virtual {p3, p0}, Landroid/telecom/Connection;->setConnectionService(Landroid/telecom/ConnectionService;)V

    .line 2521
    invoke-virtual {p3, p1}, Landroid/telecom/Connection;->setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)V

    .line 2522
    invoke-virtual {p0, p3}, Landroid/telecom/ConnectionService;->onConnectionAdded(Landroid/telecom/Connection;)V

    .line 2523
    return-void
.end method

.method private addExistingConnectionInternal(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)Ljava/lang/String;
    .locals 5
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .line 2497
    invoke-virtual {p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    .line 2498
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2499
    invoke-virtual {p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2500
    .local v0, "id":Ljava/lang/String;
    const-string v1, "addExistingConnectionInternal - conn %s reusing original id %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2501
    invoke-virtual {p2}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 2500
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2502
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 2505
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "id":Ljava/lang/String;
    goto :goto_0

    .line 2509
    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNextCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2511
    .restart local v0    # "id":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, v0, p2}, Landroid/telecom/ConnectionService;->addConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 2512
    return-object v0
.end method

.method private addParticipantWithConference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "participant"    # Ljava/lang/String;

    .line 1800
    const-string v0, "ConnectionService addParticipantWithConference(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1801
    const-string v0, "addParticipantWithConference"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 1802
    .local v0, "conference":Landroid/telecom/Conference;
    const-string v1, "addParticipantWithConnection"

    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v1

    .line 1803
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1804
    invoke-virtual {p0, v1, p2}, Landroid/telecom/ConnectionService;->onAddParticipant(Landroid/telecom/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 1805
    :cond_0
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 1806
    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onAddParticipant(Ljava/lang/String;)V

    .line 1808
    :cond_1
    :goto_0
    return-void
.end method

.method private answer(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 1657
    const-string v0, "answer %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1658
    const-string v0, "answer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAnswer()V

    .line 1659
    return-void
.end method

.method private answerVideo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .line 1652
    const-string v0, "answerVideo %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1653
    const-string v0, "answer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onAnswer(I)V

    .line 1654
    return-void
.end method

.method private conference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    .line 1738
    const-string v0, "conference %s, %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1741
    const-string v0, "conference"

    invoke-direct {p0, p2, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 1742
    .local v0, "connection2":Landroid/telecom/Connection;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v1

    .line 1743
    .local v1, "conference2":Landroid/telecom/Conference;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-ne v0, v4, :cond_0

    .line 1744
    const-string v4, "conference"

    invoke-direct {p0, p2, v4}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v1

    .line 1745
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-ne v1, v4, :cond_0

    .line 1746
    const-string v4, "Connection2 or Conference2 missing in conference request %s."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-static {p0, v4, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1748
    return-void

    .line 1753
    :cond_0
    const-string v4, "conference"

    invoke-direct {p0, p1, v4}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v4

    .line 1754
    .local v4, "connection1":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v5

    if-ne v4, v5, :cond_3

    .line 1755
    const-string v5, "addConnection"

    invoke-direct {p0, p1, v5}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v5

    .line 1756
    .local v5, "conference1":Landroid/telecom/Conference;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 1757
    const-string v6, "Connection1 or Conference1 missing in conference request %s."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {p0, v6, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1762
    :cond_1
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v3

    if-eq v0, v3, :cond_2

    .line 1764
    invoke-virtual {v5, v0}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    .line 1772
    .end local v5    # "conference1":Landroid/telecom/Conference;
    :goto_0
    goto :goto_1

    .line 1767
    .restart local v5    # "conference1":Landroid/telecom/Conference;
    :cond_2
    const-string v3, "There can only be one conference and an attempt was made to merge two conferences."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1769
    return-void

    .line 1774
    .end local v5    # "conference1":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 1776
    invoke-virtual {v1, v4}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_1

    .line 1779
    :cond_4
    invoke-virtual {p0, v4, v0}, Landroid/telecom/ConnectionService;->onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V

    .line 1782
    :goto_1
    return-void
.end method

.method private createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 37
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1529
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 1530
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v7, "android.telecom.extra.IS_HANDOVER"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 1531
    .local v4, "isLegacyHandover":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "android.telecom.extra.IS_HANDOVER_CONNECTION"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    .line 1533
    .local v7, "isHandover":Z
    :goto_1
    const-string v8, "createConnection, callManagerAccount: %s, callId: %s, request: %s, isIncoming: %b, isUnknown: %b, isLegacyHandover: %b, isHandover: %b"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v6

    aput-object v2, v9, v5

    const/4 v10, 0x2

    aput-object v3, v9, v10

    .line 1535
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v9, v12

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v13, 0x4

    aput-object v11, v9, v13

    const/4 v11, 0x5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v9, v11

    .line 1536
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x6

    aput-object v11, v9, v12

    .line 1533
    invoke-static {v0, v8, v9}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1538
    const/4 v8, 0x0

    .line 1539
    .local v8, "connection":Landroid/telecom/Connection;
    if-eqz v7, :cond_4

    .line 1540
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 1541
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v9, "android.telecom.extra.HANDOVER_FROM_PHONE_ACCOUNT"

    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/telecom/PhoneAccountHandle;

    goto :goto_2

    .line 1542
    :cond_2
    const/4 v9, 0x0

    .line 1543
    .local v9, "fromPhoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :goto_2
    if-nez p4, :cond_3

    .line 1544
    invoke-virtual {v0, v9, v3}, Landroid/telecom/ConnectionService;->onCreateOutgoingHandoverConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v8

    goto :goto_3

    .line 1546
    :cond_3
    invoke-virtual {v0, v9, v3}, Landroid/telecom/ConnectionService;->onCreateIncomingHandoverConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v8

    .line 1548
    .end local v9    # "fromPhoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :goto_3
    goto :goto_5

    .line 1549
    :cond_4
    if-eqz p5, :cond_5

    invoke-virtual {v0, v1, v3}, Landroid/telecom/ConnectionService;->onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v9

    goto :goto_4

    .line 1550
    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {v0, v1, v3}, Landroid/telecom/ConnectionService;->onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v9

    goto :goto_4

    .line 1551
    :cond_6
    invoke-virtual {v0, v1, v3}, Landroid/telecom/ConnectionService;->onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v9

    :goto_4
    move-object v8, v9

    .line 1553
    :goto_5
    const-string v9, "createConnection, connection: %s"

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v8, v11, v6

    invoke-static {v0, v9, v11}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1554
    if-nez v8, :cond_7

    .line 1555
    const-string v9, "createConnection, implementation returned null connection."

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v0, v9, v11}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1556
    new-instance v9, Landroid/telecom/DisconnectCause;

    const-string v11, "IMPL_RETURNED_NULL_CONNECTION"

    invoke-direct {v9, v5, v11}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-static {v9}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v8

    .line 1560
    :cond_7
    invoke-virtual {v8, v2}, Landroid/telecom/Connection;->setTelecomCallId(Ljava/lang/String;)V

    .line 1561
    invoke-virtual {v8}, Landroid/telecom/Connection;->getState()I

    move-result v9

    if-eq v9, v12, :cond_8

    .line 1562
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    invoke-direct {v0, v9, v2, v8}, Landroid/telecom/ConnectionService;->addConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 1565
    :cond_8
    invoke-virtual {v8}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v9

    .line 1566
    .local v9, "address":Landroid/net/Uri;
    if-nez v9, :cond_9

    const-string/jumbo v11, "null"

    goto :goto_6

    :cond_9
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    .line 1567
    .local v11, "number":Ljava/lang/String;
    :goto_6
    const-string v12, "createConnection, number: %s, state: %s, capabilities: %s, properties: %s"

    new-array v13, v13, [Ljava/lang/Object;

    .line 1568
    invoke-static {v11}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    .line 1569
    invoke-virtual {v8}, Landroid/telecom/Connection;->getState()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v13, v5

    .line 1570
    invoke-virtual {v8}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v13, v10

    .line 1571
    invoke-virtual {v8}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x3

    aput-object v6, v13, v10

    .line 1567
    invoke-static {v0, v12, v13}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1573
    const-string v6, "createConnection, calling handleCreateConnectionSuccessful %s"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v5, v10

    invoke-static {v0, v6, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1574
    iget-object v5, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    new-instance v6, Landroid/telecom/ParcelableConnection;

    .line 1578
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v16

    .line 1579
    invoke-virtual {v8}, Landroid/telecom/Connection;->getState()I

    move-result v17

    .line 1580
    invoke-virtual {v8}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v18

    .line 1581
    invoke-virtual {v8}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v19

    .line 1582
    invoke-virtual {v8}, Landroid/telecom/Connection;->getSupportedAudioRoutes()I

    move-result v20

    .line 1583
    invoke-virtual {v8}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v21

    .line 1584
    invoke-virtual {v8}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v22

    .line 1585
    invoke-virtual {v8}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v23

    .line 1586
    invoke-virtual {v8}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v24

    .line 1587
    invoke-virtual {v8}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v10

    if-nez v10, :cond_a

    .line 1588
    nop

    .line 1589
    const/16 v25, 0x0

    goto :goto_7

    .line 1588
    :cond_a
    invoke-virtual {v8}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v10

    .line 1589
    move-object/from16 v25, v10

    :goto_7
    invoke-virtual {v8}, Landroid/telecom/Connection;->getVideoState()I

    move-result v26

    .line 1590
    invoke-virtual {v8}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v27

    .line 1591
    invoke-virtual {v8}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v28

    .line 1592
    invoke-virtual {v8}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v29

    .line 1593
    invoke-virtual {v8}, Landroid/telecom/Connection;->getConnectElapsedTimeMillis()J

    move-result-wide v31

    .line 1594
    invoke-virtual {v8}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v33

    .line 1595
    invoke-virtual {v8}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v34

    .line 1596
    invoke-virtual {v8}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v35

    .line 1597
    invoke-virtual {v8}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v36

    move-object v15, v6

    invoke-direct/range {v15 .. v36}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    .line 1574
    invoke-virtual {v5, v2, v3, v6}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    .line 1599
    if-eqz p4, :cond_b

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->shouldShowIncomingCallUi()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1600
    invoke-virtual {v8}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v5

    const/16 v6, 0x80

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_b

    .line 1603
    invoke-virtual {v8}, Landroid/telecom/Connection;->onShowIncomingCallUi()V

    .line 1605
    :cond_b
    if-eqz p5, :cond_c

    .line 1606
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ConnectionService;->triggerConferenceRecalculate()V

    .line 1608
    :cond_c
    return-void
.end method

.method private createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    .locals 3
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z

    .line 1614
    const-string v0, "createConnectionFailed %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1615
    if-eqz p4, :cond_0

    .line 1616
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateIncomingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V

    goto :goto_0

    .line 1618
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateOutgoingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V

    .line 1620
    :goto_0
    return-void
.end method

.method private createConnectionIdList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2600
    .local p1, "connections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2601
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    .line 2602
    .local v2, "c":Landroid/telecom/Connection;
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2603
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2605
    .end local v2    # "c":Landroid/telecom/Connection;
    :cond_0
    goto :goto_0

    .line 2606
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2607
    return-object v0
.end method

.method private createIdList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2618
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2619
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conferenceable;

    .line 2621
    .local v2, "c":Landroid/telecom/Conferenceable;
    instance-of v3, v2, Landroid/telecom/Connection;

    if-eqz v3, :cond_1

    .line 2622
    move-object v3, v2

    check-cast v3, Landroid/telecom/Connection;

    .line 2623
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2624
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2626
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_0
    goto :goto_1

    :cond_1
    instance-of v3, v2, Landroid/telecom/Conference;

    if-eqz v3, :cond_2

    .line 2627
    move-object v3, v2

    check-cast v3, Landroid/telecom/Conference;

    .line 2628
    .local v3, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2629
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2632
    .end local v2    # "c":Landroid/telecom/Conferenceable;
    .end local v3    # "conference":Landroid/telecom/Conference;
    :cond_2
    :goto_1
    goto :goto_0

    .line 2633
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2634
    return-object v0
.end method

.method private deflect(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;

    .line 1662
    const-string v0, "deflect %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1663
    const-string v0, "deflect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onDeflect(Landroid/net/Uri;)V

    .line 1664
    return-void
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 1682
    const-string v0, "disconnect %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1683
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1684
    const-string v0, "disconnect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onDisconnect()V

    goto :goto_0

    .line 1686
    :cond_0
    const-string v0, "disconnect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    .line 1688
    :goto_0
    return-void
.end method

.method private endAllConnections()V
    .locals 3

    .line 2646
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 2648
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-virtual {v1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2649
    invoke-virtual {v1}, Landroid/telecom/Connection;->onDisconnect()V

    .line 2651
    .end local v1    # "connection":Landroid/telecom/Connection;
    :cond_0
    goto :goto_0

    .line 2652
    :cond_1
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference;

    .line 2653
    .local v1, "conference":Landroid/telecom/Conference;
    invoke-virtual {v1}, Landroid/telecom/Conference;->onDisconnect()V

    .line 2654
    .end local v1    # "conference":Landroid/telecom/Conference;
    goto :goto_1

    .line 2655
    :cond_2
    return-void
.end method

.method private findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;
    .locals 3
    .param p1, "conferenceId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 2592
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2593
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference;

    return-object v0

    .line 2595
    :cond_0
    const-string v0, "%s - Cannot find conference %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2596
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v0

    return-object v0
.end method

.method private findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 2577
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2578
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    return-object v0

    .line 2580
    :cond_0
    const-string v0, "%s - Cannot find Connection %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2581
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v0

    return-object v0
.end method

.method private getNextCallId()I
    .locals 2

    .line 2663
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdSyncRoot:Ljava/lang/Object;

    monitor-enter v0

    .line 2664
    :try_start_0
    iget v1, p0, Landroid/telecom/ConnectionService;->mId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/telecom/ConnectionService;->mId:I

    monitor-exit v0

    return v1

    .line 2665
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getNullConference()Landroid/telecom/Conference;
    .locals 2

    .line 2638
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    if-nez v0, :cond_0

    .line 2639
    new-instance v0, Landroid/telecom/ConnectionService$7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$7;-><init>(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    .line 2641
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method static declared-synchronized getNullConnection()Landroid/telecom/Connection;
    .locals 2

    const-class v0, Landroid/telecom/ConnectionService;

    monitor-enter v0

    .line 2585
    :try_start_0
    sget-object v1, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    if-nez v1, :cond_0

    .line 2586
    new-instance v1, Landroid/telecom/ConnectionService$6;

    invoke-direct {v1}, Landroid/telecom/ConnectionService$6;-><init>()V

    sput-object v1, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    .line 2588
    :cond_0
    sget-object v1, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 2584
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1884
    const-string v0, "handleExtrasChanged(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1885
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1886
    const-string v0, "handleExtrasChanged"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->handleExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1887
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1888
    const-string v0, "handleExtrasChanged"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->handleExtrasChanged(Landroid/os/Bundle;)V

    .line 1890
    :cond_1
    :goto_0
    return-void
.end method

.method private handleRttUpgradeResponse(Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 1911
    const-string v0, "handleRttUpgradeResponse(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    if-nez p2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1912
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1913
    const-string v0, "handleRttUpgradeResponse"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 1914
    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->handleRttUpgradeResponse(Landroid/telecom/Connection$RttTextStream;)V

    goto :goto_1

    .line 1915
    :cond_1
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1916
    const-string v0, "handleRttUpgradeResponse called on a conference."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1918
    :cond_2
    :goto_1
    return-void
.end method

.method private handoverFailed(Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "reason"    # I

    .line 1625
    const-string v0, "handoverFailed %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1626
    invoke-virtual {p0, p2, p3}, Landroid/telecom/ConnectionService;->onHandoverFailed(Landroid/telecom/ConnectionRequest;I)V

    .line 1627
    return-void
.end method

.method private hold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 1691
    const-string v0, "hold %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1692
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1693
    const-string v0, "hold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onHold()V

    goto :goto_0

    .line 1695
    :cond_0
    const-string v0, "hold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onHold()V

    .line 1697
    :goto_0
    return-void
.end method

.method private mergeConference(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 1811
    const-string/jumbo v0, "mergeConference(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1812
    const-string/jumbo v0, "mergeConference"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 1813
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    .line 1814
    invoke-virtual {v0}, Landroid/telecom/Conference;->onMerge()V

    .line 1816
    :cond_0
    return-void
.end method

.method private notifyCreateConnectionComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 1635
    const-string/jumbo v0, "notifyCreateConnectionComplete %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1636
    if-nez p1, :cond_0

    .line 1639
    const-string/jumbo v0, "notifyCreateConnectionComplete: callId is null."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1640
    return-void

    .line 1642
    :cond_0
    const-string/jumbo v0, "notifyCreateConnectionComplete"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/ConnectionService;->onCreateConnectionComplete(Landroid/telecom/Connection;)V

    .line 1644
    return-void
.end method

.method private notifyHandoverComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 1864
    const-string/jumbo v0, "notifyHandoverComplete(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1865
    const-string/jumbo v0, "notifyHandoverComplete"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 1866
    .local v0, "connection":Landroid/telecom/Connection;
    if-eqz v0, :cond_0

    .line 1867
    invoke-virtual {v0}, Landroid/telecom/Connection;->onHandoverComplete()V

    .line 1869
    :cond_0
    return-void
.end method

.method private onAccountsInitialized()V
    .locals 2

    .line 2480
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 2481
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 2482
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2483
    .end local v1    # "r":Ljava/lang/Runnable;
    goto :goto_0

    .line 2484
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2485
    return-void
.end method

.method private onAdapterAttached()V
    .locals 2

    .line 1926
    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    if-eqz v0, :cond_0

    .line 1928
    return-void

    .line 1931
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    new-instance v1, Landroid/telecom/ConnectionService$5;

    invoke-direct {v1, p0}, Landroid/telecom/ConnectionService$5;-><init>(Landroid/telecom/ConnectionService;)V

    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    .line 1960
    return-void
.end method

.method private onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    .line 1709
    const-string/jumbo v0, "onAudioStateChanged %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1710
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1711
    const-string/jumbo v0, "onCallAudioStateChanged"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    goto :goto_0

    .line 1714
    :cond_0
    const-string/jumbo v0, "onCallAudioStateChanged"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 1717
    :goto_0
    return-void
.end method

.method private onPostDialContinue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .line 1921
    const-string/jumbo v0, "onPostDialContinue(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1922
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPostDialContinue(Z)V

    .line 1923
    return-void
.end method

.method private playDtmfTone(Ljava/lang/String;C)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .line 1720
    const-string/jumbo v0, "playDtmfTone %s %c"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1721
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1722
    const-string/jumbo v0, "playDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPlayDtmfTone(C)V

    goto :goto_0

    .line 1724
    :cond_0
    const-string/jumbo v0, "playDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onPlayDtmfTone(C)V

    .line 1726
    :goto_0
    return-void
.end method

.method private pullExternalCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 1834
    const-string/jumbo v0, "pullExternalCall(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1835
    const-string/jumbo v0, "pullExternalCall"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 1836
    .local v0, "connection":Landroid/telecom/Connection;
    if-eqz v0, :cond_0

    .line 1837
    invoke-virtual {v0}, Landroid/telecom/Connection;->onPullExternalCall()V

    .line 1839
    :cond_0
    return-void
.end method

.method private reject(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 1667
    const-string/jumbo v0, "reject %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1668
    const-string/jumbo v0, "reject"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onReject()V

    .line 1669
    return-void
.end method

.method private reject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectWithMessage"    # Ljava/lang/String;

    .line 1672
    const-string/jumbo v0, "reject %s with message"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1673
    const-string/jumbo v0, "reject"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onReject(Ljava/lang/String;)V

    .line 1674
    return-void
.end method

.method private removeConference(Landroid/telecom/Conference;)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 2564
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2565
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v0}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 2567
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2568
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2569
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2570
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 2572
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onConferenceRemoved(Landroid/telecom/Conference;)V

    .line 2574
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1851
    const-string/jumbo v0, "sendCallEvent(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1852
    const-string/jumbo v0, "sendCallEvent"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 1853
    .local v0, "connection":Landroid/telecom/Connection;
    if-eqz v0, :cond_0

    .line 1854
    invoke-virtual {v0, p2, p3}, Landroid/telecom/Connection;->onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1856
    :cond_0
    return-void
.end method

.method private silence(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 1677
    const-string/jumbo v0, "silence %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1678
    const-string/jumbo v0, "silence"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onSilence()V

    .line 1679
    return-void
.end method

.method private splitFromConference(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 1785
    const-string/jumbo v0, "splitFromConference(%s)"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1787
    const-string/jumbo v0, "splitFromConference"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 1788
    .local v0, "connection":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 1789
    const-string v2, "Connection missing in conference request %s."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1790
    return-void

    .line 1793
    :cond_0
    invoke-virtual {v0}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v1

    .line 1794
    .local v1, "conference":Landroid/telecom/Conference;
    if-eqz v1, :cond_1

    .line 1795
    invoke-virtual {v1, v0}, Landroid/telecom/Conference;->onSeparate(Landroid/telecom/Connection;)V

    .line 1797
    :cond_1
    return-void
.end method

.method private startRtt(Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 1893
    const-string/jumbo v0, "startRtt(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1894
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1895
    const-string/jumbo v0, "startRtt"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onStartRtt(Landroid/telecom/Connection$RttTextStream;)V

    goto :goto_0

    .line 1896
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1897
    const-string/jumbo v0, "startRtt called on a conference."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1899
    :cond_1
    :goto_0
    return-void
.end method

.method private stopDtmfTone(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 1729
    const-string/jumbo v0, "stopDtmfTone %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1730
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onStopDtmfTone()V

    goto :goto_0

    .line 1733
    :cond_0
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onStopDtmfTone()V

    .line 1735
    :goto_0
    return-void
.end method

.method private stopRtt(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 1902
    const-string/jumbo v0, "stopRtt(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1903
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1904
    const-string/jumbo v0, "stopRtt"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onStopRtt()V

    goto :goto_0

    .line 1905
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1906
    const-string/jumbo v0, "stopRtt called on a conference."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1908
    :cond_1
    :goto_0
    return-void
.end method

.method private swapConference(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 1819
    const-string/jumbo v0, "swapConference(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1820
    const-string/jumbo v0, "swapConference"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 1821
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    .line 1822
    invoke-virtual {v0}, Landroid/telecom/Conference;->onSwap()V

    .line 1824
    :cond_0
    return-void
.end method

.method private unhold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 1700
    const-string/jumbo v0, "unhold %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1701
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1702
    const-string/jumbo v0, "unhold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onUnhold()V

    goto :goto_0

    .line 1704
    :cond_0
    const-string/jumbo v0, "unhold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onUnhold()V

    .line 1706
    :goto_0
    return-void
.end method


# virtual methods
.method public final addConference(Landroid/telecom/Conference;)V
    .locals 19
    .param p1, "conference"    # Landroid/telecom/Conference;

    move-object/from16 v0, p0

    .line 2025
    move-object/from16 v1, p1

    const-string v2, "addConference: conference=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2027
    invoke-direct/range {p0 .. p1}, Landroid/telecom/ConnectionService;->addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;

    move-result-object v2

    .line 2028
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 2029
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2030
    .local v3, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Connection;

    .line 2031
    .local v5, "connection":Landroid/telecom/Connection;
    iget-object v6, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2032
    iget-object v6, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2034
    .end local v5    # "connection":Landroid/telecom/Connection;
    :cond_0
    goto :goto_0

    .line 2035
    :cond_1
    invoke-virtual {v1, v2}, Landroid/telecom/Conference;->setTelecomCallId(Ljava/lang/String;)V

    .line 2036
    new-instance v4, Landroid/telecom/ParcelableConference;

    .line 2037
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    .line 2038
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getState()I

    move-result v7

    .line 2039
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result v8

    .line 2040
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectionProperties()I

    move-result v9

    .line 2042
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v5

    if-nez v5, :cond_2

    .line 2043
    const/4 v5, 0x0

    .line 2044
    :goto_1
    move-object v11, v5

    goto :goto_2

    .line 2043
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v5

    goto :goto_1

    .line 2044
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v12

    .line 2045
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    move-result-wide v13

    .line 2046
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectionStartElapsedRealTime()J

    move-result-wide v15

    .line 2047
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v17

    .line 2048
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    move-object v5, v4

    move-object v10, v3

    invoke-direct/range {v5 .. v18}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IIILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJJLandroid/telecom/StatusHints;Landroid/os/Bundle;)V

    .line 2050
    .local v4, "parcelableConference":Landroid/telecom/ParcelableConference;
    iget-object v5, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v5, v2, v4}, Landroid/telecom/ConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    .line 2051
    iget-object v5, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    .line 2052
    iget-object v5, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v6

    invoke-virtual {v5, v2, v6}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    .line 2055
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Connection;

    .line 2056
    .local v6, "connection":Landroid/telecom/Connection;
    iget-object v7, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2057
    .local v7, "connectionId":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 2058
    iget-object v8, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v8, v7, v2}, Landroid/telecom/ConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    .end local v6    # "connection":Landroid/telecom/Connection;
    .end local v7    # "connectionId":Ljava/lang/String;
    :cond_3
    goto :goto_3

    .line 2061
    :cond_4
    invoke-virtual/range {p0 .. p1}, Landroid/telecom/ConnectionService;->onConferenceAdded(Landroid/telecom/Conference;)V

    .line 2063
    .end local v3    # "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "parcelableConference":Landroid/telecom/ParcelableConference;
    :cond_5
    return-void
.end method

.method public final addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .line 2074
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/telecom/ConnectionService;->addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    .line 2075
    return-void
.end method

.method public final addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .locals 28
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;
    .param p3, "conference"    # Landroid/telecom/Conference;

    move-object/from16 v0, p0

    .line 2099
    move-object/from16 v1, p3

    invoke-direct/range {p0 .. p2}, Landroid/telecom/ConnectionService;->addExistingConnectionInternal(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)Ljava/lang/String;

    move-result-object v2

    .line 2100
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2101
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v23, v3

    .line 2102
    .local v23, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2103
    .local v3, "conferenceId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2104
    iget-object v4, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    .line 2107
    .end local v3    # "conferenceId":Ljava/lang/String;
    .local v26, "conferenceId":Ljava/lang/String;
    :cond_0
    move-object/from16 v26, v3

    new-instance v27, Landroid/telecom/ParcelableConnection;

    .line 2109
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getState()I

    move-result v5

    .line 2110
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v6

    .line 2111
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v7

    .line 2112
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getSupportedAudioRoutes()I

    move-result v8

    .line 2113
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v9

    .line 2114
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v10

    .line 2115
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v11

    .line 2116
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v12

    .line 2117
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2118
    const/4 v3, 0x0

    .line 2119
    :goto_0
    move-object v13, v3

    goto :goto_1

    .line 2118
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v3

    goto :goto_0

    .line 2119
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoState()I

    move-result v14

    .line 2120
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v15

    .line 2121
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v16

    .line 2122
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v17

    .line 2123
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectElapsedTimeMillis()J

    move-result-wide v19

    .line 2124
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v21

    .line 2125
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v22

    .line 2127
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    move-object/from16 v3, v27

    move-object/from16 v4, p1

    move-object/from16 v25, v26

    invoke-direct/range {v3 .. v25}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2129
    .local v3, "parcelableConnection":Landroid/telecom/ParcelableConnection;
    iget-object v4, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v4, v2, v3}, Landroid/telecom/ConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    .line 2131
    .end local v3    # "parcelableConnection":Landroid/telecom/ParcelableConnection;
    .end local v23    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "conferenceId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method addRemoteConference(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "remoteConference"    # Landroid/telecom/RemoteConference;

    .line 2471
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V

    .line 2472
    return-void
.end method

.method addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "remoteConnection"    # Landroid/telecom/RemoteConnection;

    .line 2476
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V

    .line 2477
    return-void
.end method

.method public final conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V
    .locals 1
    .param p1, "remoteConnection1"    # Landroid/telecom/RemoteConnection;
    .param p2, "remoteConnection2"    # Landroid/telecom/RemoteConnection;

    .line 2013
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/RemoteConnectionManager;->conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V

    .line 2014
    return-void
.end method

.method public final connectionServiceFocusReleased()V
    .locals 1

    .line 2084
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v0}, Landroid/telecom/ConnectionServiceAdapter;->onConnectionServiceFocusReleased()V

    .line 2085
    return-void
.end method

.method public containsConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 2466
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final createRemoteIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 1977
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final createRemoteOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 1996
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final getAllConferences()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation

    .line 2150
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getAllConnections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .line 2140
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onAddParticipant(Landroid/telecom/Connection;Ljava/lang/String;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;
    .param p2, "participant"    # Ljava/lang/String;

    .line 2428
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1508
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection1"    # Landroid/telecom/Connection;
    .param p2, "connection2"    # Landroid/telecom/Connection;

    .line 2392
    return-void
.end method

.method public onConferenceAdded(Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 2410
    return-void
.end method

.method public onConferenceRemoved(Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 2416
    return-void
.end method

.method public onConnectionAdded(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 2398
    return-void
.end method

.method public onConnectionRemoved(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 2404
    return-void
.end method

.method public onConnectionServiceFocusGained()V
    .locals 0

    .line 2460
    return-void
.end method

.method public onConnectionServiceFocusLost()V
    .locals 0

    .line 2454
    return-void
.end method

.method public onCreateConnectionComplete(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 2179
    return-void
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2166
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateIncomingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .locals 0
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2198
    return-void
.end method

.method public onCreateIncomingHandoverConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "fromPhoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2353
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2255
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOutgoingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .locals 0
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2217
    return-void
.end method

.method public onCreateOutgoingHandoverConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "fromPhoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2306
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .line 2381
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHandoverFailed(Landroid/telecom/ConnectionRequest;I)V
    .locals 0
    .param p1, "request"    # Landroid/telecom/ConnectionRequest;
    .param p2, "error"    # I

    .line 2368
    return-void
.end method

.method public onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .line 2440
    return-void
.end method

.method public onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 2446
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1514
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->endAllConnections()V

    .line 1515
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected removeConnection(Landroid/telecom/Connection;)V
    .locals 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .line 2527
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->unsetConnectionService(Landroid/telecom/ConnectionService;)V

    .line 2528
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 2529
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2530
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2531
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2532
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2533
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 2534
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onConnectionRemoved(Landroid/telecom/Connection;)V

    .line 2536
    :cond_0
    return-void
.end method

.method public triggerConferenceRecalculate()V
    .locals 0

    .line 2227
    return-void
.end method
