.class public final Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;
.super Ljava/lang/Object;
.source "ApplicationDynamicController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;
    }
.end annotation


# static fields
.field private static final DELAY_TIME_FOR_UPDATE_STATE:J = 0x1f4L

.field private static LOG_DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "AppDynamicController"

.field private static final MSG_UPDATE_FUNCTION_STATE:I = 0x0

.field private static final sConfigurationFilePath:Ljava/lang/String; = "app_dynamic_controller.xml"


# instance fields
.field private mControllerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishInital:Z

.field private mFunctionsData:Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;

.field private mWorkHandler:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;

.field private mWorkThread:Landroid/os/HandlerThread;

.field private mXmlOperator:Lcn/nubia/server/appmgmt/functionswitch/AppControllerXmlOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-string v0, "AppDynamicController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->LOG_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mWorkThread:Landroid/os/HandlerThread;

    .line 30
    iput-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mWorkHandler:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;

    .line 31
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mFinishInital:Z

    .line 32
    iput-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mFunctionsData:Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;

    .line 33
    iput-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mXmlOperator:Lcn/nubia/server/appmgmt/functionswitch/AppControllerXmlOperator;

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mControllerMap:Landroid/util/ArrayMap;

    .line 37
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppDynamicController"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mWorkThread:Landroid/os/HandlerThread;

    .line 38
    iget-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance v0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;-><init>(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mWorkHandler:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;

    .line 40
    new-instance v0, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;

    invoke-direct {v0}, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mFunctionsData:Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;

    .line 41
    new-instance v0, Lcn/nubia/server/appmgmt/functionswitch/AppControllerXmlOperator;

    const-string v1, "app_dynamic_controller.xml"

    .line 42
    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationControllerUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/server/appmgmt/functionswitch/AppControllerXmlOperator;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mXmlOperator:Lcn/nubia/server/appmgmt/functionswitch/AppControllerXmlOperator;

    .line 44
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->initData()V

    .line 45
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;
    .param p1, "x1"    # Z

    .line 19
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mFinishInital:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    .line 19
    iget-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mControllerMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;
    .param p1, "x1"    # Landroid/util/ArrayMap;

    .line 19
    iput-object p1, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mControllerMap:Landroid/util/ArrayMap;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;)Lcn/nubia/server/appmgmt/functionswitch/AppControllerXmlOperator;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    .line 19
    iget-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mXmlOperator:Lcn/nubia/server/appmgmt/functionswitch/AppControllerXmlOperator;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;)Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;

    .line 19
    iget-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mFunctionsData:Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 19
    sget-boolean v0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->LOG_DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;
    .param p1, "x1"    # I

    .line 19
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->handleUpdateFunctionState(I)V

    return-void
.end method

.method private handleUpdateFunctionState(I)V
    .locals 10
    .param p1, "parameter"    # I

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "changed":Z
    iget-object v1, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mFunctionsData:Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;->getMasks()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 95
    .local v2, "tmp":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 96
    .local v3, "mask":I
    iget-object v4, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mFunctionsData:Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;

    invoke-virtual {v4, v3}, Lcn/nubia/server/appmgmt/functionswitch/data/FunctionControllerData;->getFunctionSwitchByMask(I)Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;

    move-result-object v4

    .line 97
    .local v4, "function":Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;
    invoke-interface {v4}, Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;->getFunctionState()Z

    move-result v5

    .line 99
    .local v5, "oldState":Z
    and-int v6, p1, v3

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 100
    sget-boolean v7, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->LOG_DEBUG:Z

    if-eqz v7, :cond_0

    .line 101
    const-string v7, "AppDynamicController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleUpdateFunctionState: function="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-interface {v4}, Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;->getFunctionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", enable=true"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 101
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    invoke-interface {v4, v6}, Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;->setFunctionState(Z)V

    .line 105
    iget-object v7, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mControllerMap:Landroid/util/ArrayMap;

    invoke-interface {v4}, Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;->getFunctionName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/4 v0, 0x1

    goto :goto_1

    .line 107
    :cond_1
    and-int v6, p1, v3

    if-nez v6, :cond_3

    if-eqz v5, :cond_3

    .line 108
    sget-boolean v6, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->LOG_DEBUG:Z

    if-eqz v6, :cond_2

    .line 109
    const-string v6, "AppDynamicController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleUpdateFunctionState: function="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-interface {v4}, Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;->getFunctionName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", enable=false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 109
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_2
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;->setFunctionState(Z)V

    .line 113
    iget-object v7, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mControllerMap:Landroid/util/ArrayMap;

    invoke-interface {v4}, Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;->getFunctionName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/4 v0, 0x1

    .line 116
    .end local v2    # "tmp":Ljava/lang/Integer;
    .end local v3    # "mask":I
    .end local v4    # "function":Lcn/nubia/server/appmgmt/functionswitch/switcher/FunctionSwitch;
    .end local v5    # "oldState":Z
    :cond_3
    :goto_1
    goto/16 :goto_0

    .line 118
    :cond_4
    if-eqz v0, :cond_5

    .line 119
    iget-object v1, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mXmlOperator:Lcn/nubia/server/appmgmt/functionswitch/AppControllerXmlOperator;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mControllerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/functionswitch/AppControllerXmlOperator;->writeDataToFile(Ljava/lang/Object;)V

    .line 121
    :cond_5
    return-void
.end method

.method private initData()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mWorkHandler:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;

    new-instance v1, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$1;-><init>(Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method


# virtual methods
.method public updateFunctionState(I)V
    .locals 4
    .param p1, "parameter"    # I

    .line 75
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mFinishInital:Z

    if-nez v0, :cond_0

    .line 76
    const-string v0, "AppDynamicController"

    const-string v1, "It can not update the function state, because it is not initalization."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 80
    :cond_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->LOG_DEBUG:Z

    if-eqz v0, :cond_1

    .line 81
    const-string v0, "AppDynamicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFunctionState: parameter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mWorkHandler:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;->removeMessages(I)V

    .line 86
    iget-object v0, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mWorkHandler:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;

    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 87
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 88
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 89
    iget-object v1, p0, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController;->mWorkHandler:Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/server/appmgmt/functionswitch/ApplicationDynamicController$WorkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 90
    return-void
.end method
