.class public Lnubia/os/presssensor/PressSensorManager;
.super Ljava/lang/Object;
.source "PressSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/presssensor/PressSensorManager$RankListenerWrapper;,
        Lnubia/os/presssensor/PressSensorManager$PressListenerWrapper;,
        Lnubia/os/presssensor/PressSensorManager$RankListener;,
        Lnubia/os/presssensor/PressSensorManager$PressListener;
    }
.end annotation


# static fields
.field public static final GESTURE_DISABLE:I = 0xa

.field public static final GESTURE_DOUBLE_HOLD:I = 0x5

.field public static final GESTURE_HOLD_CANCEL:I = 0x8

.field public static final GESTURE_HOLD_END:I = 0x9

.field public static final GESTURE_HOLD_START:I = 0x7

.field public static final GESTURE_LONG_HOLD_END:I = 0x4

.field public static final GESTURE_LONG_HOLD_START:I = 0x3

.field public static final GESTURE_PAINT_EGG_END:I = 0xc

.field public static final GESTURE_PAINT_EGG_START:I = 0xb

.field public static final GESTURE_PAINT_EGG_WAITING_START:I = 0xd

.field public static final GESTURE_SHORT_HOLD:I = 0x6

.field public static final GESTURE_SHORT_HOLD_CONFIRMED:I = 0x2

.field public static final GESTURE_SHORT_HOLD_UP:I = 0x1

.field public static final PERSS_SENSOR_SERVICE:Ljava/lang/String; = "nubia.presssensor"

.field private static final TAG:Ljava/lang/String; = "PressSensorManager"


# instance fields
.field private mPressListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnubia/os/presssensor/PressSensorManager$PressListener;",
            "Lnubia/os/presssensor/PressSensorManager$PressListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mRankListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnubia/os/presssensor/PressSensorManager$RankListener;",
            "Lnubia/os/presssensor/PressSensorManager$RankListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lnubia/os/presssensor/IPressSensorManager;


# direct methods
.method public constructor <init>(Lnubia/os/presssensor/IPressSensorManager;)V
    .locals 1
    .param p1, "service"    # Lnubia/os/presssensor/IPressSensorManager;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnubia/os/presssensor/PressSensorManager;->mPressListenerMap:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnubia/os/presssensor/PressSensorManager;->mRankListenerMap:Ljava/util/Map;

    .line 36
    iput-object p1, p0, Lnubia/os/presssensor/PressSensorManager;->mService:Lnubia/os/presssensor/IPressSensorManager;

    .line 37
    return-void
.end method

.method private ensureService()V
    .locals 1

    .line 40
    iget-object v0, p0, Lnubia/os/presssensor/PressSensorManager;->mService:Lnubia/os/presssensor/IPressSensorManager;

    if-nez v0, :cond_0

    .line 41
    const-string v0, "nubia.presssensor"

    .line 42
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lnubia/os/presssensor/IPressSensorManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/presssensor/IPressSensorManager;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/presssensor/PressSensorManager;->mService:Lnubia/os/presssensor/IPressSensorManager;

    .line 44
    :cond_0
    return-void
.end method

