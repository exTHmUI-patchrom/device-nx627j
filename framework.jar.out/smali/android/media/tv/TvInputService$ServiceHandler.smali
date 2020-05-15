.class final Landroid/media/tv/TvInputService$ServiceHandler;
.super Landroid/os/Handler;
.source "TvInputService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field private static final DO_ADD_HARDWARE_INPUT:I = 0x4

.field private static final DO_ADD_HDMI_INPUT:I = 0x6

.field private static final DO_CREATE_RECORDING_SESSION:I = 0x3

.field private static final DO_CREATE_SESSION:I = 0x1

.field private static final DO_NOTIFY_SESSION_CREATED:I = 0x2

.field private static final DO_REMOVE_HARDWARE_INPUT:I = 0x5

.field private static final DO_REMOVE_HDMI_INPUT:I = 0x7


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputService;)V
    .locals 0

    .line 1957
    iput-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputService;Landroid/media/tv/TvInputService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/tv/TvInputService;
    .param p2, "x1"    # Landroid/media/tv/TvInputService$1;

    .line 1957
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$ServiceHandler;-><init>(Landroid/media/tv/TvInputService;)V

    return-void
.end method

.method private broadcastAddHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 1967
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1968
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1970
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v2}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v2, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1973
    goto :goto_1

    .line 1971
    :catch_0
    move-exception v2

    .line 1972
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputService"

    const-string v4, "error in broadcastAddHardwareInput"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1968
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1975
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1976
    return-void
.end method

.method private broadcastAddHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 1979
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1980
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1982
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v2}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v2, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1985
    goto :goto_1

    .line 1983
    :catch_0
    move-exception v2

    .line 1984
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputService"

    const-string v4, "error in broadcastAddHdmiInput"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1980
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1987
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1988
    return-void
.end method

