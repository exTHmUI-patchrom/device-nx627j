.class public Landroid/speech/tts/TextToSpeech;
.super Ljava/lang/Object;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeech$EngineInfo;,
        Landroid/speech/tts/TextToSpeech$Action;,
        Landroid/speech/tts/TextToSpeech$Connection;,
        Landroid/speech/tts/TextToSpeech$Engine;,
        Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;,
        Landroid/speech/tts/TextToSpeech$OnInitListener;,
        Landroid/speech/tts/TextToSpeech$Error;
    }
.end annotation


# static fields
.field public static final ACTION_TTS_QUEUE_PROCESSING_COMPLETED:Ljava/lang/String; = "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

.field public static final ERROR:I = -0x1

.field public static final ERROR_INVALID_REQUEST:I = -0x8

.field public static final ERROR_NETWORK:I = -0x6

.field public static final ERROR_NETWORK_TIMEOUT:I = -0x7

.field public static final ERROR_NOT_INSTALLED_YET:I = -0x9

.field public static final ERROR_OUTPUT:I = -0x5

.field public static final ERROR_SERVICE:I = -0x4

.field public static final ERROR_SYNTHESIS:I = -0x3

.field public static final LANG_AVAILABLE:I = 0x0

.field public static final LANG_COUNTRY_AVAILABLE:I = 0x1

.field public static final LANG_COUNTRY_VAR_AVAILABLE:I = 0x2

.field public static final LANG_MISSING_DATA:I = -0x1

.field public static final LANG_NOT_SUPPORTED:I = -0x2

.field public static final QUEUE_ADD:I = 0x1

.field static final QUEUE_DESTROY:I = 0x2

.field public static final QUEUE_FLUSH:I = 0x0

.field public static final STOPPED:I = -0x2

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TextToSpeech"


# instance fields
.field private mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

.field private final mContext:Landroid/content/Context;

.field private volatile mCurrentEngine:Ljava/lang/String;

.field private final mEarcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final mParams:Landroid/os/Bundle;

.field private mRequestedEngine:Ljava/lang/String;

.field private mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

.field private final mStartLock:Ljava/lang/Object;

.field private final mUseFallback:Z

.field private volatile mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final mUtterances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 703
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;
    .param p3, "engine"    # Ljava/lang/String;

    .line 719
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 720
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;
    .param p3, "engine"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "useFallback"    # Z

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    .line 687
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 730
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    .line 731
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 732
    iput-object p3, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    .line 733
    iput-boolean p5, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    .line 735
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    .line 736
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    .line 737
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 739
    new-instance v0, Landroid/speech/tts/TtsEngines;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 740
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    .line 741
    return-void
.end method

.method static synthetic access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .line 62
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .line 62
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/speech/tts/TextToSpeech;I)V
    .locals 0
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "x1"    # I

    .line 62
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    return-void
.end method

.method static synthetic access$1602(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;
    .locals 0
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeech$Connection;

    .line 62
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/speech/tts/TextToSpeech;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .line 62
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/speech/tts/TextToSpeech;)I
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .line 62
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$Connection;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .line 62
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-object v0
.end method

