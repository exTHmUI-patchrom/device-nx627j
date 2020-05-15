.class public final Landroid/media/AudioPlaybackConfiguration;
.super Ljava/lang/Object;
.source "AudioPlaybackConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioPlaybackConfiguration$IPlayerShell;,
        Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;,
        Landroid/media/AudioPlaybackConfiguration$PlayerState;,
        Landroid/media/AudioPlaybackConfiguration$PlayerType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final PLAYER_PIID_INVALID:I = -0x1

.field public static final PLAYER_PIID_UNASSIGNED:I = 0x0

.field public static final PLAYER_STATE_IDLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PLAYER_STATE_PAUSED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PLAYER_STATE_RELEASED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PLAYER_STATE_STARTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PLAYER_STATE_STOPPED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PLAYER_STATE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PLAYER_TYPE_AAUDIO:I = 0xd

.field public static final PLAYER_TYPE_EXTERNAL_PROXY:I = 0xf

.field public static final PLAYER_TYPE_HW_SOURCE:I = 0xe

.field public static final PLAYER_TYPE_JAM_AUDIOTRACK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PLAYER_TYPE_JAM_MEDIAPLAYER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PLAYER_TYPE_JAM_SOUNDPOOL:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PLAYER_TYPE_SLES_AUDIOPLAYER_BUFFERQUEUE:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PLAYER_TYPE_SLES_AUDIOPLAYER_URI_FD:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PLAYER_TYPE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PLAYER_UPID_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field public static sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;


# instance fields
.field private mClientPid:I

.field private mClientUid:I

.field private mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

.field private mPlayerAttr:Landroid/media/AudioAttributes;

.field private final mPlayerIId:I

.field private mPlayerState:I

