.class public Landroid/app/NubiaHighlights;
.super Ljava/lang/Object;
.source "NubiaHighlights.java"


# static fields
.field public static final CALLBACK_PARAM_ACTIVITY:Ljava/lang/String; = "activityName"

.field public static final CALLBACK_PARAM_PACKAGE:Ljava/lang/String; = "packageName"

.field public static final FILTER_PACKAGES:Ljava/lang/String; = "filter_packages"

.field public static final FLAG_NUBIA_HIGHLIGHTS_CLIP_PICTRUE:J = 0x1L

.field public static final FLAG_STATE_ALL:J = 0x7fffffffffffffffL

.field public static final NUBIA_HIGHLIGHTS_BLZY_VICTORY_BITMAP:Ljava/lang/String; = "victoryBitmap"

.field public static final NUBIA_HIGHLIGHTS_CLIP_PICTRUE:I = 0x3e8

.field public static final NUBIA_HIGHLIGHTS_ERROR_END_BITMAP:Ljava/lang/String; = "errorEndBitmap"

.field public static final NUBIA_HIGHLIGHTS_KILL_BITMAP:Ljava/lang/String; = "killBitmap"

.field public static final NUBIA_HIGHLIGHTS_KILL_TWO_BITMAP:Ljava/lang/String; = "killTwoBitmap"

.field public static final NUBIA_HIGHLIGHTS_OVER_BITMAP:Ljava/lang/String; = "overBitmap"

.field public static final NUBIA_HIGHLIGHTS_OVER_THREE_BITMAP:Ljava/lang/String; = "overThreeBitmap"

.field public static final NUBIA_HIGHLIGHTS_OVER_TWO_BITMAP:Ljava/lang/String; = "overTwoBitmap"

.field public static final NUBIA_HIGHLIGHTS_START_RECORD_BITMAP:Ljava/lang/String; = "recordBitmap"

.field public static final NUBIA_HIGHLIGHTS_START_RECORD_TWO_BITMAP:Ljava/lang/String; = "recordTwoBitmap"

.field public static final NUBIA_HIGHLIGHTS_WZ_ASSIST_BITMAP:Ljava/lang/String; = "wzAssistBitmap"

.field public static final NUBIA_HIGHLIGHTS_WZ_DIE_BITMAP:Ljava/lang/String; = "wzDieBitmap"

.field public static final NUBIA_HIGHLIGHTS_WZ_TOAST_BITMAP:Ljava/lang/String; = "wzToastBitmap"

.field public static final NUBIA_HIGHLIGHTS_WZ_VICTORY_BITMAP:Ljava/lang/String; = "wzVictoryBitmap"

.field private static final TAG:Ljava/lang/String; = "NubiaHighlights"


# instance fields
.field private mCallback:Lnubia/os/ITaskCallback;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/app/SysStateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/app/NubiaHighlights$3;

    invoke-direct {v0, p0}, Landroid/app/NubiaHighlights$3;-><init>(Landroid/app/NubiaHighlights;)V

    iput-object v0, p0, Landroid/app/NubiaHighlights;->mCallback:Lnubia/os/ITaskCallback;

    .line 50
    return-void
.end method

.method static synthetic access$000(Landroid/app/NubiaHighlights;)Landroid/app/SysStateReceiver;
    .locals 1
    .param p0, "x0"    # Landroid/app/NubiaHighlights;

    .line 20
    iget-object v0, p0, Landroid/app/NubiaHighlights;->mReceiver:Landroid/app/SysStateReceiver;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/NubiaHighlights;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/app/NubiaHighlights;

    .line 20
    iget-object v0, p0, Landroid/app/NubiaHighlights;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createHandler()V
    .locals 1

    .line 53
    new-instance v0, Landroid/app/NubiaHighlights$1;

    invoke-direct {v0, p0}, Landroid/app/NubiaHighlights$1;-><init>(Landroid/app/NubiaHighlights;)V

    iput-object v0, p0, Landroid/app/NubiaHighlights;->mHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method private createReceiver()V
    .locals 1

    .line 64
    new-instance v0, Landroid/app/NubiaHighlights$2;

    invoke-direct {v0, p0}, Landroid/app/NubiaHighlights$2;-><init>(Landroid/app/NubiaHighlights;)V

    iput-object v0, p0, Landroid/app/NubiaHighlights;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method


# virtual methods
.method public registerReceiver(Landroid/app/SysStateReceiver;)V
    .locals 3
    .param p1, "receiver"    # Landroid/app/SysStateReceiver;

    .line 98
    invoke-direct {p0}, Landroid/app/NubiaHighlights;->createHandler()V

    .line 99
    iput-object p1, p0, Landroid/app/NubiaHighlights;->mReceiver:Landroid/app/SysStateReceiver;

    .line 100
    iget-object v0, p0, Landroid/app/NubiaHighlights;->mCallback:Lnubia/os/ITaskCallback;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2}, Lnubia/os/ApplicationManager$Trigger;->registerCallback(Lnubia/os/ITaskCallback;J)V

    .line 101
    return-void
.end method

.method public registerReceiver(Landroid/app/SysStateReceiver;J)V
    .locals 1
    .param p1, "receiver"    # Landroid/app/SysStateReceiver;
    .param p2, "flag"    # J

    .line 104
    invoke-direct {p0}, Landroid/app/NubiaHighlights;->createHandler()V

    .line 105
    iput-object p1, p0, Landroid/app/NubiaHighlights;->mReceiver:Landroid/app/SysStateReceiver;

    .line 106
    iget-object v0, p0, Landroid/app/NubiaHighlights;->mCallback:Lnubia/os/ITaskCallback;

    invoke-static {v0, p2, p3}, Lnubia/os/ApplicationManager$Trigger;->registerCallback(Lnubia/os/ITaskCallback;J)V

    .line 107
    return-void
.end method

.method public registerReceiverHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/NubiaHighlights;->registerReceiverHandler(Landroid/os/Handler;[Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public registerReceiverHandler(Landroid/os/Handler;J[Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "flag"    # J
    .param p4, "acceptPkgs"    # [Ljava/lang/String;

    .line 91
    iput-object p1, p0, Landroid/app/NubiaHighlights;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "filter":Landroid/os/Bundle;
    const-string v1, "filter_packages"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Landroid/app/NubiaHighlights;->mCallback:Lnubia/os/ITaskCallback;

    invoke-static {v1, p2, p3, v0}, Lnubia/os/ApplicationManager$Trigger;->registerCallback(Lnubia/os/ITaskCallback;JLandroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public registerReceiverHandler(Landroid/os/Handler;[Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "acceptPkgs"    # [Ljava/lang/String;

    .line 87
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/NubiaHighlights;->registerReceiverHandler(Landroid/os/Handler;J[Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NubiaHighlights;->mReceiver:Landroid/app/SysStateReceiver;

    .line 111
    iget-object v0, p0, Landroid/app/NubiaHighlights;->mCallback:Lnubia/os/ITaskCallback;

    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->unregisterCallback(Lnubia/os/ITaskCallback;)V

    .line 112
    return-void
.end method

.method public updateHighlightsCoordinate(I)V
    .locals 0
    .param p1, "gameType"    # I

    .line 115
    invoke-static {p1}, Lnubia/os/ApplicationManager$Trigger;->updateHighlightsCoordinate(I)V

    .line 116
    return-void
.end method
