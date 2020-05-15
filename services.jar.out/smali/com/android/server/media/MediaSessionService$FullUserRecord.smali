.class final Lcom/android/server/media/MediaSessionService$FullUserRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FullUserRecord"
.end annotation


# static fields
.field private static final COMPONENT_NAME_USER_ID_DELIM:Ljava/lang/String; = ","


# instance fields
.field private mCallback:Landroid/media/session/ICallback;

.field private final mFullUserId:I

.field private mInitialDownMusicOnly:Z

.field private mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;

.field private mInitialDownVolumeStream:I

.field private mLastMediaButtonReceiver:Landroid/app/PendingIntent;

.field private mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

.field private mOnMediaKeyListenerUid:I

.field private mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

.field private mOnVolumeKeyLongPressListenerUid:I

.field private final mPriorityStack:Lcom/android/server/media/MediaSessionStack;

.field private mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

.field private mRestoredMediaButtonReceiverUserId:I

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;I)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;
    .param p2, "fullUserId"    # I

    .line 842
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    iput p2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 844
    new-instance v0, Lcom/android/server/media/MediaSessionStack;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/media/MediaSessionStack;-><init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 846
    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "media_button_receiver"

    iget v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, "mediaButtonReceiver":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 849
    return-void

    .line 851
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 852
    .local v1, "tokens":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 855
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    .line 856
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverUserId:I

    .line 857
    return-void

    .line 853
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 824
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)Landroid/media/session/IOnVolumeKeyLongPressListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 824
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 824
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 824
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)Landroid/media/session/IOnMediaKeyListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # Landroid/media/session/IOnMediaKeyListener;

    .line 824
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 824
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 824
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/ICallback;)Landroid/media/session/ICallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # Landroid/media/session/ICallback;

    .line 824
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 824
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # I

    .line 824
    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 824
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # I

    .line 824
    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 824
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .line 824
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 824
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeStream:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # I

    .line 824
    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeStream:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 824
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownMusicOnly:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/media/MediaSessionService$FullUserRecord;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .param p1, "x1"    # Z

    .line 824
    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownMusicOnly:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 824
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 824
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 824
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 824
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 824
    iget v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverUserId:I

    return v0
.end method

.method private getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecord;
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2000(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->getMediaButtonSession()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 950
    :goto_0
    return-object v0
.end method

.method private pushAddressedPlayerChangedLocked()V
    .locals 4

    .line 928
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    if-nez v0, :cond_0

    .line 929
    return-void

    .line 932
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 933
    .local v0, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    if-eqz v0, :cond_1

    .line 934
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    new-instance v2, Landroid/media/session/MediaSession$Token;

    .line 935
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    .line 934
    invoke-interface {v1, v2}, Landroid/media/session/ICallback;->onAddressedPlayerChangedToMediaSession(Landroid/media/session/MediaSession$Token;)V

    goto :goto_0

    .line 936
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 937
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 938
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    .line 939
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 937
    invoke-interface {v1, v2}, Landroid/media/session/ICallback;->onAddressedPlayerChangedToMediaButtonReceiver(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 940
    :cond_2
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    .line 941
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 942
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    .line 941
    invoke-interface {v1, v2}, Landroid/media/session/ICallback;->onAddressedPlayerChangedToMediaButtonReceiver(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    .end local v0    # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    :cond_3
    :goto_0
    goto :goto_1

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaSessionService"

    const-string v2, "Failed to pushAddressedPlayerChangedLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 947
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method


# virtual methods
.method public destroySessionsForUserLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 860
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 861
    .local v0, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord;

    .line 862
    .local v2, "session":Lcom/android/server/media/MediaSessionRecord;
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3, v2}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)V

    .line 863
    .end local v2    # "session":Lcom/android/server/media/MediaSessionRecord;
    goto :goto_0

    .line 864
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Record for full_user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 870
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 871
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 872
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    if-ne v2, v3, :cond_0

    .line 873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", profile_user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 870
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 876
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, "indent":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Volume key long-press listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Volume key long-press listener package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    .line 880
    invoke-static {v3, v4}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 879
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Media key listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Media key listener package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    .line 883
    invoke-static {v3, v4}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 882
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Last MediaButtonReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Restored MediaButtonReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/media/MediaSessionStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 888
    return-void
.end method

.method public onMediaButtonSessionChanged(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord;)V
    .locals 3
    .param p1, "oldMediaButtonSession"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "newMediaButtonSession"    # Lcom/android/server/media/MediaSessionRecord;

    .line 894
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media button session is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 897
    if-eqz p1, :cond_0

    .line 898
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    goto :goto_0

    .line 905
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 900
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 901
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 902
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 904
    :cond_1
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V

    .line 905
    monitor-exit v0

    .line 906
    return-void

    .line 905
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 6
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .line 910
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v0

    .line 911
    .local v0, "receiver":Landroid/app/PendingIntent;
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    .line 912
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    .line 913
    const-string v1, ""

    .line 914
    .local v1, "componentName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 915
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 916
    .local v2, "component":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 917
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 918
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 921
    .end local v2    # "component":Landroid/content/ComponentName;
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "media_button_receiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 921
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 925
    return-void
.end method