.field private mPlayerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/String;

    const-string v1, "AudioPlaybackConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration;->TAG:Ljava/lang/String;

    .line 433
    new-instance v0, Landroid/media/AudioPlaybackConfiguration$1;

    invoke-direct {v0}, Landroid/media/AudioPlaybackConfiguration$1;-><init>()V

    sput-object v0, Landroid/media/AudioPlaybackConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "piid"    # I

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/media/PlayerBase$PlayerIdCard;III)V
    .locals 2
    .param p1, "pic"    # Landroid/media/PlayerBase$PlayerIdCard;
    .param p2, "piid"    # I
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput p2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    .line 201
    iget v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mPlayerType:I

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    .line 202
    iput p3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    .line 203
    iput p4, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    .line 204
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    .line 205
    iget-object v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 206
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    iget-object v1, p1, Landroid/media/PlayerBase$PlayerIdCard;->mIPlayer:Landroid/media/IPlayer;

    invoke-direct {v0, p0, v1}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;-><init>(Landroid/media/AudioPlaybackConfiguration;Landroid/media/IPlayer;)V

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    goto :goto_0

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 211
    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    .line 479
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlayer;

    move-result-object v0

    .line 481
    .local v0, "p":Landroid/media/IPlayer;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-direct {v2, v1, v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;-><init>(Landroid/media/AudioPlaybackConfiguration;Landroid/media/IPlayer;)V

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 482
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioPlaybackConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/media/AudioPlaybackConfiguration$1;

    .line 38
    invoke-direct {p0, p1}, Landroid/media/AudioPlaybackConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AudioPlaybackConfiguration;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioPlaybackConfiguration;

    .line 38
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    return v0
.end method

.method static synthetic access$300(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioPlaybackConfiguration;

    .line 38
    invoke-direct {p0}, Landroid/media/AudioPlaybackConfiguration;->playerDied()V

    return-void
.end method

.method public static anonymizedCopy(Landroid/media/AudioPlaybackConfiguration;)Landroid/media/AudioPlaybackConfiguration;
    .locals 3
    .param p0, "in"    # Landroid/media/AudioPlaybackConfiguration;

    .line 233
    new-instance v0, Landroid/media/AudioPlaybackConfiguration;

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-direct {v0, v1}, Landroid/media/AudioPlaybackConfiguration;-><init>(I)V

    .line 234
    .local v0, "anonymCopy":Landroid/media/AudioPlaybackConfiguration;
    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    iput v1, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    .line 236
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 237
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 238
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 239
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 242
    const/4 v1, -0x1

    iput v1, v0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    .line 243
    iput v1, v0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    .line 244
    iput v1, v0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    .line 245
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 246
    return-object v0
.end method

.method private playerDied()V
    .locals 2

    .line 387
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    if-eqz v0, :cond_0

    .line 388
    sget-object v0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-interface {v0, v1}, Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;->playerDeath(I)V

    .line 390
    :cond_0
    return-void
.end method

.method public static toLogFriendlyPlayerState(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 569
    packed-switch p0, :pswitch_data_0

    .line 577
    const-string/jumbo v0, "unknown player state - FIXME"

    return-object v0

    .line 575
    :pswitch_0
    const-string/jumbo v0, "stopped"

    return-object v0

    .line 574
    :pswitch_1
    const-string/jumbo v0, "paused"

    return-object v0

    .line 573
    :pswitch_2
    const-string/jumbo v0, "started"

    return-object v0

    .line 572
    :pswitch_3
    const-string v0, "idle"

    return-object v0

    .line 571
    :pswitch_4
    const-string/jumbo v0, "released"

    return-object v0

    .line 570
    :pswitch_5
    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toLogFriendlyPlayerType(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 550
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown player type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - FIXME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 561
    :pswitch_0
    const-string v0, "external proxy"

    return-object v0

    .line 560
    :pswitch_1
    const-string v0, "hardware source"

    return-object v0

    .line 559
    :pswitch_2
    const-string v0, "AAudio"

    return-object v0

    .line 558
    :pswitch_3
    const-string v0, "OpenSL ES AudioPlayer (URI/FD)"

    return-object v0

    .line 556
    :pswitch_4
    const-string v0, "OpenSL ES AudioPlayer (Buffer Queue)"

    return-object v0

    .line 554
    :pswitch_5
    const-string v0, "android.media.SoundPool"

    return-object v0

    .line 553
    :pswitch_6
    const-string v0, "android.media.MediaPlayer"

    return-object v0

    .line 552
    :pswitch_7
    const-string v0, "android.media.AudioTrack"

    return-object v0

    .line 551
    :cond_0
    const-string/jumbo v0, "unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toLogFriendlyString(Landroid/media/AudioPlaybackConfiguration;)Ljava/lang/String;
    .locals 3
    .param p0, "apc"    # Landroid/media/AudioPlaybackConfiguration;

    .line 426
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -- type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    .line 427
    invoke-static {v2}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -- u/pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -- state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    .line 429
    invoke-static {v2}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -- attr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 426
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyString(Landroid/media/AudioPlaybackConfiguration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 486
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 487
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/media/AudioPlaybackConfiguration;

    if-nez v2, :cond_1

    goto :goto_1

    .line 489
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 491
    .local v2, "that":Landroid/media/AudioPlaybackConfiguration;
    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    iget v4, v2, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 487
    .end local v2    # "that":Landroid/media/AudioPlaybackConfiguration;
    :cond_3
    :goto_1
    return v1
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .line 254
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getClientPid()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 274
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    return v0
.end method

.method public getClientUid()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 264
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    return v0
.end method

.method getIPlayer()Landroid/media/IPlayer;
    .locals 2

    .line 342
    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 344
    .local v0, "ips":Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v1

    :goto_0
    return-object v1

    .line 344
    .end local v0    # "ips":Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPlayerInterfaceId()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 319
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    return v0
.end method

.method public getPlayerProxy()Landroid/media/PlayerProxy;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 330
    monitor-enter p0

    .line 331
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 332
    .local v0, "ips":Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/media/PlayerProxy;

    invoke-direct {v1, p0}, Landroid/media/PlayerProxy;-><init>(Landroid/media/AudioPlaybackConfiguration;)V

    :goto_0
    return-object v1

    .line 332
    .end local v0    # "ips":Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPlayerState()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 309
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    return v0
.end method

.method public getPlayerType()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 289
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    packed-switch v0, :pswitch_data_0

    .line 295
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    return v0

    .line 293
    :pswitch_0
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handleAudioAttributesEvent(Landroid/media/AudioAttributes;)Z
    .locals 1
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 354
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 355
    .local v0, "changed":Z
    iput-object p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 356
    return v0
.end method

.method public handleStateEvent(I)Z
    .locals 2
    .param p1, "event"    # I

    .line 367
    monitor-enter p0

    .line 368
    :try_start_0
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 369
    .local v0, "changed":Z
    :goto_0
    iput p1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    .line 370
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->release()V

    .line 372
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 374
    :cond_1
    monitor-exit p0

    .line 375
    return v0

    .line 374
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 3

    .line 450
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->monitorDeath()V

    .line 221
    :cond_0
    monitor-exit p0

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isActive()Z
    .locals 2

    .line 400
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 409
    const/4 v0, 0x0

    return v0

    .line 402
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 460
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerIId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mClientPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    iget v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mPlayerAttr:Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 467
    monitor-enter p0

    .line 468
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioPlaybackConfiguration;->mIPlayerShell:Landroid/media/AudioPlaybackConfiguration$IPlayerShell;

    .line 469
    .local v0, "ips":Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioPlaybackConfiguration$IPlayerShell;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 471
    return-void

    .line 469
    .end local v0    # "ips":Landroid/media/AudioPlaybackConfiguration$IPlayerShell;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
