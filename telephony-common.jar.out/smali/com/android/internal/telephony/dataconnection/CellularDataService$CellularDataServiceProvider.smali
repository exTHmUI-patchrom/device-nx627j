.class Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;
.super Landroid/telephony/data/DataService$DataServiceProvider;
.source "CellularDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/CellularDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellularDataServiceProvider"
.end annotation


# instance fields
.field private final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/Message;",
            "Landroid/telephony/data/DataServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/CellularDataService;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/CellularDataService;I)V
    .locals 4
    .param p2, "slotId"    # I

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->this$0:Lcom/android/internal/telephony/dataconnection/CellularDataService;

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/telephony/data/DataService$DataServiceProvider;-><init>(Landroid/telephony/data/DataService;I)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->getSlotId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/android/internal/telephony/dataconnection/CellularDataService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mLooper:Landroid/os/Looper;

    .line 82
    new-instance v1, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider$1;-><init>(Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;Landroid/os/Looper;Lcom/android/internal/telephony/dataconnection/CellularDataService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    .line 133
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/CellularDataService;ILcom/android/internal/telephony/dataconnection/CellularDataService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/CellularDataService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/internal/telephony/dataconnection/CellularDataService$1;

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;-><init>(Lcom/android/internal/telephony/dataconnection/CellularDataService;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;
    .param p1, "x1"    # Ljava/util/List;

    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->getDataCallList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getDataCallList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation

    .line 137
    .local p1, "dcList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, "dcResponseList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    .line 139
    .local v2, "dcResult":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->this$0:Lcom/android/internal/telephony/dataconnection/CellularDataService;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/dataconnection/CellularDataService;->convertDataCallResult(Landroid/hardware/radio/V1_0/SetupDataCallResult;)Landroid/telephony/data/DataCallResponse;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v2    # "dcResult":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    goto :goto_0

    .line 141
    :cond_0
    return-object v0
.end method


# virtual methods
.method public deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 166
    const/4 v0, 0x0

    .line 169
    .local v0, "message":Landroid/os/Message;
    if-eqz p3, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    .line 175
    return-void
.end method

.method public getDataCallList(Landroid/telephony/data/DataServiceCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 213
    const/4 v0, 0x0

    .line 216
    .local v0, "message":Landroid/os/Message;
    if-eqz p1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 221
    return-void
.end method

.method public setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V
    .locals 3
    .param p2, "isRoaming"    # Z
    .param p3, "callback"    # Landroid/telephony/data/DataServiceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;Z",
            "Landroid/telephony/data/DataServiceCallback;",
            ")V"
        }
    .end annotation

    .line 198
    .local p1, "dps":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataProfile;>;"
    const/4 v0, 0x0

    .line 201
    .local v0, "message":Landroid/os/Message;
    if-eqz p3, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/telephony/data/DataProfile;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/data/DataProfile;

    invoke-interface {v1, v2, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setDataProfile([Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V

    .line 207
    return-void
.end method

.method public setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V
    .locals 3
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 182
    const/4 v0, 0x0

    .line 185
    .local v0, "message":Landroid/os/Message;
    if-eqz p3, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V

    .line 191
    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/DataServiceCallback;)V
    .locals 12
    .param p1, "radioTechnology"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "callback"    # Landroid/telephony/data/DataServiceCallback;

    move-object v0, p0

    .line 150
    move-object/from16 v1, p7

    const/4 v2, 0x0

    .line 153
    .local v2, "message":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 154
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 155
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_0
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/CellularDataService$CellularDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v5, p1

    move-object v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object v11, v2

    invoke-interface/range {v4 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V

    .line 160
    return-void
.end method