.method private broadcastRemoveHardwareInput(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1991
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1992
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1994
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v2}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v2, p1}, Landroid/media/tv/ITvInputServiceCallback;->removeHardwareInput(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1997
    goto :goto_1

    .line 1995
    :catch_0
    move-exception v2

    .line 1996
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputService"

    const-string v4, "error in broadcastRemoveHardwareInput"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1992
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1999
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2000
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 2004
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2135
    const-string v0, "TvInputService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    return-void

    .line 2127
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 2128
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputService;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object v1

    .line 2129
    .local v1, "inputId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2130
    invoke-direct {p0, v1}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveHardwareInput(Ljava/lang/String;)V

    .line 2132
    :cond_0
    return-void

    .line 2119
    .end local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v1    # "inputId":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 2120
    .restart local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputService;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v1

    .line 2121
    .local v1, "inputInfo":Landroid/media/tv/TvInputInfo;
    if-eqz v1, :cond_1

    .line 2122
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v2

    invoke-direct {p0, v2, v1}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHdmiInput(ILandroid/media/tv/TvInputInfo;)V

    .line 2124
    :cond_1
    return-void

    .line 2111
    .end local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v1    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 2112
    .local v0, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputService;->onHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    move-result-object v1

    .line 2113
    .local v1, "inputId":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2114
    invoke-direct {p0, v1}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveHardwareInput(Ljava/lang/String;)V

    .line 2116
    :cond_2
    return-void

    .line 2103
    .end local v0    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v1    # "inputId":Ljava/lang/String;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 2104
    .restart local v0    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputService;->onHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v1

    .line 2105
    .local v1, "inputInfo":Landroid/media/tv/TvInputInfo;
    if-eqz v1, :cond_3

    .line 2106
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v2

    invoke-direct {p0, v2, v1}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHardwareInput(ILandroid/media/tv/TvInputInfo;)V

    .line 2108
    :cond_3
    return-void

    .line 2078
    .end local v0    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v1    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2079
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/media/tv/ITvInputSessionCallback;

    .line 2080
    .local v2, "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 2081
    .local v3, "inputId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2082
    iget-object v4, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v4, v3}, Landroid/media/tv/TvInputService;->onCreateRecordingSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$RecordingSession;

    move-result-object v4

    .line 2083
    .local v4, "recordingSessionImpl":Landroid/media/tv/TvInputService$RecordingSession;
    if-nez v4, :cond_4

    .line 2086
    :try_start_0
    invoke-interface {v2, v1, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2089
    goto :goto_0

    .line 2087
    :catch_0
    move-exception v1

    .line 2088
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "TvInputService"

    const-string v6, "error in onSessionCreated"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2090
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2092
    :cond_4
    new-instance v5, Landroid/media/tv/ITvInputSessionWrapper;

    iget-object v6, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {v5, v6, v4}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$RecordingSession;)V

    .line 2095
    .local v5, "stub":Landroid/media/tv/ITvInputSession;
    :try_start_1
    invoke-interface {v2, v5, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2098
    goto :goto_1

    .line 2096
    :catch_1
    move-exception v1

    .line 2097
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v6, "TvInputService"

    const-string v7, "error in onSessionCreated"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2099
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v4, v2}, Landroid/media/tv/TvInputService$RecordingSession;->access$2200(Landroid/media/tv/TvInputService$RecordingSession;Landroid/media/tv/ITvInputSessionCallback;)V

    .line 2100
    return-void

    .line 2061
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    .end local v3    # "inputId":Ljava/lang/String;
    .end local v4    # "recordingSessionImpl":Landroid/media/tv/TvInputService$RecordingSession;
    .end local v5    # "stub":Landroid/media/tv/ITvInputSession;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2062
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/media/tv/TvInputService$Session;

    .line 2063
    .local v1, "sessionImpl":Landroid/media/tv/TvInputService$Session;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/media/tv/ITvInputSession;

    .line 2064
    .local v2, "stub":Landroid/media/tv/ITvInputSession;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/media/tv/ITvInputSessionCallback;

    .line 2065
    .local v3, "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    .line 2067
    .local v4, "hardwareSessionToken":Landroid/os/IBinder;
    :try_start_2
    invoke-interface {v3, v2, v4}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2070
    goto :goto_2

    .line 2068
    :catch_2
    move-exception v5

    .line 2069
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "TvInputService"

    const-string v7, "error in onSessionCreated"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2071
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_2
    if-eqz v1, :cond_5

    .line 2072
    invoke-static {v1, v3}, Landroid/media/tv/TvInputService$Session;->access$2100(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/ITvInputSessionCallback;)V

    .line 2074
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2075
    return-void

    .line 2006
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "sessionImpl":Landroid/media/tv/TvInputService$Session;
    .end local v2    # "stub":Landroid/media/tv/ITvInputSession;
    .end local v3    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    .end local v4    # "hardwareSessionToken":Landroid/os/IBinder;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2007
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/InputChannel;

    .line 2008
    .local v2, "channel":Landroid/view/InputChannel;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/media/tv/ITvInputSessionCallback;

    .line 2009
    .restart local v3    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 2010
    .local v4, "inputId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2011
    iget-object v5, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v5, v4}, Landroid/media/tv/TvInputService;->onCreateSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;

    move-result-object v5

    .line 2012
    .local v5, "sessionImpl":Landroid/media/tv/TvInputService$Session;
    if-nez v5, :cond_6

    .line 2015
    :try_start_3
    invoke-interface {v3, v1, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2018
    goto :goto_3

    .line 2016
    :catch_3
    move-exception v1

    .line 2017
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "TvInputService"

    const-string v7, "error in onSessionCreated"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2019
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void

    .line 2021
    :cond_6
    new-instance v6, Landroid/media/tv/ITvInputSessionWrapper;

    iget-object v7, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {v6, v7, v5, v2}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$Session;Landroid/view/InputChannel;)V

    .line 2023
    .local v6, "stub":Landroid/media/tv/ITvInputSession;
    instance-of v7, v5, Landroid/media/tv/TvInputService$HardwareSession;

    if-eqz v7, :cond_a

    .line 2024
    move-object v7, v5

    check-cast v7, Landroid/media/tv/TvInputService$HardwareSession;

    .line 2026
    .local v7, "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    invoke-virtual {v7}, Landroid/media/tv/TvInputService$HardwareSession;->getHardwareInputId()Ljava/lang/String;

    move-result-object v8

    .line 2027
    .local v8, "hardwareInputId":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    .line 2028
    invoke-static {v9, v8}, Landroid/media/tv/TvInputService;->access$1900(Landroid/media/tv/TvInputService;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_4

    .line 2042
    :cond_7
    invoke-static {v7, v6}, Landroid/media/tv/TvInputService$HardwareSession;->access$1602(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    .line 2043
    invoke-static {v7, v3}, Landroid/media/tv/TvInputService$HardwareSession;->access$1702(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSessionCallback;)Landroid/media/tv/ITvInputSessionCallback;

    .line 2044
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->access$200(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/media/tv/TvInputService$HardwareSession;->access$1802(Landroid/media/tv/TvInputService$HardwareSession;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2045
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    const-string/jumbo v9, "tv_input"

    invoke-virtual {v1, v9}, Landroid/media/tv/TvInputService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager;

    .line 2047
    .local v1, "manager":Landroid/media/tv/TvInputManager;
    nop

    .line 2048
    invoke-static {v7}, Landroid/media/tv/TvInputService$HardwareSession;->access$2000(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v9

    iget-object v10, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v10}, Landroid/media/tv/TvInputService;->access$200(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v10

    .line 2047
    invoke-virtual {v1, v8, v9, v10}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 2049
    .end local v1    # "manager":Landroid/media/tv/TvInputManager;
    .end local v7    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    .end local v8    # "hardwareInputId":Ljava/lang/String;
    goto :goto_7

    .line 2029
    .restart local v7    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    .restart local v8    # "hardwareInputId":Ljava/lang/String;
    :cond_8
    :goto_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2030
    const-string v9, "TvInputService"

    const-string v10, "Hardware input id is not setup yet."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2032
    :cond_9
    const-string v9, "TvInputService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid hardware input id : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :goto_5
    invoke-virtual {v5}, Landroid/media/tv/TvInputService$Session;->onRelease()V

    .line 2036
    :try_start_4
    invoke-interface {v3, v1, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2039
    goto :goto_6

    .line 2037
    :catch_4
    move-exception v1

    .line 2038
    .local v1, "e":Landroid/os/RemoteException;
    const-string v9, "TvInputService"

    const-string v10, "error in onSessionCreated"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2040
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_6
    return-void

    .line 2050
    .end local v7    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    .end local v8    # "hardwareInputId":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v7

    .line 2051
    .local v7, "someArgs":Lcom/android/internal/os/SomeArgs;
    iput-object v5, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2052
    iput-object v6, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2053
    iput-object v3, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2054
    iput-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2055
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->access$200(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v8, 0x2

    invoke-virtual {v1, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2056
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2058
    .end local v7    # "someArgs":Lcom/android/internal/os/SomeArgs;
    :goto_7
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