.method static synthetic access$202(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;
    .locals 0
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeech$Connection;

    .line 62
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-object p1
.end method

.method static synthetic access$302(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroid/speech/tts/TextToSpeech;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .line 62
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Landroid/speech/tts/TextToSpeech;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 62
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/speech/tts/TextToSpeech;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .line 62
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;
    .param p1, "x1"    # Landroid/speech/tts/ITextToSpeechService;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/speech/tts/TextToSpeech;->getVoice(Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .line 62
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$900(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 1
    .param p0, "x0"    # Landroid/speech/tts/TextToSpeech;

    .line 62
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object v0
.end method

.method private connectToEngine(Ljava/lang/String;)Z
    .locals 7
    .param p1, "engine"    # Ljava/lang/String;

    .line 814
    new-instance v0, Landroid/speech/tts/TextToSpeech$Connection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/speech/tts/TextToSpeech$Connection;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$1;)V

    .line 815
    .local v0, "connection":Landroid/speech/tts/TextToSpeech$Connection;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 816
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 818
    .local v2, "bound":Z
    if-nez v2, :cond_0

    .line 819
    const-string v3, "TextToSpeech"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to bind to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v3, 0x0

    return v3

    .line 822
    :cond_0
    const-string v4, "TextToSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sucessfully bound to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    .line 824
    return v3
.end method

.method private convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1890
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1891
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1892
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "streamType"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1893
    const-string/jumbo v1, "sessionId"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1894
    const-string/jumbo v1, "utteranceId"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1895
    const-string/jumbo v1, "volume"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1896
    const-string/jumbo v1, "pan"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1899
    const-string/jumbo v1, "networkTts"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1900
    const-string v1, "embeddedTts"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1901
    const-string/jumbo v1, "networkTimeoutMs"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1902
    const-string/jumbo v1, "networkRetriesCount"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1907
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1908
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1909
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1910
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1911
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1916
    :cond_1
    return-object v0

    .line 1918
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2016
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2017
    .local v0, "valueString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2019
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 2020
    .local v1, "value":F
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2023
    .end local v1    # "value":F
    goto :goto_0

    .line 2021
    :catch_0
    move-exception v1

    .line 2025
    :cond_0
    :goto_0
    return-void
.end method

.method private copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2004
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2005
    .local v0, "valueString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2007
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2008
    .local v1, "value":I
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2011
    .end local v1    # "value":I
    goto :goto_0

    .line 2009
    :catch_0
    move-exception v1

    .line 2013
    :cond_0
    :goto_0
    return-void
.end method

.method private copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1997
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1998
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1999
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    :cond_0
    return-void
.end method

.method private dispatchOnInit(I)V
    .locals 2
    .param p1, "result"    # I

    .line 829
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 830
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    if-eqz v1, :cond_0

    .line 831
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-interface {v1, p1}, Landroid/speech/tts/TextToSpeech$OnInitListener;->onInit(I)V

    .line 832
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 834
    :cond_0
    monitor-exit v0

    .line 835
    return-void

    .line 834
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCallerIdentity()Landroid/os/IBinder;
    .locals 1

    .line 838
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech$Connection;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxSpeechInputLength()I
    .locals 1

    .line 2372
    const/16 v0, 0xfa0

    return v0
.end method

.method private getParams(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "params"    # Landroid/os/Bundle;

    .line 1922
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1923
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1924
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1926
    const-string/jumbo v1, "streamType"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1927
    const-string/jumbo v1, "sessionId"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1928
    const-string/jumbo v1, "utteranceId"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyStringBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1929
    const-string/jumbo v1, "volume"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1930
    const-string/jumbo v1, "pan"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1933
    const-string/jumbo v1, "networkTts"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1934
    const-string v1, "embeddedTts"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1935
    const-string/jumbo v1, "networkTimeoutMs"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1936
    const-string/jumbo v1, "networkRetriesCount"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1938
    return-object v0

    .line 1940
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method private getVoice(Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;
    .locals 5
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .param p2, "voiceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1709
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object v0

    .line 1710
    .local v0, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1711
    const-string v2, "TextToSpeech"

    const-string v3, "getVoices returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    return-object v1

    .line 1714
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/speech/tts/Voice;

    .line 1715
    .local v3, "voice":Landroid/speech/tts/Voice;
    invoke-virtual {v3}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1716
    return-object v3

    .line 1718
    .end local v3    # "voice":Landroid/speech/tts/Voice;
    :cond_1
    goto :goto_0

    .line 1719
    :cond_2
    const-string v2, "TextToSpeech"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find voice "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in voice list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    return-object v1
.end method

.method private initTts()I
    .locals 6

    .line 766
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    .line 767
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 770
    return v2

    .line 771
    :cond_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    if-nez v0, :cond_2

    .line 772
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 773
    invoke-direct {p0, v3}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    .line 774
    return v3

    .line 776
    :cond_1
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    if-nez v0, :cond_2

    .line 777
    const-string v0, "TextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested engine not installed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 779
    invoke-direct {p0, v3}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    .line 780
    return v3

    .line 785
    :cond_2
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "defaultEngine":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 787
    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 788
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 789
    return v2

    .line 795
    :cond_3
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v4}, Landroid/speech/tts/TtsEngines;->getHighestRankedEngineName()Ljava/lang/String;

    move-result-object v4

    .line 796
    .local v4, "highestRanked":Ljava/lang/String;
    if-eqz v4, :cond_4

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 797
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 798
    invoke-direct {p0, v4}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 799
    iput-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 800
    return v2

    .line 808
    :cond_4
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 809
    invoke-direct {p0, v3}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    .line 810
    return v3
.end method

.method private makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceId"    # I

    .line 1068
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    .line 1069
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1070
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1071
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1072
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1068
    return-object v0
.end method

.method private runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 749
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .locals 8
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "reconnect"    # Z
    .param p5, "onlyEstablishedConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            "ZZ)TR;"
        }
    .end annotation

    .line 754
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    if-nez v1, :cond_0

    .line 756
    const-string v1, "TextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: not bound to TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    monitor-exit v0

    return-object p2

    .line 759
    :cond_0
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/speech/tts/TextToSpeech$Connection;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 761
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private runActionNoReconnect(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "onlyEstablishedConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            "Z)TR;"
        }
    .end annotation

    .line 745
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 1970
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1972
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1973
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1974
    const-string v0, "TextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Synthesis request paramter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " containst value  with invalid type. Should be a Boolean or String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    const/4 v0, 0x0

    return v0

    .line 1979
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 1984
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1985
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 1986
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 1987
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1988
    const-string v0, "TextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Synthesis request paramter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " containst value  with invalid type. Should be a Float or a Double"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    const/4 v0, 0x0

    return v0

    .line 1993
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 1945
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1946
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1947
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 1948
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1949
    const-string v0, "TextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Synthesis request paramter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " containst value  with invalid type. Should be an Integer or a Long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    const/4 v0, 0x0

    return v0

    .line 1954
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static verifyStringBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 1958
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1959
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1960
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1961
    const-string v0, "TextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Synthesis request paramter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " containst value  with invalid type. Should be a String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    const/4 v0, 0x0

    return v0

    .line 1966
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addEarcon(Ljava/lang/String;Ljava/io/File;)I
    .locals 3
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 1061
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1062
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1064
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addEarcon(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1040
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1041
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1043
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addEarcon(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "resourceId"    # I

    .line 1014
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1015
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1017
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addSpeech(Ljava/lang/CharSequence;Ljava/io/File;)I
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "file"    # Ljava/io/File;

    .line 982
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 983
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 985
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addSpeech(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "resourceId"    # I

    .line 939
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 940
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 942
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .line 961
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 962
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 964
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "resourceId"    # I

    .line 905
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 906
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 908
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public areDefaultsEnforced()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2094
    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableLanguages()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 1598
    new-instance v0, Landroid/speech/tts/TextToSpeech$11;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$11;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const-string v1, "getAvailableLanguages"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getCurrentEngine()Ljava/lang/String;
    .locals 1

    .line 1429
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultEngine()Ljava/lang/String;
    .locals 1

    .line 2084
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLanguage()Ljava/util/Locale;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1446
    new-instance v0, Landroid/speech/tts/TextToSpeech$8;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$8;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const-string v1, "getDefaultLanguage"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public getDefaultVoice()Landroid/speech/tts/Voice;
    .locals 3

    .line 1729
    new-instance v0, Landroid/speech/tts/TextToSpeech$15;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$15;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const-string v1, "getDefaultVoice"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/Voice;

    return-object v0
.end method

.method public getEngines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/speech/tts/TextToSpeech$EngineInfo;",
            ">;"
        }
    .end annotation

    .line 2103
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeatures(Ljava/util/Locale;)Ljava/util/Set;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1302
    new-instance v0, Landroid/speech/tts/TextToSpeech$5;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$5;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V

    const-string v1, "getFeatures"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getLanguage()Ljava/util/Locale;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1581
    new-instance v0, Landroid/speech/tts/TextToSpeech$10;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$10;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const-string v1, "getLanguage"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public getVoice()Landroid/speech/tts/Voice;
    .locals 3

    .line 1688
    new-instance v0, Landroid/speech/tts/TextToSpeech$14;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$14;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const-string v1, "getVoice"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/Voice;

    return-object v0
.end method

.method public getVoices()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    .line 1624
    new-instance v0, Landroid/speech/tts/TextToSpeech$12;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$12;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const-string v1, "getVoices"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .locals 3
    .param p1, "loc"    # Ljava/util/Locale;

    .line 1783
    new-instance v0, Landroid/speech/tts/TextToSpeech$16;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$16;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V

    .line 1804
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isLanguageAvailable"

    .line 1783
    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isSpeaking()Z
    .locals 3

    .line 1334
    new-instance v0, Landroid/speech/tts/TextToSpeech$6;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$6;-><init>(Landroid/speech/tts/TextToSpeech;)V

    .line 1339
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isSpeaking"

    .line 1334
    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public playEarcon(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 7
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "utteranceId"    # Ljava/lang/String;

    .line 1178
    new-instance v6, Landroid/speech/tts/TextToSpeech$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$3;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V

    .line 1188
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "playEarcon"

    .line 1178
    invoke-direct {p0, v6, v0, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 2
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1220
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 1221
    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "utteranceId"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1220
    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/speech/tts/TextToSpeech;->playEarcon(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public playSilence(JILjava/util/HashMap;)I
    .locals 1
    .param p1, "durationInMs"    # J
    .param p3, "queueMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1278
    .local p4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 1279
    if-nez p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "utteranceId"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1278
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/speech/tts/TextToSpeech;->playSilentUtterance(JILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public playSilentUtterance(JILjava/lang/String;)I
    .locals 7
    .param p1, "durationInMs"    # J
    .param p3, "queueMode"    # I
    .param p4, "utteranceId"    # Ljava/lang/String;

    .line 1242
    new-instance v6, Landroid/speech/tts/TextToSpeech$4;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$4;-><init>(Landroid/speech/tts/TextToSpeech;JILjava/lang/String;)V

    .line 1248
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "playSilentUtterance"

    .line 1242
    invoke-direct {p0, v6, v0, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)I
    .locals 3
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 1414
    if-eqz p1, :cond_0

    .line 1415
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1416
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v2, "audioAttributes"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1418
    monitor-exit v0

    .line 1419
    const/4 v0, 0x0

    return v0

    .line 1418
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1421
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setEngineByPackageName(Ljava/lang/String;)I
    .locals 1
    .param p1, "enginePackageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2073
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    .line 2074
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    move-result v0

    return v0
.end method

.method public setLanguage(Ljava/util/Locale;)I
    .locals 3
    .param p1, "loc"    # Ljava/util/Locale;

    .line 1473
    new-instance v0, Landroid/speech/tts/TextToSpeech$9;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$9;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V

    .line 1550
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "setLanguage"

    .line 1473
    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I
    .locals 1
    .param p1, "listener"    # Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2039
    invoke-static {p1}, Landroid/speech/tts/UtteranceProgressListener;->from(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 2040
    const/4 v0, 0x0

    return v0
.end method

.method public setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I
    .locals 1
    .param p1, "listener"    # Landroid/speech/tts/UtteranceProgressListener;

    .line 2054
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 2055
    const/4 v0, 0x0

    return v0
.end method

.method public setPitch(F)I
    .locals 4
    .param p1, "pitch"    # F

    .line 1393
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1394
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1395
    .local v0, "intPitch":I
    if-lez v0, :cond_0

    .line 1396
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1397
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v3, "pitch"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1398
    monitor-exit v1

    .line 1399
    const/4 v1, 0x0

    return v1

    .line 1398
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1402
    .end local v0    # "intPitch":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setSpeechRate(F)I
    .locals 4
    .param p1, "speechRate"    # F

    .line 1369
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1370
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1371
    .local v0, "intRate":I
    if-lez v0, :cond_0

    .line 1372
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1373
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v3, "rate"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1374
    monitor-exit v1

    .line 1375
    const/4 v1, 0x0

    return v1

    .line 1374
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1378
    .end local v0    # "intRate":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setVoice(Landroid/speech/tts/Voice;)I
    .locals 3
    .param p1, "voice"    # Landroid/speech/tts/Voice;

    .line 1644
    new-instance v0, Landroid/speech/tts/TextToSpeech$13;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$13;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/Voice;)V

    .line 1674
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "setVoice"

    .line 1644
    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public shutdown()V
    .locals 4

    .line 848
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 849
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 851
    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    .line 852
    monitor-exit v0

    return-void

    .line 854
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    new-instance v0, Landroid/speech/tts/TextToSpeech$1;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$1;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const-string/jumbo v1, "shutdown"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Landroid/speech/tts/TextToSpeech;->runActionNoReconnect(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 875
    return-void

    .line 854
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "queueMode"    # I
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "utteranceId"    # Ljava/lang/String;

    .line 1105
    new-instance v6, Landroid/speech/tts/TextToSpeech$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$2;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)V

    .line 1117
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "speak"

    .line 1105
    invoke-direct {p0, v6, v0, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1149
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 1150
    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "utteranceId"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1149
    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public stop()I
    .locals 3

    .line 1349
    new-instance v0, Landroid/speech/tts/TextToSpeech$7;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$7;-><init>(Landroid/speech/tts/TextToSpeech;)V

    .line 1354
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "stop"

    .line 1349
    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "utteranceId"    # Ljava/lang/String;

    .line 1828
    new-instance v6, Landroid/speech/tts/TextToSpeech$17;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$17;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/io/File;Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1854
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "synthesizeToFile"

    .line 1828
    invoke-direct {p0, v6, v0, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1885
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Landroid/speech/tts/TextToSpeech;->convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "utteranceId"

    .line 1886
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1885
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
