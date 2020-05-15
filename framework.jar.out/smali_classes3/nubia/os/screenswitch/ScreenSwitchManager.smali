.class public Lnubia/os/screenswitch/ScreenSwitchManager;
.super Ljava/lang/Object;
.source "ScreenSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallbackWrapper;,
        Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;
    }
.end annotation


# static fields
.field public static final EVENT_CALL:I = 0x3

.field public static final EVENT_CAMERA:I = 0x2

.field public static final EVENT_EYEPRO:I = 0x4

.field public static final EVENT_MANUAL:I = 0x1

.field public static final EVENT_NO_TIPS:I = 0x0

.field public static final FLAG_SWICH_FOR_AOD:I = 0x10

.field public static final FLAG_SWICH_FOR_ONLY_CLOSE_BACK:I = 0x20

.field public static final FLAG_SWICH_FOR_WAKE_UP:I = 0x40

.field public static final MODE_AFTER:I = 0x1

.field public static final MODE_BEFORE:I = 0x0

.field public static final MODE_BEFORE_SYNC:I = 0x2

.field public static final SCREEN_ALL:I = 0x4

.field public static final SCREEN_BACK:I = 0x1

.field public static final SCREEN_FRONT:I = 0x0

.field public static final SCREEN_MIRROR:I = 0x5

.field public static final SCREEN_TO_ALL:I = 0x7

.field public static final SCREEN_TO_BACK:I = 0x3

.field public static final SCREEN_TO_FRONT:I = 0x2

.field public static final SCREEN_TO_MIRROR:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ScreenSwitchManager"

.field private static volatile mIsSwitching:Z


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;",
            "Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lnubia/os/screenswitch/IScreenSwitchManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lnubia/os/screenswitch/ScreenSwitchManager;->mIsSwitching:Z

    return-void
.end method

.method public constructor <init>(Lnubia/os/screenswitch/IScreenSwitchManager;)V
    .locals 1
    .param p1, "service"    # Lnubia/os/screenswitch/IScreenSwitchManager;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    iput-object p1, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    .line 60
    return-void
.end method

.method private ensureService()V
    .locals 1

    .line 63
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    if-nez v0, :cond_0

    .line 64
    const-string v0, "nubia.screenswitch"

    .line 65
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lnubia/os/screenswitch/IScreenSwitchManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/screenswitch/IScreenSwitchManager;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    .line 67
    :cond_0
    return-void
.end method

.method public static isSwitching()Z
    .locals 1

    .line 48
    sget-boolean v0, Lnubia/os/screenswitch/ScreenSwitchManager;->mIsSwitching:Z

    return v0
.end method

.method public static setIsSwitching(Z)V
    .locals 0
    .param p0, "isSwitching"    # Z

    .line 52
    sput-boolean p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mIsSwitching:Z

    .line 53
    return-void
.end method