.method public static getGestureLabel(I)Ljava/lang/String;
    .locals 1
    .param p0, "gesture"    # I

    .line 192
    packed-switch p0, :pswitch_data_0

    .line 220
    :pswitch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :pswitch_1
    const-string v0, "paint egg waiting start"

    return-object v0

    .line 206
    :pswitch_2
    const-string v0, "paint egg end"

    return-object v0

    .line 204
    :pswitch_3
    const-string v0, "paint egg start"

    return-object v0

    .line 214
    :pswitch_4
    const-string v0, "hold end"

    return-object v0

    .line 216
    :pswitch_5
    const-string v0, "hold cancel"

    return-object v0

    .line 212
    :pswitch_6
    const-string v0, "hold start"

    return-object v0

    .line 198
    :pswitch_7
    const-string v0, "short hold"

    return-object v0

    .line 210
    :pswitch_8
    const-string v0, "double hold"

    return-object v0

    .line 202
    :pswitch_9
    const-string v0, "long hold end"

    return-object v0

    .line 200
    :pswitch_a
    const-string v0, "long hold start"

    return-object v0

    .line 196
    :pswitch_b
    const-string v0, "short hold confirmed"

    return-object v0

    .line 194
    :pswitch_c
    const-string v0, "short hold up"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public registerPressListener(Lnubia/os/presssensor/PressSensorManager$PressListener;)V
    .locals 4
    .param p1, "listener"    # Lnubia/os/presssensor/PressSensorManager$PressListener;

    .line 47
    if-nez p1, :cond_0

    .line 48
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lnubia/os/presssensor/PressSensorManager;->mPressListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    return-void

    .line 53
    :cond_1
    invoke-direct {p0}, Lnubia/os/presssensor/PressSensorManager;->ensureService()V

    .line 54
    iget-object v0, p0, Lnubia/os/presssensor/PressSensorManager;->mService:Lnubia/os/presssensor/IPressSensorManager;

    if-nez v0, :cond_2

    .line 55
    const-string v0, "PressSensorManager"

    const-string v1, "register, but service does not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void

    .line 58
    :cond_2
    new-instance v0, Lnubia/os/presssensor/PressSensorManager$PressListenerWrapper;

    invoke-direct {v0, p1}, Lnubia/os/presssensor/PressSensorManager$PressListenerWrapper;-><init>(Lnubia/os/presssensor/PressSensorManager$PressListener;)V

    .line 59
    .local v0, "wrapper":Lnubia/os/presssensor/PressSensorManager$PressListenerWrapper;
    iget-object v1, p0, Lnubia/os/presssensor/PressSensorManager;->mPressListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :try_start_0
    iget-object v1, p0, Lnubia/os/presssensor/PressSensorManager;->mService:Lnubia/os/presssensor/IPressSensorManager;

    invoke-interface {v1, v0}, Lnubia/os/presssensor/IPressSensorManager;->registerPressListener(Lnubia/os/presssensor/IPressListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PressSensorManager"

    const-string v3, "registerPressListener error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public registerRankListener(Lnubia/os/presssensor/PressSensorManager$RankListener;)V
    .locals 4
    .param p1, "listener"    # Lnubia/os/presssensor/PressSensorManager$RankListener;

    .line 105
    if-nez p1, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lnubia/os/presssensor/PressSensorManager;->mRankListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    return-void

    .line 111
    :cond_1
    invoke-direct {p0}, Lnubia/os/presssensor/PressSensorManager;->ensureService()V

    .line 112
    iget-object v0, p0, Lnubia/os/presssensor/PressSensorManager;->mService:Lnubia/os/presssensor/IPressSensorManager;

    if-nez v0, :cond_2

    .line 113
    const-string v0, "PressSensorManager"

    const-string v1, "register rank, but service does not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 116
    :cond_2
    new-instance v0, Lnubia/os/presssensor/PressSensorManager$RankListenerWrapper;

    invoke-direct {v0, p1}, Lnubia/os/presssensor/PressSensorManager$RankListenerWrapper;-><init>(Lnubia/os/presssensor/PressSensorManager$RankListener;)V

    .line 117
    .local v0, "wrapper":Lnubia/os/presssensor/PressSensorManager$RankListenerWrapper;
    iget-object v1, p0, Lnubia/os/presssensor/PressSensorManager;->mRankListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :try_start_0
    iget-object v1, p0, Lnubia/os/presssensor/PressSensorManager;->mService:Lnubia/os/presssensor/IPressSensorManager;

    invoke-interface {v1, v0}, Lnubia/os/presssensor/IPressSensorManager;->registerRankListener(Lnubia/os/presssensor/IRankListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PressSensorManager"

    const-string v3, "registerRankListener error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setPressGestureCtrl(Lnubia/os/presssensor/IPressGestureCtrl;)V
    .locals 3
    .param p1, "controller"    # Lnubia/os/presssensor/IPressGestureCtrl;

    .line 88
    if-nez p1, :cond_0

    .line 89
    const-string v0, "PressSensorManager"

    const-string v1, "press gesture ui ctrl set is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 92
    :cond_0
    invoke-direct {p0}, Lnubia/os/presssensor/PressSensorManager;->ensureService()V

    .line 93
    iget-object v0, p0, Lnubia/os/presssensor/PressSensorManager;->mService:Lnubia/os/presssensor/IPressSensorManager;

    if-nez v0, :cond_1

    .line 94
    const-string v0, "PressSensorManager"

    const-string v1, "setPressGestureCtrl, but service does not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 98
    :cond_1
    :try_start_0
    iget-object v0, p0, Lnubia/os/presssensor/PressSensorManager;->mService:Lnubia/os/presssensor/IPressSensorManager;

    invoke-interface {v0, p1}, Lnubia/os/presssensor/IPressSensorManager;->setPressGestureCtrl(Lnubia/os/presssensor/IPressGestureCtrl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PressSensorManager"

    const-string v2, "setGestureUIController error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterPressListener(Lnubia/os/presssensor/PressSensorManager$PressListener;)V
    .locals 4
    .param p1, "listener"    # Lnubia/os/presssensor/PressSensorManager$PressListener;

    .line 68
    if-nez p1, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lnubia/os/presssensor/PressSensorManager;->mPressListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    return-void

    .line 74
    :cond_1
    invoke-direct {p0}, Lnubia/os/presssensor/PressSensorManager;->ensureService()V

    .line 75
    iget-object v0, p0, Lnubia/os/presssensor/PressSensorManager;->mService:Lnubia/os/presssensor/IPressSensorManager;

    if-nez v0, :cond_2

    .line 76
    const-string v0, "PressSensorManager"

    const-string v1, "unregister, but service does not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 79
    :cond_2
    iget-object v0, p0, Lnubia/os/presssensor/PressSensorManager;->mPressListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/presssensor/PressSensorManager$PressListenerWrapper;

    .line 81
    .local v0, "wrapper":Lnubia/os/presssensor/PressSensorManager$PressListenerWrapper;
    :try_start_0
    iget-object v1, p0, Lnubia/os/presssensor/PressSensorManager;->mService:Lnubia/os/presssensor/IPressSensorManager;

    invoke-interface {v1, v0}, Lnubia/os/presssensor/IPressSensorManager;->unregisterPressListener(Lnubia/os/presssensor/IPressListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PressSensorManager"

    const-string v3, "unregisterPressListener error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterRankListener(Lnubia/os/presssensor/PressSensorManager$RankListener;)V
    .locals 4
    .param p1, "listener"    # Lnubia/os/presssensor/PressSensorManager$RankListener;

    .line 126
    if-nez p1, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lnubia/os/presssensor/PressSensorManager;->mRankListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    return-void

    .line 132
    :cond_1
    invoke-direct {p0}, Lnubia/os/presssensor/PressSensorManager;->ensureService()V

    .line 133
    iget-object v0, p0, Lnubia/os/presssensor/PressSensorManager;->mService:Lnubia/os/presssensor/IPressSensorManager;

    if-nez v0, :cond_2

    .line 134
    const-string v0, "PressSensorManager"

    const-string v1, "unregister rank, but service does not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 137
    :cond_2
    iget-object v0, p0, Lnubia/os/presssensor/PressSensorManager;->mRankListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnubia/os/presssensor/PressSensorManager$RankListenerWrapper;

    .line 139
    .local v0, "wrapper":Lnubia/os/presssensor/PressSensorManager$RankListenerWrapper;
    :try_start_0
    iget-object v1, p0, Lnubia/os/presssensor/PressSensorManager;->mService:Lnubia/os/presssensor/IPressSensorManager;

    invoke-interface {v1, v0}, Lnubia/os/presssensor/IPressSensorManager;->unregisterRankListener(Lnubia/os/presssensor/IRankListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PressSensorManager"

    const-string v3, "unregisterRankListener error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