# virtual methods
.method public getCurrentDisplayId()I
    .locals 3

    .line 97
    :try_start_0
    invoke-direct {p0}, Lnubia/os/screenswitch/ScreenSwitchManager;->ensureService()V

    .line 98
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    invoke-interface {v0}, Lnubia/os/screenswitch/IScreenSwitchManager;->getCurrentDisplayId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 103
    :cond_0
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchManager"

    const-string v2, "RemoteException: getCurrentDIsplayId"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public noteScreenState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 165
    :try_start_0
    invoke-direct {p0}, Lnubia/os/screenswitch/ScreenSwitchManager;->ensureService()V

    .line 166
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    invoke-interface {v0, p1}, Lnubia/os/screenswitch/IScreenSwitchManager;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchManager"

    const-string v2, "RemoteException: noteScreenStateChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public noteScreenStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 155
    :try_start_0
    invoke-direct {p0}, Lnubia/os/screenswitch/ScreenSwitchManager;->ensureService()V

    .line 156
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    invoke-interface {v0, p1}, Lnubia/os/screenswitch/IScreenSwitchManager;->noteScreenStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchManager"

    const-string v2, "RemoteException: noteScreenStateChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyHeadsUpShowing(Z)V
    .locals 3
    .param p1, "show"    # Z

    .line 232
    :try_start_0
    invoke-direct {p0}, Lnubia/os/screenswitch/ScreenSwitchManager;->ensureService()V

    .line 233
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    invoke-interface {v0, p1}, Lnubia/os/screenswitch/IScreenSwitchManager;->notifyHeadsUpShowing(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchManager"

    const-string v2, "RemoteException: notifyHeadsUpShowing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public registerStateListener(Lnubia/os/screenswitch/IScreenSwitchStateListener;)V
    .locals 3
    .param p1, "listener"    # Lnubia/os/screenswitch/IScreenSwitchStateListener;

    .line 122
    :try_start_0
    invoke-direct {p0}, Lnubia/os/screenswitch/ScreenSwitchManager;->ensureService()V

    .line 123
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    invoke-interface {v0, p1}, Lnubia/os/screenswitch/IScreenSwitchManager;->registerStateListener(Lnubia/os/screenswitch/IScreenSwitchStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchManager"

    const-string v2, "RemoteException: registerStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public registerSwtichCallBack(Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;I)V
    .locals 4
    .param p1, "callback"    # Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;
    .param p2, "mode"    # I

    .line 175
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "ScreenSwitchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener already registered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void

    .line 179
    :cond_0
    new-instance v0, Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallbackWrapper;

    invoke-direct {v0, p1}, Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallbackWrapper;-><init>(Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;)V

    .line 180
    .local v0, "wrapper":Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallbackWrapper;
    iget-object v1, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :try_start_0
    invoke-direct {p0}, Lnubia/os/screenswitch/ScreenSwitchManager;->ensureService()V

    .line 183
    iget-object v1, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    invoke-interface {v1, v0, p2}, Lnubia/os/screenswitch/IScreenSwitchManager;->registerSwtichCallBack(Lnubia/os/screenswitch/IScreenSwitchCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_1
    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ScreenSwitchManager"

    const-string v3, "RemoteException: registerSwtichCallBack"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public reportCallBackComplete(Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;I)V
    .locals 4
    .param p1, "callback"    # Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;
    .param p2, "mode"    # I

    .line 205
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallbackWrapper;

    .line 207
    .local v0, "wrapper":Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallbackWrapper;
    :try_start_0
    invoke-direct {p0}, Lnubia/os/screenswitch/ScreenSwitchManager;->ensureService()V

    .line 208
    iget-object v1, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    invoke-interface {v1, v0, p2}, Lnubia/os/screenswitch/IScreenSwitchManager;->reportCallBackComplete(Lnubia/os/screenswitch/IScreenSwitchCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ScreenSwitchManager"

    const-string v3, "RemoteException: reportCallBackComplete"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public requestSwitchScreen(I)V
    .locals 3
    .param p1, "eventType"    # I

    .line 86
    :try_start_0
    invoke-direct {p0}, Lnubia/os/screenswitch/ScreenSwitchManager;->ensureService()V

    .line 87
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    invoke-interface {v0, p1}, Lnubia/os/screenswitch/IScreenSwitchManager;->requestSwitchScreen(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchManager"

    const-string v2, "RemoteException: requestSwitchScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public resetSkipSwitchTask()V
    .locals 3

    .line 220
    :try_start_0
    invoke-direct {p0}, Lnubia/os/screenswitch/ScreenSwitchManager;->ensureService()V

    .line 221
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    invoke-interface {v0}, Lnubia/os/screenswitch/IScreenSwitchManager;->resetSkipSwitchTask()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchManager"

    const-string v2, "RemoteException: resetSkipSwitchTask"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setDialogController(Lnubia/os/screenswitch/IScreenDialogController;)V
    .locals 3
    .param p1, "controller"    # Lnubia/os/screenswitch/IScreenDialogController;

    .line 133
    :try_start_0
    invoke-direct {p0}, Lnubia/os/screenswitch/ScreenSwitchManager;->ensureService()V

    .line 134
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    invoke-interface {v0, p1}, Lnubia/os/screenswitch/IScreenSwitchManager;->setDialogController(Lnubia/os/screenswitch/IScreenDialogController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchManager"

    const-string v2, "RemoteException: setDialogController"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setDialogVisibilityChanged(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "visibility"    # I

    .line 144
    :try_start_0
    invoke-direct {p0}, Lnubia/os/screenswitch/ScreenSwitchManager;->ensureService()V

    .line 145
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    invoke-interface {v0, p1, p2}, Lnubia/os/screenswitch/IScreenSwitchManager;->setDialogVisibilityChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchManager"

    const-string v2, "RemoteException: setDialogVisibilityChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public switchScreen(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 74
    :try_start_0
    invoke-direct {p0}, Lnubia/os/screenswitch/ScreenSwitchManager;->ensureService()V

    .line 76
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    invoke-interface {v0, p1}, Lnubia/os/screenswitch/IScreenSwitchManager;->switchScreen(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchManager"

    const-string v2, "RemoteException: switchScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unRegisterStateListener(Lnubia/os/screenswitch/IScreenSwitchStateListener;)V
    .locals 3
    .param p1, "listener"    # Lnubia/os/screenswitch/IScreenSwitchStateListener;

    .line 110
    :try_start_0
    invoke-direct {p0}, Lnubia/os/screenswitch/ScreenSwitchManager;->ensureService()V

    .line 111
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    invoke-interface {v0, p1}, Lnubia/os/screenswitch/IScreenSwitchManager;->unRegisterStateListener(Lnubia/os/screenswitch/IScreenSwitchStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchManager"

    const-string v2, "RemoteException: unRegisterStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterSwtichCallBack(Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;I)V
    .locals 4
    .param p1, "callback"    # Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallback;
    .param p2, "mode"    # I

    .line 193
    iget-object v0, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallbackWrapper;

    .line 195
    .local v0, "wrapper":Lnubia/os/screenswitch/ScreenSwitchManager$SwitchScreenCallbackWrapper;
    :try_start_0
    invoke-direct {p0}, Lnubia/os/screenswitch/ScreenSwitchManager;->ensureService()V

    .line 196
    iget-object v1, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lnubia/os/screenswitch/ScreenSwitchManager;->mService:Lnubia/os/screenswitch/IScreenSwitchManager;

    invoke-interface {v1, v0, p2}, Lnubia/os/screenswitch/IScreenSwitchManager;->unregisterSwtichCallBack(Lnubia/os/screenswitch/IScreenSwitchCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ScreenSwitchManager"

    const-string v3, "RemoteException: unregisterSwtichCallBack"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
